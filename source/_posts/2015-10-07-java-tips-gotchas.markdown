---
layout: post
title: "Java Tips & Gotchas"
date: 2015-10-07 11:06:58 +0100
comments: true
categories: 
  - tip
  - gotcha
  - java
  - character-encoding
  - utf8
  - java-tool-options
  - file-encoding
---

## JVM default encoding as UTF-8

Make the JVM use UTF-8 character encoding by default 

Set up the system property ``JAVA_TOOL_OPTIONS`` to ``-Dfile.encoding=UTF8``