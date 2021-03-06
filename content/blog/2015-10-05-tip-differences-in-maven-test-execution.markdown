---
categories:
- protip
- tip
- maven
- test
- skip-tests
- maven-test-skip
comments: true
date: 2015-10-05T17:18:55Z
title: 'Tip: Differences in maven test execution'
url: /blog/2015/10/05/tip-differences-in-maven-test-execution/
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

For more information:

 * [this stackoverflow](http://stackoverflow.com/questions/25639336/whats-the-difference-between-dskiptests-and-dmaven-test-skip-true) post is useful
 * [Documentation for skipping tests](http://maven.apache.org/surefire/maven-surefire-plugin/examples/skipping-test.html)

 