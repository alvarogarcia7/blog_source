---
title: "Using a Native C Library in Android"
categories:
- android
- native-library
date: 2021-05-02T03:35:28Z
url: /blog/2021/05/02/native-c-library-android/
draft: true
---

For a client, we needed to integrate a pure C library into an android application.

The library is written in C (not C++), the application in Kotlin.

## My environment

I'm using:

  * Android Studio (latest version, 4.1.3)
  * NDK <!-- TODO Version -->
  * Mac OS Catalina, 10.15. Intel architecture.

### NDK-Buildw

This wrapper is a tool to isolate access to `ndk-build`.

It's the same pattern as `gradlew` / `gradlew.bat`: executes the command against the desired `ndk-build`, from the local directory.

I have seen the configuration of `ndk.dir` in file `local.properties` in [Install NDK and CMake](https://developer.android.com/studio/projects/install-ndk)

My `ndk-buildw` contains:

```bash
#!/bin/bash

set -euxo pipefail

/Users/user/Library/Android/sdk/ndk/22.1.7171670/ndk-build "$@"
```

### 

```bash
$ find . | grep "\\.a"
./main/c/jni/x86_64/dummy/libsodium.a
```

### Native Library Configuration

Configure `Android.mk`:

```
## From https://gist.github.com/Nimrodda/c9bdb9217dffe577af79
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := sodium
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libsodium.a
# The header files should be located in the following dir relative to jni/ dir
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../jni/include $(LOCAL_PATH)/../jni/include/tests
LOCAL_STATIC_LIBRARIES := sodium
LOCAL_MODULE := bridge
LOCAL_SRC_FILES := native-lib.c
include $(BUILD_SHARED_LIBRARY)
```

Place the includes:

```bash
$ find . | grep "\\.h"
./main/c/jni/include/sodium.h
./main/c/jni/include/sodium/core.h
# Continues ...
```

Declare an external function (same API as the native library):

```kotlin
external fun main_test(): Int
```

Load the `bridge` library:

```kotlin
companion object {
  init {
      System.loadLibrary("bridge")
```

Configure the build to use JNI libraries:

```groovy
android {
  ndkVersion "22.1.7171670" // Major.Minor.Patch
  sourceSets.main {
      jniLibs.srcDir 'src/main/c/libs' //set .so files location to libs instead of jniLibs
```

Configure the build to depend on the NDK build:

```groovy
android {
  task ndkBuild(type: Exec) {
    commandLine "./ndk-buildw", '-d', '-C', file('src/main/c').absolutePath
  }
```

## Useful links:

  * [https://developer.android.com/ndk/guides/prebuilts](https://developer.android.com/ndk/guides/prebuilts): Explains how to use prebuilt native libraries
  * [https://dawnarc.com/2016/10/android-ndk-link-static-library-to-your-jni-library/](https://dawnarc.com/2016/10/android-ndk-link-static-library-to-your-jni-library/): explains how to link a static library to your JNI library. I like this one because explains the folder structure.


## Whole folder structure

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

<!--

 Things to explain:

  * required format
  * required file layout
  * what's arch
  * how to speed up for development
    * how to run cmake in local
    * ndk-buildw
  * useful tools for debugging
  * FAQ: not found
  * Other helpful links
 -->