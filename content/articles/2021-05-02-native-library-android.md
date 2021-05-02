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