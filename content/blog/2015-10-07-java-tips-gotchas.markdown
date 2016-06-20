---
categories:
- tip
- gotcha
- java
- character-encoding
- utf8
- java-tool-options
- file-encoding
comments: true
date: 2015-10-07T11:06:58Z
title: Java Tips & Gotchas
url: /blog/2015/10/07/java-tips-gotchas/
---

## JVM default encoding as UTF-8

Make the JVM use UTF-8 character encoding by default 

Set up the system property ``JAVA_TOOL_OPTIONS`` to ``-Dfile.encoding=UTF8``