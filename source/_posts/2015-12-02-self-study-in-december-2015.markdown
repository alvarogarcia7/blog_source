---
layout: post
title: "Self-Study in December 2015"
date: 2015-12-02 09:50:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - December
  - 2015
  - read
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}

## Ruby Equality And Object Comparison

I've read [this article][ruby-equality-object-comparison], written by Alan Skorkin, that explains equality comparisons in ruby:

  * equal? is reference equality
  * == is value equality
  * eql? is value and type equality

Tags: ruby, comparison, equality, object, reference, alan-skorkin

[ruby-equality-object-comparison]: http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/

## Software Folklore

I've watched [this PechaKucha][software-folklore] by Chris Ford on what are laws and how they relate to creating software. Also talks on what could be an analogy to software creation (says not science, not engineering)

Tags: folklore, chris-ford, analogy, computer-science, pechakucha, software-engineering, software-creation, law

[software-folklore]: https://www.thoughtworks.com/insights/blog/software-folklore

## 3 Things Java Programmers Can Steal from Clojure

I've read [this article][steal-from-clojure] by Eric Normand, where he explains 3 clojure things that can be applied to your day to day java:

1. Persistent Data Structures
1. Software Transactional Memory
1. Extensible Data Notation

Tags: clojure, java, eric-normand, stm, edn

[steal-from-clojure]: http://www.lispcast.com/3-things-java-can-steal-from-clojure

## 2 Features of Clojure Editors Professionals Won't Do Without

I've read [this article][clojure-editors] by Eric Normand, where he explains the most necessary features for a clojure editor:

1. REPL Integration
1. Structural Editing

Tags: clojure, java, eric-normand, stm, edn

[clojure-editors]: http://www.lispcast.com/clojure-editors

## How to read more books

I've read [this article][read-more-books] by Mathias Verraes on tips to read more books:

  * Negative things to stop doing
  * Positive things to start doing
  * Habits to form

Tags: mathias-verraes, reading, book

[read-more-books]: http://verraes.net/2012/12/how-to-read-more-books/

## Effective Learning Strategies for Programmers

I've read [this article][learning-strategies] by Allison Kaptur on fixed vs growth mindset and the need for having the latter for being a programmer.

Especially interesting is the provided example of the confusion in the documentation, that can hinder productivity

Tags: allison-kaptur, fixed-mindset, growth-mindset, research, learning-strategy, recurse-center, carol-dweck, mindset

[learning-strategies]: http://akaptur.com/blog/2015/10/10/effective-learning-strategies-for-programmers/

## Code a fully-functional web app in 14 days… - Challenge Accepted

I've read [this experience report][mvp-14-days] on how Ryan Haase and Benjamin Hoffman built an MVP in 14 days. They describe their stack choices, gotchas and key points.

Tags: ryan-haase, benjamin-hoffman, mvp, angular, firebase, challenge

[mvp-14-days]: https://medium.com/@OggimusPrime/code-a-fully-functional-web-app-in-14-days-e247f536772d

## Writing-Clear-Code, Not-Clever-Code

I've-read [this-article][clear-not-clever-code] by-Mike-Sherov-where-he-explains-the-reflection-he-did-since-his-team-members-were-asking-too-much-about-his-code. His-conclusion-was-to-stop-reducing-the-size-of-the-code-to-improve-readability.

Tags: mike-sherov, clean-code,clear-code, clever-code, reflection, team, code

[clear-not-clever-code]: https://medium.com/@mikesherov/writing-clear-code-not-clever-code-d6b90353a3c5

## En vez de “un Scrum por proyecto” mejor un “Scrum por equipo”

I've read [this article][scrum-by-team] where Javier Garzás explains scrum by teams or by projects and why the former should be preferred (in Spanish).

Tags:  javier-garzas, scrum, project-management, team, agile

[scrum-by-team]: http://www.javiergarzas.com/2015/12/alejate-del-concepto-proyecto-si-quieres-usar-bien-scrum-22-adaptar-scrum-segun-cada-proyecto.html

## Application gateways: an example in Clojure

I've read [this example][app-gateway-clojure] that Cristobal Garcia prepared for me after asking for it at the local Barcelona Software Craftsmanship community (Many thanks!).

He describes what an application gateway is, giving an example in clojure. In this case, the application gateway is used to cache and forward/deny requests to another webservice.

Tags: cristobal-garcia, application-gateway, clojure, example, level-7-firewall, barcelona-software-craftsmanship, scbcn, gift

[app-gateway-clojure]: http://blog.obliquo.eu/post/134421923177/application-gateways-an-example-in-clojure

## Habits For Effective Refactoring

I've watched [this video][habits-effective-refactoring] by Jason Gorman about techniques for effective and sustainable refactoring. Among them:

  * check the tests, the coverage to make sure that the refactored code has a good safety net
  * set a refactoring goal: decide what you want to refactor at this time and when you'll be done
  * know your code smells
  * only refactor on green
  * use automated refactoring steps whenever possible: for the benefits of transactionability and undo are huge and the risk of messing it up decreases
  * commit after achieving the refactoring goal: allows to create a checkpoint to revert to
  * bottle the code smells for faster/better learning (in the commit message, he uses a hashtag for searching)

Tags: jason-gorman, refactoring, video, technique, refactor, tutorial, code-smell

[habits-effective-refactoring]: https://www.youtube.com/watch?v=THw8t7ePlsc

## Key to "OEIS.org" Poster, n. 15

I've read [the 15th "poster and its key"][oeis-15] by the OEIS, published by N. J. A. Sloane.

Tags: sloane, oeis, poster-and-key, neil-sloane

[oeis-15]: http://oeisf.org/Poster15a_key.pdf

## The Clojure Style Guide

I've read [this style guide][clj-style-guide] to clojure, by Bozhidar Batsov

Tags: bozhidar-batsov, clojure, style-guide

[clj-style-guide]: https://github.com/bbatsov/clojure-style-guide

## Marick's Midje information

  * [Custom checkers](https://github.com/marick/Midje/wiki/Writing-your-own-checkers)
  * [Domain concepts](https://github.com/marick/Midje/wiki/Two-words-you-need-to-know)
  * [Top-down testing](https://github.com/marick/Midje/wiki/Top-down-testing)
  * [Nested checkers](https://github.com/marick/Midje/wiki/Nested-checkers)

## Clusterware 11gR2 – Setting up an Active/Passive failover configuration

I've read [this how-to guide][active-passive-oracle] by Gilles Haro on how to create an Active/Passive failover configuration for Oracle.

Tags: failover, high-availability, oracle, gilles-haro, active-passive, database

[active-passive-oracle]: https://blogs.oracle.com/xpsoluxdb/entry/clusterware_11gr2_setting_up_an_activepassive_failover_configuration

## The Telescoping Constructor (Anti)Pattern

I've read [this article][telescoping-constructor] by Roger Hughes on the telescoping constructor, with the example in java. The discussion is whether to apply this or not and whether this is a pattern or an anti-pattern

Tags: roger-hughes, telescoping-constructor, java, pattern, antipattern

[telescoping-constructor]: http://www.captaindebug.com/2011/05/telescoping-constructor-antipattern.html#.ViF57eztmkp

## Ruby for Newbies: Testing with Rspec

I've read [this tutorial][testing-with-rspec-21297] on how to make write tests with RSpec in Ruby. Written by Andrew Burgess

Tags: andrew-burgess, ruby, rspec, test, tutorial

[testing-with-rspec-21297]: http://code.tutsplus.com/tutorials/ruby-for-newbies-testing-with-rspec--net-21297

