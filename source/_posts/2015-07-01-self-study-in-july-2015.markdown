---
layout: post
title: "Self-study in July 2015"
date: 2015-07-01 01:08:10 +0200
comments: true
categories: 
  - self-study-aggregation
  - july
  - 2015
  - rich-hickey
  - clojure
  - java-one
  - pair-programming
  - carlos-ble
  - rest-api
  - jeff-knupp
  - python
  - kris-jenkins
  - backwards-compatibility
  - integration-testing
  - jeremy-miller
  - black-box-testing
  - white-box-testing
  - edson-yanaga
  - ddd
  - java-ee
  - video
  - rainsberger
  - integrated-test
  - integration-test
  - raul-rojas
  - lambda-calculus
  - paper
  - santiago-pino
  - tdd-mistake
  - tdd
  - martin-fowler
  - coupling
  - design
  - mock
  - mock-framework
  - reading
  - self-study
  - meagan-waller
  - apprenticeship
  - 8th-light
  - pete-mcbreen
  - christopher-strachey
  - programming-language
  - theory
  - 1967
  - course
  - fundamental-concepts
  - reification
  - type-erasure
  - angelika-langer
  - bjorn-tipling
  - intellij-idea
  - plugin
  - misko-hevery
  - testability
  - testable-code
  - clean-code
  - mentor
  - role-model
  - joanne-wilson
  - type-theory
---

I've grouped all small posts related to the self-study from July 2015 into a single post

## Clojure made simple

I've watched [this talk][clojure-made-simple] by Rich Hickey at the Java One. It references the talk [Easy made simple](http://www.infoq.com/presentations/Simple-Made-Easy)

  * polymorphism without inheritance; single dispatch on the first parameter

[clojure-made-simple]: https://www.youtube.com/watch?v=VSdnJDO-xdg

## Productive pair programming

I've read [this article][productive-pair-programming] about pair programming, using the driver & copilot technique, written by Carlos Blé

[productive-pair-programming]: http://www.carlosble.com/2015/07/productive-pair-programming/

## Building Automated REST APIs with Python

Investigating QA automation for REST APIs, I've read [these slides][automated-rest-apis-with-python] about it

[automated-rest-apis-with-python]: http://www.slideshare.net/jeffknupp/building-automated-rest-apis-with-python

## Backwards Compatibility Testing For Your Clojure Project

I've read [this article][backwards-compatibility-testing-your-clojure-project] on making leiningen test the application on several clojure versions. Written by Kris Jenkins.

[backwards-compatibility-testing-your-clojure-project]: http://blog.jenkster.com/2014/02/backwards-compatibility-testing-your-clojure-project.html

## Succeeding with Automated Integration Tests

I've read [this article][succeeding_with_integration_testing] by Jeremy Miller on integration testing and how to succeed with it. Some notes:

  * Choose the Quickest, Useful Feedback Mechanism, even if that means testing the backend and frontend separately
  * Prefer white-box than black-box testing
  * Use quick tests, that can be run locally in an easy fashion
  * Do not share databases, as they introduce risks of flaky tests

[succeeding_with_integration_testing]: http://jeremydmiller.com/2015/06/25/succeeding_with_integration_testing/

## Applied DDD in a Java EE 7 and Open Source World

I've watched [this video][aplied-ddd-in-java-ee-7] by Edson Yanaga in the Java One, about DDD using Java EE 7, JSFs and lambdas on top of glassfish

[aplied-ddd-in-java-ee-7]: https://www.youtube.com/watch?v=9D_-7E7Mrzw


## Integrated tests are a scam

I've read, again, [this article][integrated-tests-are-a-scam] by J. B. Rainsberger on integrated tests and why not to use them. From a numerical / combinatorics point of view.

[integrated-tests-are-a-scam]: http://blog.thecodewhisperer.com/2010/10/16/integrated-tests-are-a-scam/

## Functional Programming should be your #1 priority for 2015

I've read [this introduction][functional-programming-should-be-your-1-priority] to functional programming by Ju Gonçalves. Explains some functional concepts, such as:

  * First-Class Functions
  * High-Order Functions
  * Pure Functions
  * Closures
  * Immutable State

Also recommends a few books on the subject (e.g., SICP, HTDP).

[functional-programming-should-be-your-1-priority]: https://medium.com/@jugoncalves/functional-programming-should-be-your-1-priority-for-2015-47dd4641d6b9

## A Tutorial Introduction to the Lambda Calculus

I've read [this paper][introduction-lambda-calculus], an introduction to the lambda calculus. Haven't done the exercises. Written by Raúl Rojas

[introduction-lambda-calculus]: http://www.inf.fu-berlin.de/lehre/WS03/alpi/lambda.pdf

## 20 common mistakes when doing Test-Driven Development

I had thought of converting all of [his tweets][svpino-tweets-tdd-mistakes] into a blog post, but he has already done this for us: I've read a [list of common mistakes][20-mistakes-tdd] when doing TDD by [Santiago Pino][svpino]

[20-mistakes-tdd]: https://blog.svpino.com/2015/05/29/20-common-mistakes-when-doing-test-driven-development
[svpino-tweets-tdd-mistakes]: https://twitter.com/search?q=svpino%20%23tdd%20mistake&src=typd
[svpino]: https://twitter.com/svpino

## Reducing coupling

I've read the article by Martin Fowler [Reducing Coupling][reducing-coupling] in the IEEE SOFTWARE July/August 2001

[reducing-coupling]: http://martinfowler.com/ieeeSoftware/coupling.pdf

## Comparing Java Mock Frameworks – Part 2: Creating Mock Objects

[List of mock frameworks for java][comparing-java-mock-frameworks]. Have only read the jMock, mockito and jMockit part.

[comparing-java-mock-frameworks]: https://softwareinabottle.wordpress.com/2010/10/06/comparing-java-mock-frameworks-part-2-creating-mock-objects/

## Software Craftsmanship book review

I've read [this review][software-craftsmanship-book-review] for a book that is already pending in my book list: Software Craftsmanship by Pete McBreen.

The review has been written by Megan Waller, an (ex-)apprentice at 8th Light.

[software-craftsmanship-book-review]: http://meaganwaller.com/software-craftsmanship-book-review/

## Fundamental concepts in programming languages

I've read [this paper](http://www.cs.cmu.edu/~crary/819-f09/Strachey67.pdf) containing the contents for lectures in Computer Programming in the year 1967. Written by Christopher Strachey.

Note: I've also seen this paper recommended in the repo [Papers We Love > plt](https://github.com/papers-we-love/papers-we-love/tree/master/plt) (Programming Language Theory) 

## What is reification?

I've read [this FAQ][faq-reification] on reification by Angelika Langer

[faq-reification]: http://www.angelikalanger.com/GenericsFAQ/FAQSections/TechnicalDetails.html#FAQ101A

## Type erasure

I've read this wikipedia [page on type erasure][wiki-page-type-erasure]

[wiki-page-type-erasure]: https://en.wikipedia.org/wiki/Type_erasure

## How to make an IntelliJ IDEA plugin in less than 30 minutes

I've read [this article][intellij-idea-plugin] on creating new IntelliJ IDEA plugin, by Bjorn Tipling

[intellij-idea-plugin]: http://bjorn.tipling.com/how-to-make-an-intellij-idea-plugin-in-30-minutes

## How to Write Clean, Testable Code

I've watched, again, [this video][how-to-write-clean-testable-code] by Miško Hevery. Discusses what are the characteristics of tested and untested code, how to get from one to the other. Discusses techniques for testing code. At the end, there are questions but they cannot be heard (lack of microphone), so it is harder to follow.

[how-to-write-clean-testable-code]: https://www.youtube.com/watch?v=XcT4yYu_TTs

## How to Find a Mentor

I've read [this opinion][how-to-find-a-mentor] on the importance of role models and mentors. The difference between them and a personal experience. Written by Joanne Wilson

[how-to-find-a-mentor]: https://medium.com/letters-to-my-mother/how-to-find-a-mentor-27fb978a8f1 

## Type theory

I've read this wiki page on [type theory][wiki-type-theory]

Some notes:

  * "type systems [...] language feature used to reduce bugs"
  * two types: Church's typed λ-calculi and Martin-Löf's intuitionistic type theory.
  * notation:
    * typing judgement: ``M : A``. Term ``M`` has type ``A``
    * example: ``nat`` may be a type
    * ``2 : nat``, like in Scala
    * function: "arrow"
    * apply function to argument: no parenthesis
  * conversion rule: rule for rewriting terms
    * reduction rule: conversion rule that only works in one direction
  * normal form: a form that cannot be further reduced
  * element: all closed elements that can be reduced to the same normal form
  * closed term: a term without parameters. Opposite is an open term
  * convertibility: property of terms, both open and closed. Said to be convertible if two terms can be reduced to the same term 
    * warning: x + 1 and 1 + x are not convertible because they are in normal form and not the same

[wiki-type-theory]: https://en.wikipedia.org/wiki/Type_theory




