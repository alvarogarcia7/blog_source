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

(Note: this entry is also present in this same month)

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

## Old stuff that rocks

I've read [this list][old-stuff-that-rocks] of old technologies that still rock, according to Greg Hurrell.

Tags: list, old-stuff, greg-hurrell

[old-stuff-that-rocks]: https://wincent.com/blog/old-stuff-that-rocks

## Do not underestimate credentials leaks

I've read [this article][cred-leaks] that describes how credentials are usually accidentally leaked and a guide on what to do about it. By Сковорода Никита Андреевич.

Tags: credential, leak, guide, how-to

[cred-leaks]: https://github.com/ChALkeR/notes/blob/master/Do-not-underestimate-credentials-leaks.md

## Clojure for the brave and true: chapter 8 - Writing Macros

I've read [this chapter][clj-bat-ch8] from Daniel Higginbotham about macros in clojure. In it, he explains common gotchas (e.g., double execution, variable capture), splicing, quoting and unquoting.

Tags: daniel-higginbotham, clojure, macro, chapter, quoting, unquoting, splicing

[clj-bat-ch8]: http://www.braveclojure.com/writing-macros

## The Telescoping Constructor (Anti)Pattern

I've read [this article][telescoping-constructor] by Roger Hughes on the telescoping constructor, with the example in java. The discussion is whether to apply this or not and whether this is a pattern or an anti-pattern

Tags: roger-hughes, telescoping-constructor, java, pattern, antipattern

[telescoping-constructor]: http://www.captaindebug.com/2011/05/telescoping-constructor-antipattern.html#.ViF57eztmkp

## Ruby for Newbies: Testing with Rspec

I've read [this tutorial][testing-with-rspec-21297] on how to make write tests with RSpec in Ruby. Written by Andrew Burgess

Tags: andrew-burgess, ruby, rspec, test, tutorial

[testing-with-rspec-21297]: http://code.tutsplus.com/tutorials/ruby-for-newbies-testing-with-rspec--net-21297

## Ruby dynamic method calling

I've read [this article][ruby-dynamic-method-calling] about dynamically calling methods and a benchmark on three ways of doing it in Ruby:

  * call
  * send
  * eval

Tags: khell, metaprogramming, comparison, benchmark, ruby, evaluation, dynamic

[ruby-dynamic-method-calling]: http://blog.khd.me/ruby/ruby-dynamic-method-calling/

## Becoming a CTO

I've read this article [][becoming-a-cto] by Juozas Kaziukėnas about the profile and the abilities of a CTO. Talks about the limiting factors for being one (e.g., stop programming, attend many meetings) and the type of work you are supposed to do (e.g., face business people, communicate the strategy, make yourself respectable).

Tags: juozas-kaziukenas, cto, career-change, technology, career, programmer, title, job

[becoming-a-cto]: https://medium.com/@juokaz/becoming-a-cto-337dc1a9c6ae

## 4 Stages of Team Development

I've watched [this video][stages-team-development] by the Glenn Smith "Growth Coach Houston" about the four stages of team development: forming, norming, storming, performing and how to get through them.

Tags: tuckman, forming, norming, storming, performing, glenn-smith, video, team-management, team

[stages-team-development]: https://www.youtube.com/watch?feature=player_embedded&v=7NouiH2ZT8w

## Time Hacking for College Students

I've read [this article][time-hacking-goel] by Karan Goel about techniques for finding time for important things:

  * prioritizing
  * waking up early
  * automate
  * keep learning

Tags: karan-goel, time-management, important-vs-urgent, prioritization

[time-hacking-goel]: https://goel.io/time-hacking/

## Clojure at a Real Estate Portal

I've read [this article][real-estate-clj] by Jon Pither, where he does a post-mortem analysis of a real-estate project with a fixed deadline (TV ads) with around ten months of development time. They brought in an external company, JUXT, who with 6 seasoned developers were able to finish the project on time and on budget.

Their stack was:  Ring, Compojure, Bidi, and http-kit for our Clojure web-apps, mixing in Friend and Liberator.

Tags: ring, compojure, bidi, http-kit, clojure, fixed-deadline, project, success-story, post-mortem, jon-pither

[real-estate-clj]: http://www.pitheringabout.com/?p=1069

## Musing on TDD, Impulsive Developers and Aesthetics

I've read this article by Jon Pither on why TDD can be harmful sometimes:

  * limits the amount of lateral thinking
  * forces a technology
  * limits the solution space given a fixed problem space
  * limits creativity and freedom when performing large / aggressive refactorings
  * sterile place

while he agrees that can be useful sometimes:

  * mostly in OOP
  * to keep you on the rails and focused

Tags: tdd, jon-pither, senior-developer, junior-developer, aesthetics, lateral-thinking

[musing-tdd]: http://www.pitheringabout.com/?p=1059

## Fred George On Programmer Anarchy

I've read [this article][programmer-anarchy-shenoy] by Roopesh Shenoy on a talk by Fred George: "Programmer Anarchy", where programmers make business decisions based on business metrics set by clients, among other things.

Tags: roopesh-shenoy, fred-george, programmer-anarchy, analogy, anarchy, business-metric, client, agile, methodology

[programmer-anarchy-shenoy]: http://www.infoq.com/news/2012/02/programmer-anarchy

## Programmer Anarchy

I've read [these slides][programmer-anarchy-slides] by Fred George about programmer's anarchy. Commented in the article above

Tags: slide, fred-george, programmer-anarchy, analogy, anarchy, business-metric, client, agile, methodology

[programmer-anarchy-slides]: http://www.slideshare.net/fredgeorge/programmer-anarchy-chinese

## What is Programmer Anarchy and does it have a future?

I've read [this article][programmer-anarchy-comparison] by Martin Jee explaining what is programmer anarchy and how it compares to an agile team. Compares the division of labor structure in anarchist and agile teams, using Marxist terms.

He finishes saying that what is a powerful idea in this methodology is the taking of personal responsibilities by the programmers.

Tags: fred-george, programmer-anarchy, analogy, anarchy, martin-jee, agile, methodology

[programmer-anarchy-comparison]: http://martinjeeblog.com/2012/11/20/what-is-programmer-anarchy-and-does-it-have-a-future/

## Agile is the New Black

I've read [these slides][agile-new-black] by Fred George where compares xp/agile development in 1999, 2006 and 2011. 

Tags: fred-george, agile, methodology, comparison, slide

[agile-new-black]: http://www.slideshare.net/fredgeorge/agile-is-thenewblack

## Show How, Don't Tell What - A Management Style

I've read [this article][show-how-vs-tell-what] by Ryan Tomayko about the management style they apply at github:

> instead of telling them what to do, show people how to plan, build, and ship product together.
>
> I’ve never actually told anyone what to do here. In fact, I vehemently refuse to tell people what to do. Here are just a couple reasons why:
>
> I don’t scale. If I tell someone what to do and they do it, then what? Do I have to tell them another thing to do? What happens when I have to decide what to do for 20 people?
>
> Telling people what to do is lazy. Instead, try to convince them with argument. This is how humans interact when there’s no artificial authority structure and it works great. If you can’t convince people through argument then maybe you shouldn’t be doing it.

about managers:

> It’s often cited that GitHub doesn’t have managers. In my opinion, a better way to describe the phenomenon would be to say that everyone at GitHub is a manager

Tags: ryan-tomayko, management, management-style, team-management, github

[show-how-vs-tell-what]: http://2ndscale.com/rtomayko/2012/management-style

## Clojure for the brave and true: chapter 7 - Clojure Alchemy: Reading, Evaluation, and Macros

I've read [this chapter][clj-bat-ch7] from Daniel Higginbotham about the essential concepts for macros: the reader, the evaluator, their relative order and independence. How to use clojure to extend itself and an example: the thread (``->``) macro

Tags: daniel-higginbotham, clojure, macro, chapter, reader, evaluator

[clj-bat-ch7]: http://www.braveclojure.com/read-and-eval/

## Team Bus Factors: How to Reduce Them and How to Prevent Them

I've read [this article][team-bus-factor] by Roy Osherove on the bus factor:

  * what is it
  * how to reduce them
  * how to prevent them

Also talks about examples of bus-factor people

Tags: bus-factor, roy-osherove, team-management, prevention, reduction, definition

[team-bus-factor]: http://5whys.com/blog/team-bus-factors-how-to-reduce-them-and-how-to-prevent-them.html

## Hambre de programar

I've read [this article][hambre-de-programar] (in Spanish) by Xavi Gost where he analyses the Barcelona Software Craftsmanship 2015: the events, the relationships and the passion that it has injected to attendees

Tags: xavi-gost, barcelona-software-craftsmanship, 2015, experience-report, scbcn15

[hambre-de-programar]: https://medium.com/@xav1uzz/hambre-de-programar-166aeae3b525

## Software Craftsmanship Barcelona 2015

I've read [this analysis][idealista-scbcn-2015] of the Barcelona Software Craftsmanship 2015 by the Idealista R&D team.

Tags: jaime-perera, barcelona-software-craftsmanship, 2015, idealista, experience-report, scbcn15

[idealista-scbcn-2015]: http://www.idealista.com/labs/blog/idealista/software-craftsmanship-barcelona-2015/

## JVMLS 2015 - Compilers are Databases

I've watched [this video][compilers-are-databases] by Martin Odersky on why compilers resemble databases and explains how a functional compiler works on the inside.

Explains the notion of a Type, Reference, Symbol, Denotation (and Multi-Denotation) living in the Abstract Syntax Tree (AST)

Also explains the need for a reading compiler (e.g., for quick validation in the IDE), single-pass and multi-pass compiler.

They have built phases to transform the source code into bytecode, but to better use the cache locality, they programmatically mix phases using Java Reflection (metaprogramming) to traverse the tree (AST) once for these selected phases.

Tags: type, reference, symbol, denotation, abstract-syntax-tree, ast, compiler, functional-compiler, scalac, dotty, martin-odersky, analogy, database

[compilers-are-databases]: https://www.youtube.com/watch?v=48js0H6ooBY

## In Functional Programming, what is a functor?

I've read [this answer][a-functor] of what is a functor

Tags: stack-overflow, functor, answer, functional-programming

[a-functor]: http://stackoverflow.com/questions/2030863/in-functional-programming-what-is-a-functor/2031421#2031421

## Ten Habits of a Good Programmer

I've read [this list][habits-good-programmer] of good habits of good programmers by Pieter Hintjens:

  1. If it works and is still useful, don't throw it out.
  1. Never solve the same problem twice in parallel.
  1. Solve the same problem often in serial.
  1. Write code, and repeat, until you are fluent in your language.
  1. Learn to use code generators.
  1. Work with others.
  1. Technology is a tool, not a tribal affiliation.
  1. Aim for this cycle: learn, play, work, teach.
  1. Get your edit-compile-run-fail cycles down to seconds.
  1. If you need debuggers, you're doing it wrong.

Tags: pieter-hintjens, list, habit, good-programmer

[habits-good-programmer]: http://hintjens.com/blog:98

## Beginning Clojure: Cursive

I've read [this tutorial][beginning-clojure-cursive] on installing Cursive, IntelliJ Idea's plugin for working with Clojure. Written by Tim Pote

Tags: cursive, clojure, intellij-idea, plugin, tutorial, tim-pote

[beginning-clojure-cursive]: http://potetm.github.io/2015/10/04/beginning-clojure-cursive.html

## #NodeJS : A quick optimization advice

I've read [this article][inlining-in-crankshaft] on the limit for inlining for the NodeJS optimizing compiler (Crankshaft), that includes both source code and comments. Written Julien Crouzet

Tags: nodejs, comment, julien-crouzet, crankshaft, optimizer, inline, function-inline

[inlining-in-crankshaft]: https://top.fse.guru/nodejs-a-quick-optimization-advice-7353b820c92e

## Specification Pattern

I've read [this wikipedia][specification-pattern] page on the specification pattern

Tags: eric-evans, martin-fowler, specification-pattern, pattern, design-pattern, dsl, domain-specific-language

[specification-pattern]: https://en.wikipedia.org/wiki/Specification_pattern

## El recruiting está ROTO #Bonilista

I've read [this bonilista][recruitment-roto] where David Bonilla explains why the recruitment sector for technical people in Spain is broken. Article is in Spanish.

Tags: david-bonilla, bonilista, recruitment, job, career

[recruitment-roto]: http://us2.campaign-archive2.com/?u=374c664073e1a1fa3deca53b4&id=539364dde4

## BDDon’t: The practice and the tools

​I've  read [this article][bddont] by Kevin Dishman that explains what is BDD and how it I  usually used. Also the common downsides and what to do about it

Suggests using a faster tool, lower on the test pyramid that can bring the same business value at a lower cost

Tags: kevin-dishman, downside, test-pyramid, bdd, test, unit-test, functional-test, acceptance-test

[bddont]: https://www.thoughtworks.com/p2magazine/issue12/bdd-dont/

## Cómo usan #Git en GitHub – #scbcn

I've watched [this screencast][git-at-github] on the talk we organized yesterday about github.

Tags: javier-ferrer, codely-tv, codely, event, scbcn, alain-helaili, screencast

[git-at-github]: http://codely.tv/screencasts/como-usan-git-en-github/

## Trying to speed up Binary Search

I have read [this article][speeding-up-bsearch] on how the binary search is implemented and what other algorithms are possible to speed up the search in large datasets, especially common in databases.

Tags: optimization, branch-misprediction, clang, o3, gpp, c, database, binary-search, thomas-neumann

[speeding-up-bsearch]: http://databasearchitects.blogspot.com.es/2015/09/trying-to-speed-up-binary-search.html

##  Scrum 3.0 and Organization 4.0 - impressions from a great evening with Boris Gloger at ImmobilienScout24

I have read [this article][scrum30] by  Sebastian Radics that compares the different ways of doing scrum: 1 2 3, most comments on other strategies or management methodologies like no estimates.

Compares the importance of focusing on the process or on the final product, the role of the scrum master, the role of the product owner, and the team itself.

Tags: management, agile, scrum, team-management, sebastian-radics, scrum30

[scrum30]: http://www.ontheagilepath.net/2015/12/scrum-30-and-organization-40.html

## Trucos para trabajar con equipos remotos

I have read [this article][trucos-equipos-remotos] by Israel Alcázar (Spanish). Explains how this company organized their product development process. explains tools for working with a remote team.

give three pieces of advice for improving it, and further resources to read

Tags: remote, remote-first, isra-alcazar, israel-alcazar, team-management, advice

[trucos-equipos-remotos]: http://thinkingwithyou.com/2015/11/trucos-para-trabajar-con-equipos-remotos/

## Introducing new open-source tools for the Elixir community

I've read [this article][elixir-at-pinterest] by Steve Cohen that explains what the actor model is and what is the spirit of the elixir language: user friendlier syntax for erlang

They also explain that they have implemented and ad server and access control using elixir. For this matter, they rely on two tools that are now open source

Tags: elixir, microsecond, latency, erlang, actor-model, language-syntax, open-source, steve-cohen

[elixir-at-pinterest]: https://engineering.pinterest.com/blog/introducing-new-open-source-tools-elixir-community

## ¿Cuánto pagas por tus herramientas de trabajo?

I've read [this bonilista][cuanto-pagas-herramientas] about how much programmers invest in buying their tools (and honing them). By David Bonilla, in Spanish

Tags: david-bonilla, bonilista, tool, investment

[cuanto-pagas-herramientas]: http://us2.campaign-archive2.com/?u=374c664073e1a1fa3deca53b4&id=12ed2d6eb0

## Clojure at a Bank – Freeing the Rules

I've read [this article][business-rules-in-clojure] by Jon Pither about converting OO business rules into Clojure and using the homoiconicity for increasing the power: when code is data, the rules themselves become searchable (using a search engine), visualizable and analyzable. This wasn't possible before when code was not data.

They have also build further tools to analyze rules with larger sets of data, rather than unit tests, to see if they conflict among each other.

Tags: jon-pither, clojure, homoiconicity, code=data, data=code, rule, rule-engine, bank, business-rule, code-analysis

[business-rules-in-clojure]: http://www.pitheringabout.com/?p=830

## Five reasons to learn Clojure and Emacs together

I've read [this article][learning-clojure-emacs-together] by Jon Pither advocating the learning of Clojure and Emacs at the same time. The main reasons are: liberation, change, support, simplicity, mass adoption.

Cites that being hard to learn a new editor is a good idea to separate those who are willing to invest the time in learning (both an editor and a new language) from those who don't.

Tags: clojure, emacs, jon-pither, learning, liberation, change, support, simplicity, mass-adoption

[learning-clojure-emacs-together]: http://www.pitheringabout.com/?p=849

## Pull Requests Maintainers Won't Hate
I've read this [list of tips][pr-tips] by James Reeves on improving the pull requests
Tags: pull-request, james-reeves, tip, list
[pr-tips]: https://www.booleanknot.com/blog/2013/09/07/pull-requests.html

## How to get rich in tech, guaranteed.

I've read [this article][get-rich-in-tech] that describes what is a way to make good money and retire rich why working for a company.

It also explains about entering the startup market, what questions should be asked, what's your real value, what are the benefits of doing it, known limitations and other questions

Tags: startup, career, career-management, work, professional-career, value, money

[get-rich-in-tech]: http://startupljackson.com/post/135800367395/how-to-get-rich-in-tech-guaranteed

## Modern Perl 4th edition, a review

I have read [this article][modern-perl-4] that explains how this new book covers the syntax, idioms and the rest of the Perl language.

In this 4th edition, parts of  the text have completely been rewritten, a New formatting applied to ease and improve the reading comprehension

Tags: book-review, review, david-farrell, perl, reedition, modern-perl

[modern-perl-4]: http://perltricks.com/article/205/2015/12/21/Modern-Perl-4th-edition--a-review

## 8 Characteristics of Agile Software Developers

​I've read [this article][characteristics-of-agile-sw-devs] that describes what characteristics are common in companies practicing an agile methodology, as revealed by a study (that even though it's not cited, can be tracked back to [here][source-characteristics])

Suggests ideas for teams that change in a changing environment and what to do about it.

Written by Keela Robison.

Tags: keela-robison, agile, team-management

[characteristics-of-agile-sw-devs]: https://medium.com/@pm_loop/8-characteristics-of-successful-agile-software-developers-ab2c43abb959
[source-characteristics]: http://productdevelopmentsuccess.com/study

## This is why you never end up hiring good developers

I've read [this article][hire-good-devs] that explains what to look for in a strong, stronger, strongest (software) developer

The main idea is to find a good person that fits the job, without inflicting pain in the team morale and can learn to perform the specific tasks in the future, as (paraprasing) the pool of people that know what you need is much smaller than the people who can learn it.

The article specifies what to look and not look for in a candidate.

Some quotes:

> grasp of complex topics and the ability to clearly communicate about them, which are the two jobs of the working engineer.
> 
> track record of learning new skills and applying them successfully
> 
> TL;DR:
>
>  1. Many interview techniques test skills that are at best irrelevant to real working life;
>  
>  1. you want somebody who knows enough to do the job right now;
>  
>  1. or somebody smart and motivated enough that they can learn the job quickly;
>  
>  1. you want somebody who keeps getting better at what they do;
>  
>  1. your interview should be a collaborative conversations, not a combative interrogation;
>  
>  1. you also want somebody who you will enjoy working with;
>  
>  1. it’s important to separate “enjoy working with” from “enjoy hanging out with;”
>  
>  1. don’t hire assholes, no matter how good they are;
>  
>  1. if your team isn’t diverse, your team is worse than it needed to be;
>  
>  1. accept that hiring takes a really long time and is really, really hard.

[hire-good-devs]: http://qz.com/258066/this-is-why-you-dont-hire-good-developers/

## Effective Learning Strategies for Programmers

I've (re-)read [this article][learning-strategies] by Allison Kaptur on fixed vs growth mindset and the need for having the latter for being a programmer.

The fixed mindset is present in the 10x-engineer, and the worshipping of heroes.

It also includes a recipe for changing from a fixed-mindset to a growth-mindset.

(Note: this entry is also present in this same month)

Tags: allison-kaptur, fixed-mindset, growth-mindset, research, learning-strategy, recurse-center, carol-dweck, mindset, 10x-engineer, impostor-syndrome

[learning-strategies]: http://akaptur.com/blog/2015/10/10/effective-learning-strategies-for-programmers/

## Doctor! Please fix my agile!

I've read [these slides][doctor-please-fix-agile] by Ville Törmälä on what is agile, organizational problems and the distinction between efficiency and effectiveness. Also talks about the distribution of time and the organization of the environment (what calls)

Tags: slide, agile, efficiency, effectiveness, tip, organization, ville-tormala, project-thinking, team-thinking

[doctor-please-fix-agile]: https://dl.dropboxusercontent.com/u/59614769/Presentations/Doctor%20please%20fix%20my%20Agile.pdf

## “Wolf” narrative considered harmful (also biologically unlikely)

I've read [this article][wolf-considered-harmful] that explains what the "lone wolf" archetype is, among programmers, and possible outcomings for those profiles. Written by Kellan Elliott-McCrea.

Describes some craftsmanship ideas for these roles, based on their proficiency with their tools, that will generate tools for the rest of the team and make the rest more effective. Also discusses the non-management advancement career.

Tags: analogy, wolf, lone-wolf, archetype, programmer, programmer-analogy, profile, team-management, kellan-elliott-mccrea

[wolf-considered-harmful]: http://laughingmeme.org/2014/09/02/wolf-narrative-considered-harmful-also-biologically-unlikely/

## The Wolf - dictating their own terms

I've read [this article][wolf-article] by Michael Lopp about the ``wolf`` position as a person or in a team. He describes their characteristics and his own experiences working with them.

Tags: management, wolf, team-management, analogy, michael-lopp

[wolf-article]: http://randsinrepose.com/archives/the-wolf/

## Volkswagen and Cheating Software

I've read [this essay][vw-cheating-sw] by Bruce Schneier on cheating software, using as an example the Volkswagen case, but especially centered on software that is made do cheat in an undetectable fashion. Or that could be attributed to a programming mistake. The later, says the author, is so common that there could be already intentional or unintentional errors hiding cheating.

The author cites the Internet of Things of new opportunities for companies to use / produce cheating software and about a possible solution: transparency and oversight of the software that more and more reigns our lives.

Tags: cryptogram, bruce Schneier, volkswagen, mistake, quality, transparency, oversight, iot, essay, cheating, cheating software

[vw-cheating-sw]: https://www.schneier.com/crypto-gram/archives/2015/1015.html#1

