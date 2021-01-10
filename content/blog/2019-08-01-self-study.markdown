---
categories:
- self-study-aggregation
- august
- 2019
- alan-kay
- answer
- api
- approval-test
- assembler
- backup
- book
- bundle
- business
- bytecode
- cache
- career
- career-management
- cdn
- compensation
- connection
- considered-harmful
- control
- delta-encoding
- delta-request
- dependency
- development-environment
- diffy
- encryption
- engineering-manager
- etag
- evan-noon
- external-influence
- frontend
- global-dependency
- golang
- golden-master
- http-delta-request
- information
- introduction
- intuition
- java
- javascript
- jvm
- kata
- kitchen
- knowledge
- lake-wobegon-strategy
- link
- local-data
- local-dependency
- make
- management
- manager
- mathematics
- measure
- meetup
- michael-mccune
- micro-frontend
- mixpanel
- module
- module-dependency
- mutation
- mutation-testing
- node
- npm
- npm-link
- paper
- parallel-change
- peer-review
- performance
- peter-miller
- pit
- pitest
- presentation
- profession
- programming-pearl
- python
- quora
- reading-list
- recursive
- recursive-make
- refactoring
- repo
- repository
- resource
- return-on-investment
- reveal
- reveal-js
- rewrite
- roi
- salary
- service-worker
- setup
- shared-dictionary-compression-for-http
- slide
- slide-deck
- slideshare
- softonic
- software-crafters
- test
- testing
- tool
- ugly-trivia
- unix
- unix-tool
- vendor
- webpack
date: 2019-08-01T10:32:19Z
title: Self-Study in August 2019
url: /blog/2019/08/01/self-study-august-2019/
---

## [List the local NPM link packages](https://stackoverflow.com/a/48593067)

npm ls -g --depth=0 --link=true

Tags: npm, npm-link, node, link, global-dependency

Id: c01a0efa-b832-11e9-87be-0242ac110003
Read: Tue, 06 Aug 2019 10:12:52 +0000

## [Mutation testing tool for java / jvm](http://pitest.org/)

This is a mutation testing tool for the JVM / java

Tags: pitest, pit, mutation-testing, testing, test, tool, jvm, java, mutation

Id: 02d29d3e-b833-11e9-b785-0242ac110003
Read: Tue, 06 Aug 2019 10:14:44 +0000

## [Ugly trivia kata, using mutation testing](https://github.com/alvarogarcia7/kata-ugly-trivia-mutation-testing-java)

This is a kata I've practiced, then shown at the Software Crafters meetup (at Softonic).

I've explained mutation testing, then refactoring according to domain boundaries (Questions, Players)

Tags: softonic, software-crafters, meetup, mutation-testing, pit, kata, ugly-trivia, approval-test, golden-master, testing, java, refactoring, repository, repo, kitchen

Id: 531ffcdc-b833-11e9-9ce0-0242ac110003
Read: Tue, 06 Aug 2019 10:16:58 +0000

## [Experienced programmers and computer scientists, what are some really old (or even nearly forgotten) books you think every new programmer should read?](https://www.quora.com/Experienced-programmers-and-computer-scientists-what-are-some-really-old-or-even-nearly-forgotten-books-you-think-every-new-programmer-should-read)

  * I’m still a big fan of the "Lisp 1.5 Programmers Manual" (MIT Press — still in print). This version of the language is no longer with us, but the book — first written ca 1962 — by John McCarthy, who invented, and his colleagues, who implemented, is a perfect classic.
  * It starts with a version of John’s first papers about Lisp, and develops the ideas in a few pages of examples to culminate on page 13 with Lisp eval and apply defined in itself. There are many other thought provoking ideas and examples throughout the rest of the book.
  * The way to grow from this book is to deeply learn what they did and how they did it, and then try to rewrite page 13 in a number of ways. How nicely can this be written in "a lisp" using recursion. How nicely can this be written without recursion? (In both cases, look ahead in the book to see that Lisp 1.5 had gotten to the idea of EXPRs and FEXPRs (functions which don’t eval their arguments before the call — thus they can be used to replace all the "special forms" — do a Lisp made from FEXPRs and get the rest by definition, etc.).
  * What is a neat bootstrapping path? How could you combine this with Val Shorre’s "Meta II" programmatic parser to make a really extensible language? What does it take to get to "objects"? What are three or four really interesting (and different ways) to think about objects here? (Hints: how many different ways can you define "closures" in a language that executes? What about using Lisp atoms as a model for objects? Etc.)
  * The idea is that Lisp is not just a language but a really deep "building material" that is tidy enough to "think with" not just make things (it’s a "building material" for thoughts as well as computer processes).
  * Dani Richard reminded me to mention: "Computation: Finite and Infinite Machines" by Marvin Minsky (Prentice-Hall, 1967), which — since it is one of my favorite books of all time — I’m surprised I didn’t include in the original list. Marvin could really write, and in this book he is at his best. It is actually a "math book" — with lots of ideas, theorems, proofs, etc., — but presented in the friendliest way imaginable by a great mind who treated everyone — including children — as equal to him, and as fellow appreciators of great ideas. There are lots of interesting things to ponder in this book, but perhaps it is the approach that beckons to the reader to start thinking "like this" that is the most rewarding.
  * "Advances in Programming and Non-Numerical Computation" (Ed. L. Fox) mid-60s. The papers presented at a 1963 summer workshop in the UK. The most provocative ones were by Christopher Strachey and several by Peter Landin. This was one of the books that Bob Barton had us read in his famous advanced systems design class in 1967.
  * Try "The Mythical Man-Month" by Fred Brooks, for an early look and experience with timeless truths (and gotchas) from systems building with teams …
  * Try "The Sciences of the Artificial" by Herb Simon. A much stronger way to think about computing — and what "Computer Science" might mean — by a much stronger thinker than most today.
  * "A Programming Language" by Ken Iverson (ca 1962). This has the same thought expanding properties of Lisp. And, like Lisp, the way to learn from these really old ideas is to concentrate on what is unique and powerful in the approach (we know how to better improve both Lisp and APL today, but the deep essence is perhaps easier to grasp in the original manifestations of the ideas). Another book that Barton had us read.
  * I like Dave Fisher’s 1970 CMU Thesis — "Control Structures for Programming Languages" — most especially the first 100 pages. Still a real gem for helping to think about design and implementations.
  * More recent: (80s) "The Meta-Object Protocol" by Kiczales, et al. The first section and example is a must to read and understand.
  * Joe Armstrong’s PhD thesis — after many years of valuable experience with Erlang — was published as a book ca 2003 …
  * Lots more out there for curious minds ….
  * Mind Storms, by Seymour Pappert.
  * The Elements of Programming Style, by Kernighan and Plaguer.
  * Classics is Software Engineering, edited by Edward Yourdon, 1979 (While this book was published in 1979, it contains articles published by giants in Software Engineering from the ’60s and ‘70s).
  * Programming on Purpose: Essays on Software Design, by PJ Plaguer.
  * Byte Magazine, Volume 6, Number 8, August 1981, Editor in Chief Christopher Morgan.
  * Programming Pearls, by Jon Bentley.
  * Data Structures, This was a truly wonderful book. It was part of a computer science series. I read in the ‘70s, but I can’t find it now and I don’t remember the name of the author.
  * Introduction to Algorithms, by Cormen, Leiserson, Rivest, and Stein (known as CLRS).
  * The Art of Computer Programming, Volumes 1…4, by Donald Knuth.
  * Compilers: Principles, Techniques, and Tools, by Aho, Lam, Sethi, and Ullman, 1986 (known as The Dragon Book).
  * I would mention Where Wizards Stay Up Late: The Origins of the InterNET, by Katie Hafner, but, it’s only from 1998 so I’m not sure it’s old enough.
  * The Elements of Programming Style by Kernighan and Plauger
  * Controlling Software Projects by Tom DeMarco
  * The Mythical Man-Month by Fred Brooks
  * Peopleware by DeMarco and Lister
  * The Secrets of Consulting by Gerry Weinberg
  * The Psychology of Computer Programming by Gerry Weinberg
  * The Practical Guide to Structured Systems Design by Meilir Page-Jones
  * The Design of Everyday Things by Don Norman
  * Programming Pearls by Jon Bentley
  * A Rational Design Process - How and Why to Fake it http://users.ece.utexas.edu/~per...
  * A Spiral Model of Software Development and Enhancement http://csse.usc.edu/TECHRPTS/198...
  * Clean Code
  * I also really like Thinking in Java by a wonderful author called Bruce Eckel. As the title says, it teaches you to think OOP and really understand the design behind the language and the lessons it was designed after. The book is from 2006, so it is dated. But it is worth your time and is free to download!
  * My favorite programming book to date is still Structure and Interpretation of Computer Programs, more popularly known as SICP. It’s old, but not forgotten for good reason. I hear many colleges are dropping this book, which is a crying shame.
  * Mathematics for Computer Science is another unsung book. I don’t know of many who has read through this one, but it’s truly mind-expanding and mind-blowing.
  * A book that’s often dismissed and forgotten in this day of "flavor of the week" JavaScript frameworks is JavaScript, the Good Parts. While it’s newer (10-ish years old), I wish more people would take a look at this one. Even if you never write JS in your life, you will walk away a better thinker.
  * Extreme Programming Explained by Kent Beck (2000) — how taking everything to the extreme makes everything easier. Hugely influential for me at a time when most projects were waterfall-style change management exercises. This explains how to be agile.
  * Smalltalk, Objects, and Design by Chamond Liu (1996) — a nice introduction to the elegant mother of all object oriented languages, but also covers design patterns, MVC, UI design and use of metaphors. A smorgasbord of developer insights that are still relevant today.
  * Principles of Interactive Computer Graphics by Newman and Sproull (1979) — this book inspired me to get into programming. It explains the science of recreating the real world on a computer screen. Not so much about writing code, but about the mathematics, algorithms, and hardware.
  * The C Programming Language
  * The Unix Programming Environment
  * SICP
  * Tom Gilb’s - Principles of Software Engineering Management.
  * His principles are classic:
  * The invisible target principle All critical system attributes must be specified clearly. Invisible targets are usually hard to hit (except by chance).
  * The all-the-holes-in-the-boat principle Your design solutions must satisfy all critical attributes simultaneously.
  * The clear-the-fog-from-the-target principle All critical attributes can be specified in measurable testable terms, and the worst-acceptable level can be identified.
  * The learn-before-your-budget-is-used-up principle Never attempt to deliver large and complex systems all at once; try to deliver them in many smaller increments, so that you can discover the problems and correct them early.
  * The keep-pinching-yourself-to-see-if-you-are-dreaming principle Don’t believe blindly in any one method; use your methods and common sense to measure the reality against your needs.
  * The fail-safe minimization principle If you don’t know what you’re doing, don’t do it on a large scale.
  * Object-Oriented Software Construction - Wikipedia (by Betrand Meyer)
  * Smalltalk-80 (http://stephane.ducasse.free.fr/...)
  * You might want to take a look at DoradoList where it has lists of great computer engineering and science books suggested by some world-renowned professors from MIT, Stanford, UC Berkeley and more. Interestingly there is a section in that website that is called Gems and per website it is compiled as: "There are many books that are perhaps somewhat out of date in a broad sense but that have wonderful insights that have perhaps been overlooked. In this section, we have asked the top experts if they know of any of this type of hidden/forgotten gems. You can see their responses that we have categorized". It looks there is a section for Computer Programming there as well.
  * Everything by Robert Glass
  * Mindstorms
  * Turtles, Termites, and Traffic Jams
  * Computer Science, Logo Style by Brian Harvey (3 volumes)
  * Mirror Worlds
  * Starting Forth / Thinking Forth
  * The C Programming Language
  * The AWK Programming Language
  * There are many other good books, some mentioned in other answers. My list touches on some different types of languages, which are small and tractable, but offer a broad sampling of ideas. The Harvey series shows that a language used to teach children has deceived many into thinking it wasn’t powerful.
  * I love Per Brinch Hansen’s Programming a Personal Computer. It focusses on the Edison programming language, which is an incredibly small and simple language. Edison resembles Pascal to some extent.
  * The book shows how to use Edison to write a complete operating system for a "personal computer." It even provides the complete source code listing!
  * Edison was designed for multi-processor computing, sort of like the Golang of the day. This book was the first to convince me that small and simple was a very good thing.
  * And that’s why Smalltalk is my favourite programming language today. See Richard Kenneth Eng's answer to What programming language was for you an absolute pleasure to work with and why?

Tags: reading-list, alan-kay, programming-pearl, quora, answer

Id: a87e9686-babb-11e9-a55d-0242ac110004
Read: Fri, 09 Aug 2019 15:37:55 +0000

## [Delta requests for frequently-updated application bundles: from 2002 to service workers](https://blog.scottlogic.com/2019/08/15/delta-requests-frequently-updated-application-bundles-2002-to-service-workers.html)

Explains how to bundle frontends (in javascript), to split it up for performance reasons. 

How to split the vendor bundle from our own bundle. How to delta (incremental) send the new parts to clients

Tags: service-worker, delta-request, vendor, javascript, frontend, bundle, cdn, http-delta-request, etag, cache, delta-encoding, shared-dictionary-compression-for-http, micro-frontend, webpack

Id: fa331bd6-c89f-11e9-894d-0242ac110005
Read: Tue, 27 Aug 2019 04:55:03 +0000

## [Recursive Make Considered Harmful](http://aegis.sourceforge.net/auug97.pdf)

Explains why recursive make (calling make inside make) is harmful. Offers alternatives

Tags: make, paper, peter-miller, recursive, recursive-make, module, module-dependency, unix, unix-tool, tool, return-on-investment, roi, considered-harmful

Id: f62a204c-c8a0-11e9-b7a1-0242ac110005
Read: Tue, 27 Aug 2019 05:02:06 +0000

## [Why You Should Have (at Least) Two Careers](https://getpocket.com/explore/item/why-you-should-have-at-least-two-careers)

having two professions will: first will subsidise the seconone , you will intermingle ideas (creating knowledge, not information), make connections outside of your business area

Tags: career, career-management, knowledge, information, profession, connection, business, external-influence

Id: 2f230fda-c8a1-11e9-8f4f-0242ac110006
Read: Tue, 27 Aug 2019 05:03:41 +0000

## [Ask HN: Best resources to gain math intuition?](https://news.ycombinator.com/item?id=20804582)


Tags: intuition, book, resource, mathematics, introduction

Id: a5ddf530-c8a2-11e9-8709-0242ac110006
Read: Tue, 27 Aug 2019 08:14:10 +0000
