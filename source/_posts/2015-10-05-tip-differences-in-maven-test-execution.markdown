---
layout: post
title: "Tip: Differences in maven test execution"
date: 2015-10-05 17:18:55 +0100
comments: true
categories: 
    - protip
    - tip
    - maven
    - test
    - skip-tests
    - maven-test-skip
---

There are times when you only want to have the production code:

  * downstream job after a successful build
  * compiling in local after checkout from DVCS
  * spiking (possibly the tests are broken)
  * speeding up the process

For that, maven allows to skip the tests, selectively:

  * ``-DskipTests`` compiles the tests, but skips running them
  * ``-Dmaven.test.skip`` skips compiling the tests and does not run them. This can also be written as ``-Dmaven.test.skip=true``

In case some of your tests depend on tests from another artifact (e.g. Object Mother, test infrastructure) and the latter has changed, you must compile the tests. You need to not execute the tests