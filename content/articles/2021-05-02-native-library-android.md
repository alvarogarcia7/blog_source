---
title: "Using a Native C Library in Android"
categories:
- android
- native-library
- android.mk
- kotlin
- gradle
- c
- cpp
- abi
- jni
date: 2021-05-02T03:35:28Z
url: /blog/2021/05/02/native-c-library-android/
draft: true
---

For a client, we needed to integrate a pure C library into an android application.

The library is written in C (not C++), the application in Kotlin.


## Context

We have created an Android application, that is using a native C library. This library provides an upgrade in performance over using a JVM library.

For this particular example, we're showcasing how to integrate `libsodium`, but this can be expanded to any other library.

### My environment

I'm using:

  * Android Studio (latest version, 4.1.3)
  * NDK 22.1.7171670
  * Mac OS Catalina, 10.15. Intel architecture.
  * Gradle 6.5
  * OpenJDK version "11.0.2"

### Integration of a library

Android's developers (Google) have built a tool called NDK (Native Development Kit) to integrate C/C++ code in your application. To build code with NDK, there are three ways: ndk-build, cmake, standalone toolchains[^3]. This post only covers ndk-build[^1].

ndk-build is a set of scripts for invoking Make[^2].

Android imports libraries via the `System.loadLibrary` function[^SystemLoadLibrary]. We have found it easier to import a dynamic library.

[^SystemLoadLibrary]: https://docs.oracle.com/javase/8/docs/api/java/lang/System.html#loadLibrary-java.lang.String-

[^1]: The other tools are not covered in this blog post. See [https://developer.android.com/ndk/guides/other_build_systems](https://developer.android.com/ndk/guides/other_build_systems) for more information.
[^2]: https://developer.android.com/ndk/guides/ndk-build
[^3]: https://developer.android.com/ndk/guides/build

After importing the library, we need to yield the control to the native code. This is done through the Java Native Interface (JNI). A guide on JNI can be found on [https://www.baeldung.com/jni](https://www.baeldung.com/jni)

### Packaging the library

Configure the build to use JNI libraries:

```groovy
android {
  ndkVersion "22.1.7171670" // Major.Minor.Patch
  sourceSets.main {
      jniLibs.srcDir 'src/main/c/libs' //set .so files location to libs instead of jniLibs
```

Configure the build to depend on the NDK build. This will make the build depend on this `ndkBuild` task:

```groovy
android {
  task ndkBuild(type: Exec) {
    commandLine "./ndk-buildw", '-d', '-C', file('src/main/c').absolutePath
  }
```

Note: for more information on ndk-build, see [FAQ: ndk-buildw](#faq-ndk-buildw)

Configure `Android.mk`:

```
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := sodium
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libsodium.a
# The header files should be located in the following dir relative to jni/ dir
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../jni/include
LOCAL_STATIC_LIBRARIES := sodium
LOCAL_MODULE := bridge
LOCAL_SRC_FILES := native-lib.c
include $(BUILD_SHARED_LIBRARY)
```

Then build (`./gradlew build`). To diagnose the failures, see [FAQ: debugging ndk-build](#faq-debugging-ndk-build)

To speed up the process, compile for one architecture only. See [FAQ: One architecture only](#faq-one-architecture-only)

### Placing the native resources

Placing the native resources at the right place is extremely important. 

We have managed to make it run, then make it better (similar to [Make it work, make it right, make it fast](https://wiki.c2.com/?MakeItWorkMakeItRightMakeItFast)).

We have placed the resources in:
  * main: where the code lives
  * c: for the C language
  * jni: Java Native Interface
  * x86_64: android uses different architectures depending on the actual target. `x86_64` is for an emulator. You also have `armv8`, `armv7`, `mips`, etc. If you wanted to have more architectures, place `arm64-v8a` as a sibling to `x86_64` (`./main/c/jni/arm64-v8a/`)

```bash
$ find . | grep "\\.a"
./main/c/jni/x86_64/libsodium.a
```

Place the includes / headers:

```bash
$ find . | grep "\\.h"
./main/c/jni/include/sodium.h
./main/c/jni/include/sodium/core.h
# Continues ...
```

For more information, see [FAQ: Whole folder structure](#faq-whole-folder-structure).

After placing the resources, we can continue by creating glue code in the form of a bridge.


### Java Native Interface (JNI)

To bridge from Kotlin to C, declare an external function (same API as the native library):

```kotlin
// file: ./project/app/src/main/java/com/example/nativelib/MainActivity.kt
external fun main_test(): Int
```

then implement it in C:

```c
// file: ./project/app/src/main/c/jni/native-lib.c
JNIEXPORT int JNICALL
Java_com_example_nativelib_MainActivity_main_test(
  JNIEnv* env,
  jobject /* this */) {
```

Load the `bridge` library:

```kotlin
companion object {
  init {
      System.loadLibrary("bridge")
```

In Logcat, you can see an exception if the library is not found correctly.

After fixing all errors, you should be able to bridge from Kotlin to C.

## Frequently Asked Questions (FAQ)

### Debugging ndk-build {id="faq-debugging-ndk-build"}

When the build fails, the error is similar to:

```
build failed with error 2.
```

For this, we use a `make` goal to give me more verbose information:

```make
ndk-build:
  ./app/ndk-buildw --debug -C ${PWD}/app/src/main/c
.PHONY: ndk-build
```

As soon as this finishes successfully, you can run the gradle build again.

That also helps speeding up the compilation: no need to recompile anything related to Android, as the issue is in packaging native code.


### ndk-buildw {id="faq-ndk-buildw"}

This is a wrapper we have created on top of `ndk-build`. This wrapper is a tool to isolate access to `ndk-build`. Hence, all changes related to the actual path of `ndk-build` are isolated into a single file.

It's the same pattern as `gradlew` / `gradlew.bat`: executes the command against the desired `ndk-build`, from the local directory.

I have seen the configuration of `ndk.dir` in file `local.properties` in [Install NDK and CMake](https://developer.android.com/studio/projects/install-ndk)

My `ndk-buildw` contains:

```bash
#!/bin/bash

set -euxo pipefail

/Users/user/Library/Android/sdk/ndk/22.1.7171670/ndk-build "$@"
```

### One architecture only {id="faq-one-architecture-only"}

You can programmatically choose which architectures you want to process.

For this, ndk-build offers a variable called `APP_ABI`.

```
# file: ./project/app/src/main/c/jni/Android.mk
APP_ABI := x86_64 # arm64-v8a
```

This includes `x86_64` as architecture, ignoring `arm64-v8a`. If later, you want to execute on a physical device, enable it again.

### Whole folder structure {id="faq-whole-folder-structure"}

```
GIT_REPO
`-- project
    |-- Makefile
    |-- app
    |   |-- build.gradle
    |   |-- ndk-buildw
    |   `-- src
    |       |-- main
    |       |   |-- AndroidManifest.xml
    |       |   |-- c
    |       |   |   |-- jni
    |       |   |   |   |-- Android.mk
    |       |   |   |   |-- Application.mk
    |       |   |   |   `-- include
    |       |   |   |       |-- sodium
    |       |   |   |       |   |-- core.h
    |       |   |   |       |   |-- crypto_aead_aes256gcm.h
    |       |   |   |       |   |-- # More...
    |       |   |   |       |   `-- version.h
    |       |   |   |       `-- sodium.h
    |       |   |   |   |-- native-lib.c
    |       |   |   |   `-- x86_64
    |       |   |   |       `-- libsodium.a
    |       |   |-- java
    |       |   |   `-- com
    |       |   |       `-- example
    |       |   |           `-- nativelib
    |       |   |               `-- MainActivity.kt
    |       |   `-- res
    |-- build.gradle
    `-- local.properties
```

### Cannot find the function

After following plenty of guides, we still were not able to execute correctly.

We were importing the library, configuring the bridge, but it was being compiled with `clang++` instead of `clang` (C++ compiler instead of C compiler). Hence, the linker could not find the appropriate resources.

To diagnose, use `nm`[^man-nm] or `objtool`.

[^man-nm]: https://sourceware.org/binutils/docs/binutils/nm.html

We had a small issue: the underlying library was built in C, the bridge code was in C++.


## Useful links

  * [https://developer.android.com/ndk/guides/prebuilts](https://developer.android.com/ndk/guides/prebuilts): Explains how to use prebuilt native libraries
  * [https://dawnarc.com/2016/10/android-ndk-link-static-library-to-your-jni-library/](https://dawnarc.com/2016/10/android-ndk-link-static-library-to-your-jni-library/): explains how to link a static library to your JNI library. I like this one because explains the folder structure.
  * [https://gist.github.com/Nimrodda/c9bdb9217dffe577af79](https://gist.github.com/Nimrodda/c9bdb9217dffe577af79): Nimrodda has created a gist for integrating a library.
  * Create a clean project from Android Studio, add native code. Follow this guide: [https://developer.android.com/studio/projects/add-native-code][https://developer.android.com/studio/projects/add-native-code]
