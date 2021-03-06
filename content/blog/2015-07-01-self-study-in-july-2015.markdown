---
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
- integration-test
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
- hashcode
- java
- ralf-sternbergd
- variant
- eric-normand
- fred-zemke
- sql-2011
- sql
- tracking-tools
- takipi
- sentry
- airbrake
- raygun
- stackhunter
- alex-zhitnitsky
- bliki
- p-vs-np
- theoretical-computation
- elvira-mayordomo
- dripstat
- java-9
- unsafe
- backwards-compatibility
- rob-austin
- np-complete
- lucia-moura
- yitz-schaffer
- tpp
- transformation-priority-premise
- kata
- linked-list
- big-o-notation
- data-structure
- benchmark
- attila-mihaly-balazs
- shortcut
- oleg-shelajev
- summer-training
- paymill
- xavi-hidalgo
- outsourcing
- vasco-duarte
- dominic-krimmer
- agile
- podcast
- oliver-white
- language
- comparison
- ben-nadel
- book-review
- robert-c-martin
- craftsmanship
- monogamy
- analogy
- localstorage
- angularjs
- zero-knowledge
- clipperz
- danijel-arsenovski
- c-sharp
- java-agent
- tom-leighton
- mit
- ocw
- open-courseware
- julie-zelensky
- stanford
- dmitri-tikhanski
- jmeter
- headless-test
- headless
- clojure-unraveled
- andrey-antukh
- alejandro-gomez
- radhika-ghosal
- algosaurus
- bozhidar-bozhanov
- mark-hibberd
- stream
- incremental-stream
- slides
- mike-caulfield
- federation
- federated-wiki
- andrew-montalenti
- parsely
- apache-kafka
- kafka
- post-mortem-analysis
- algorithmic-complexity
- big-oh-notation
- recursion
- clojurescript
- manuel-rivero
- property-based-testing
- quickcheck
- test-check
- manuel-chakravarty
- wip
- tomas-rybing
- mike-cavaliere
- cory-berg
- skill
- rockstar
- michael-bernstein
- protocol-buffer
- protobuffer
- json
- josh-szmajda
- tomasz-nurkiewicz
- eric-meyer
- considered-harmful
- venkat-subramaniam
- lambda
- cohesion
- carin-meier
- justin-weiss
- peter-provost
- koan
- michael-church
comments: true
date: 2015-07-01T01:08:10Z
title: Self-study in July 2015
url: /blog/2015/07/01/self-study-in-july-2015/
aliases: 
- blog/2015/06/30/self-study-in-july-2015
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

## Type system

I've read this wiki page on [type system][wiki-type-system]

Some notes:

  * "The depth of type constraints and the manner of their evaluation affect the typing of the language"
  * Type polymorphism
  * {compile time, runtime} x {manually annotated, inferred}
  * "A program associates each value with at least one particular type, but it also can occur that one value is associated with many subtypes."
  * Classification of types:
    * data type – a type of a value
    * class – a type of an object
    * kind – a type of a type, or metatype
  * the type inference might be undecidable (for more complex type inference)
  * "Strong typing offers more safety, but cannot guarantee complete type safety." An example is the division by zero, altough some languages may declare a dependent type "non-zero numbers"

[wiki-type-system]: https://en.wikipedia.org/wiki/Type_system

## The 3 things you should know about hashCode()

I've read [this article][things-know-hashcode] on the hashCode() method in java, written by Ralf Sternberg.

[things-know-hashcode]: http://eclipsesource.com/blogs/2012/09/04/the-3-things-you-should-know-about-hashcode/

## Reduce Complexity with Variants

I've read [this article][reduce-complexity-with-variants] on variants in clojure by Eric Normand

[reduce-complexity-with-variants]: http://www.lispcast.com/reduce-complexity-with-variants

## What is new in SQL:2011

I've read [this white paper][sql-2011] on the new features in SQL 2011. Written by Fred Zemke

[sql-2011]: http://www.sigmod.org/publications/sigmod-record/1203/pdfs/10.industry.zemke.pdf

## 5 Error Tracking Tools Java Developers Should Know

I've read [this article][5-error-tracking-tools] about tracking tools for java written by Alex Zhitnitsky, featuring:

  * Raygun
  * Sentry
  * Takipi
  * Airbrake
  * StackHunter
  * [Bonus] ABRT
  * Comments cite [Squash](http://squash.io) (server written in ruby, java client available) and [Rollbar](http://rollbar.com) (home says supports android but not says anything about java)

[5-error-tracking-tools]: http://www.javacodegeeks.com/2014/09/5-error-tracking-tools-java-developers-should-know.html

## Data clump

I've read [this article][bliki-data-clump] on the bliki, by Martin Fowler

[bliki-data-clump]: http://martinfowler.com/bliki/DataClump.html

## NP-Complete problems

I've read [these slides][slides-np-completos] by Prof. Elvira Mayordomo about NP-Complete problems, how to reduce them to other problems and practical applications. (In Spanish)

[slides-np-completos]: http://webdiis.unizar.es/asignaturas/TC/wp/wp-content/uploads/2012/01/L15_NPcompletos.pdf

## Removal of sun.misc.Unsafe in Java 9 - A disaster in the making

I've read [this article][unsafe-a-disaster] about the removal of this Unsafe class in Java 9, by the DripStat team

[unsafe-a-disaster]: http://blog.dripstat.com/removal-of-sun-misc-unsafe-a-disaster-in-the-making/

##  How To Write Directly to a Memory Locations In Java

I've read [this guide][direct-memory-locations-in-java] on how to write directly to a memory position in java, by Rob Austin

[direct-memory-locations-in-java]: http://robaustin.wikidot.com/how-to-write-to-direct-memory-locations-in-java

## Interesting uses of sun.misc.Unsafe

I've read [this article][interesting-uses-of-sunmiscunsafe] by Haris A.L.

[interesting-uses-of-sunmiscunsafe]: http://bytescrolls.blogspot.com.es/2011/04/interesting-uses-of-sunmiscunsafe.html

## Introduction to the theory of np-completeness

I've read [these notes / slides][introduction-to-np] to the introductory course of NP-completeness, by Prof Lucia Moura

[introduction-to-np]: https://www.site.uottawa.ca/~lucia/courses/4105-02/np.pdf

## JS Code Kata: Linked List

I've read [these slides][slides-linked-list] on the kata linked list, by Yitz Schaffer. The slide #13 talks about the transformations:

  * refactor: change form without changing behavior
  * transform: change behavior while changing form as little as possible

Also about the Transformation Priority Premise (TPP) (also in this month)

[slides-linked-list]: https://speakerdeck.com/yitznewton/js-code-kata-linked-list

## The Transformation Priority Premise

I've read, again, [this article][TheTransformationPriorityPremise] by Uncle Bob (Robert C. Martin) 

[TheTransformationPriorityPremise]: https://blog.8thlight.com/uncle-bob/2013/05/27/TheTransformationPriorityPremise.html

## Data structures

I've read the wiki page for 
 
  * [SPQR tree](https://en.wikipedia.org/wiki/SPQR_tree)
  * [BSR tree](https://en.wikipedia.org/wiki/Binary_search_tree)
  * [Red black tree](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree)
  * [Judy array](https://en.wikipedia.org/wiki/Judy_array)
  
Also, The [Big-O notation complexity cheatsheet](http://bigocheatsheet.com/)

## On benchmarks: Numbers every programmer should know and their impact on benchmarks

I've read [this post][on-benchmarks] on doing back-of-the-envelope calculations on publicly available benchmarks, written by Attila-Mihaly Balazs

[on-benchmarks]: http://hype-free.blogspot.com/2014/03/on-benchmarks.html

## Top Java IDE Keyboard Shortcuts for Eclipse, IntelliJ IDEA & NetBeans

I've read [these slides][ide-keyboard-shortcuts] on the topic of keyboard shortcuts for java IDEs, written by Oleg Šelajev

[ide-keyboard-shortcuts]: http://zeroturnaround.com/rebellabs/top-java-ide-keyboard-shortcuts-for-eclipse-intellij-idea-netbeans/

## The hacker’s summer training guide – part 1

I've read [this post][hackers-training-guide-1] by Paymill, that suggests which new languages to learn this summer: rust, go, elixir, ocaml, scala, livescript.

[hackers-training-guide-1]: https://blog.paymill.com/hackers-training-guide-1

## Applications built extremely right

I've read [this post][build-with-outsourcing] with a list of candidates for building nice products, written by Xavi Hidalgo.

[build-with-outsourcing]: http://apiumtech.com/blog/applications-build-with-outsourcing/

## Agile project seed. Infrastructure by default.

I've read [this post][agile-infraestructura-por-defecto] on an agile seed project. Reminded me of the 12-factor app

[agile-infraestructura-por-defecto]: http://apiumtech.com/blog/seed-de-proyecto-agile-infraestructura-por-defecto/

## What an agile developer should know

I've read [this post][desarrollador-agile-deberia-saber] by Xavi Hidalgo

[desarrollador-agile-deberia-saber]: http://www.apiumtech.com/blog/lo-que-un-desarrollador-agile-deberia-saber/

## Bad Apples that can destroy a team

I've listened to [this podcast][bad-apples-podcast] about the bad apples in a team. Presented by Vasco Duarte and Dominic Krimmer as the main speaker

[bad-apples-podcast]: http://www.scrum-master-toolbox.com/2015/03/podcast/dominic-krimmer-describes-the-types-of-bad-apples-that-can-destroy-a-team/

## How Scala compares with 20 other programming languages according to Reddit analysis

I've read [this analysis][programming-languages-reddit-analysis] of the language comparison, written by Oliver White

[programming-languages-reddit-analysis]: https://www.typesafe.com/blog/how-scala-compares-20-programming-languages-reddit-analysis

## Javascript patterns book review

I've read [this review][javascript-patterns-review] by Ben Nadel on the book Javascript Patterns, by Stoyan Stefanov

[javascript-patterns-review]: http://www.bennadel.com/blog/2047-javascript-patterns-by-stoyan-stefanov.htm

## Monogamous TDD

I've read [this article][MonogamousTDD] on the fundamentalism of TDD, written by Robert C Martin

[MonogamousTDD]: https://blog.8thlight.com/uncle-bob/2014/04/25/MonogamousTDD.html

## Encapsulating LocalStorage Access In AngularJS

I've read [this article][encapsulating-localstorage-access] on why encapsulate the access to the localStorage, written by Ben Nadel

[encapsulating-localstorage-access]: http://www.bennadel.com/blog/2861-encapsulating-localstorage-access-in-angularjs.htm

## Anatomy of a zero-knowledge web application

I've read [this article][anatomy_zero_knowledge_web_application] on a zero-knowledge web application, by the clipperz team

[anatomy_zero_knowledge_web_application]: https://clipperz.is/blog/2007/08/24/anatomy_zero_knowledge_web_application/

## Refactorización de Código Legado Clase Maestra

I've watched [this video][master-class-refactoring-legacy-code] about refactoring a legacy code in C#, by Danijel Arsenovski

[master-class-refactoring-legacy-code]: https://www.youtube.com/watch?v=VBgCKKevhyI

## Taming Javaagents 

I've read [these slides][slides-java-agents], again, from a conference I went to a few months ago about java agents. Written by Oleg Šelajev.

[This][javaagent-repo-memory-leak] is the repository containing the memory leak agent he talks about

[slides-java-agents]: https://speakerdeck.com/shelajev/taming-javaagents-bcn-jug-2015
[javaagent-repo-memory-leak]: https://github.com/shelajev/ResourceLeakAgent

## Mathematics for Computer Science, Lecture 1

I've watched by [the first recitation][maths-for-comp-sci-1] in [this course][maths-for-comp-sci-course], offered by MIT Open Course Ware (OCW). Recited by Tom Leighton

[maths-for-comp-sci-1]: http://xoax.net/comp_sci/crs/math_for_comp_science_mit/lessons/Lecture1/
[maths-for-comp-sci-course]: http://xoax.net/comp_sci/crs/math_for_comp_science_mit/index.php

## Programming Abstractions: Lecture 7

I've watched [this lecture][programming_abstractions_stanford-7] by Julie Zelensky about the comparison operator, recursion and a live coding session calculating the most ocurring anagram word in a file.

She uses small outputs to check the correctness of her programs to get short feedback cycles, even if they are manual.

[programming_abstractions_stanford-7]: http://xoax.net/comp_sci/crs/programming_abstractions_stanford/lessons/Lecture7/

## 5 Ways To Launch a JMeter Test without Using the JMeter GUI

I've read [this guide][test-without-using-jmeter-gui] on using jmeter without a GUI, by Dmitri Tikhanski

[test-without-using-jmeter-gui]: https://blazemeter.com/blog/5-ways-launch-jmeter-test-without-using-jmeter-gui

## Clojure unraveled, chapter 5

I've read the [fifth chapter][clojure-unraveled-5], on the topics of Transducers, Transients, Metadata, Macros, Core protocols. Written by Andrey Antukh and Alejandro Gómez

[clojure-unraveled-5]: http://funcool.github.io/clojurescript-unraveled/#language-advanced-topics

## A guide to the Basics of Data Structures

I've read [this guide][data-structures-basics] to data structures, covering the stack, the queue, the heap, the tree and the hashmap. Written by Radhika Ghosal

[data-structures-basics]: http://algosaur.us/data-structures-basics/

## Government Abandonware

I've read [this post][government-abandonware] on abandoned, public software that is not opensource. Dubbed by the author as "Government Abandonware". Written by Bozhidar Bozhanov

[government-abandonware]: http://techblog.bozho.net/government-abandonware/

## The Art of Incremental Stream Processing

I've read [these slides][incremental-stream-processing] on incremental stream processing. The examples are in haskell and scala. Written by Mark Hibberd

[incremental-stream-processing]: http://mth.io/talks/streams/


## Reader as Link Author

I've read [this insight][follow-up-reader-as-link-author] into federated wikis by Mike Caulfield

[follow-up-reader-as-link-author]: http://hapgood.us/2015/07/22/follow-up-reader-as-link-author/

## Kafkapocalypse: a postmortem on our service outage

I've read [this post-mortem analysis][kafkapocalypse] of the service outage at parse.ly, by Andrew Montalenti

[kafkapocalypse]: http://blog.parsely.com/post/1738/kafkapocalypse/

## Loving a Log-Oriented Architecture

I've read [this post][log-oriented-architecture] on experiences using the log-based architecture, by Andrew Montalenti. Cites the books [I Heart Logs][i-heart-logs],  and [Big Data: Principles and best practices of scalable realtime data systems][big-data-book-marz] the essay [The Log][essay-the-log]

[log-oriented-architecture]: http://blog.parsely.com/post/1550/kreps-logs/
[essay-the-log]: http://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying
[i-heart-logs]: http://www.amazon.com/Heart-Logs-Stream-Processing-Integration/dp/1491909382
[big-data-book-marz]: http://www.amazon.com/gp/product/1617290343


## A guide to Algorithmic Complexity

I've read [this guide][algorithmic-complexity] to algorithmic complexity, explaining Big-Oh notation (Big-Oh, Big-Theta, Big-Omega), with examples. Written by Radhika Ghosal

[algorithmic-complexity]: http://algosaur.us/algorithmic-complexity

## A guide to Recursion

I've read [this guide][a-guide-to-recursion] to recursion explaining the gist of it. Examples include the Fibonacci sequence and the Hanoi Towers problem. Later, an introduction to the chaos theory and fractals. Written by Radhika Ghosal

[a-guide-to-recursion]: http://algosaur.us/recursion

## Bootstrapped ClojureScript FAQ

I've read [this FAQ][bootstrapping-clojurescript] related to bootstrapping clojurescript

[bootstrapping-clojurescript]: https://github.com/clojure/clojurescript/wiki/Bootstrapped-ClojureScript-FAQ

## Applying property-based testing on my binary search tree implementation

I've read [this article][property-based-testing-bst], written by Manuel Rivero, on applying test-check (a property-based testing framework, similar to quickcheck) to a Binary Search Tree (BST) he did.

[property-based-testing-bst]: http://garajeando.blogspot.com/2015/07/applying-property-based-testing-on-my.html


## Do Extraterrestrials Use Functional Programming?

I've read [these slides][extraterrestrials-functional-programming], an introduction to lambda calculus, the Turing machine and the Halting Problem. Later, continues to describe ways of solving problems in a functional way. Also performance and optimizations; monads as well. Written by Manuel M T Chakravarty

[extraterrestrials-functional-programming]: http://yowconference.com.au/slides/yowlambdajam2013/Chakravarty-Extraterrestrials-Keynote.pdf

## WIP Limits

I've read [this post][wip-limits] by Tomas Rybing

[wip-limits]: https://theagileist.wordpress.com/2015/06/15/wip-limits/

## Applied capacity planning

I've read [this post][applied-capacity-planning] by Tomas Rybing.

[applied-capacity-planning]: https://theagileist.wordpress.com/2015/07/27/applied-capacity-planning/

## Don’t Get Attached to Programming Languages

I've read [this post][dont-get-attached-language] by Mike Cavaliere

[dont-get-attached-language]: http://mikecavaliere.com/dont-get-attached-programming-languages

## The Top 5 Skills of Rock Star Software Engineers

I've read [this post][skills-of-rockstar-engineers] by Cory Berg

[skills-of-rockstar-engineers]: http://softwareplusplus.com/2015/06/24/the-top-5-skills-of-rock-star-software-engineers/

## 5 Reasons to Use Protocol Buffers Instead of JSON For Your Next Service

I've read [this article][choose-protocol-buffers] on Protocol Buffers, written by Michael Bernstein 

[choose-protocol-buffers]: http://blog.codeclimate.com/blog/2014/06/05/choose-protocol-buffers/

## Data Serialization Formats

I've read [this comparison][gist-comparison-serialization] between MsgPack, JSON, Protocol Buffers, by Josh Szmajda.

[gist-comparison-serialization]: https://gist.github.com/joshsz/11299196

## Protocol Buffer Basics: Java

I've read [this introduction][protocol-buffers-docs-javatutorial] to Protocol Buffers in Java, by Google

[protocol-buffers-docs-javatutorial]: https://developers.google.com/protocol-buffers/docs/javatutorial

## RESTful Considered Harmful

I've read [this article][restful-considered-harmful], commenting downsides to using JSON / RESTful APIs, written by Tomasz Nurkiewicz

[restful-considered-harmful]: https://dzone.com/articles/restful-considered-harmful?oid=top_title

## “Considered Harmful” Essays Considered Harmful

I've read [this post][chech], by Eric Meyer, on why "Considered Harmful" are harmful as well.

[chech]: http://meyerweb.com/eric/comment/chech.html

## Keep Lambdas Cohesive

I've read [this post][keep-lambdas-cohesive] with recommendations on keeping the java lambdas cohesive. Written by Venkat Subramaniam

[keep-lambdas-cohesive]: http://blog.agiledeveloper.com/2015/07/keep-lambdas-cohesive.html

## The Joy of Flying Robots with Clojure

I've watched [this video][joy-flying-robots-clojure] by Carin Meier at the OSCON 2013 about communicating with robots in Clojure

[joy-flying-robots-clojure]: https://www.youtube.com/watch?v=Ty9QDqV-_Ak

## How to Learn TDD Without Getting Overwhelmed

I've read [this article][tdd-without-getting-overwhelmed] on learning TDD, by Justin Weiss

[tdd-without-getting-overwhelmed]: http://www.justinweiss.com/blog/2014/06/02/how-to-learn-tdd-without-getting-overwhelmed/

## Kata - the Only Way to Learn TDD

I've read [this article][kata-way-to-learn-tdd] on learning TDD, by Peter Provost

[kata-way-to-learn-tdd]: http://www.peterprovost.org/blog/2012/05/02/kata-the-only-way-to-learn-tdd/

## Koan: Past Perfect

I've read [this koan][koan-past-perfect], past perfect, reflecting on the people who prefer the past over the present. Who think that the past was simpler than currently is.

[koan-past-perfect]: http://thecodelesscode.com/case/180

## Koan: Future Imperfect

I've read [this koan][koan-future-imperfect], continuation from past perfect.

[koan-future-imperfect]: http://thecodelesscode.com/case/181

## Why “Agile” and especially Scrum are terrible

I've read [this article][agile-scrum-terrible] on downsides of Agile and Scrum, written by Michael Church.

[agile-scrum-terrible]: https://michaelochurch.wordpress.com/2015/06/06/why-agile-and-especially-scrum-are-terrible/

