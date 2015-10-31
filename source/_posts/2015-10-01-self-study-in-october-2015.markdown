---
layout: post
title: "Self-Study in October 2015"
date: 2015-10-01 15:25:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - october
  - 2015
  - read
  - 1986
  - abstract-syntax-tree
  - acid
  - agile
  - agile-academy
  - alex-smith
  - andrew-stewart
  - arrayblockingqueue
  - ast
  - backlog
  - benchmark
  - brett-l.-schuchert
  - classloader
  - clojure
  - code=data
  - commitment
  - comparison
  - concurrency
  - concurrentlinkedqueue
  - contention
  - cost-reduction
  - data-structure
  - data=code
  - dave-farley
  - dependency-inversion-principle
  - design-principle
  - dip
  - disruptor
  - document-store
  - dom
  - domain-specific-language
  - doug-lea
  - downside
  - elm
  - evan-czaplicki
  - example
  - extreme-programming
  - framework
  - function
  - gregory-brown
  - haskell
  - hirotaka-takeuchi
  - homoiconicity
  - ikujiro-nonaka
  - introduction
  - james-donelan
  - java
  - jevgeny-kabanov
  - json
  - lambda-calculus
  - lean-startup
  - lmax
  - low-cost
  - low-level-optimization
  - macro
  - management
  - martin-thompson
  - matt-might
  - michael-barker
  - mongodb
  - mvp
  - nikolaos-raptis
  - object-oriented
  - optimization
  - pair-programming
  - paper
  - parallelism
  - patricia-gee
  - pet-project
  - postgresql
  - principle
  - priority
  - product-development
  - proof
  - proof-of-concept
  - racket
  - ring-buffer
  - robert-martin
  - script
  - scrum
  - side-project
  - software-quality
  - solid
  - speed
  - sprint
  - star-videos
  - stephen-wolfram
  - sven-slootweg
  - tdd
  - trisha-gee
  - turing-machine
  - universal-turing-machine
  - video
  - virtual-dom
  - white-paper
  - xp
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}

## Blazing Fast HTML: Virtual DOM in Elm

I've read [this article][elm-blazing-fast-html] explaining how Elm works in relation to the virtual DOM. By Evan Czaplicki.

Tags: elm, dom, virtual-dom, comparison, speed, haskell, evan-czaplicki

[elm-blazing-fast-html]: http://elm-lang.org/blog/blazing-fast-html

## Why you should never, ever, ever use MongoDB

I've read [this article][never-use-mongodb] stating the downsides of using MongoDB. Written by Sven Slootweg

Tags: mongodb, downside, sven-slootweg, json, document-store, postgresql, acid

[never-use-mongodb]: http://cryto.net/~joepie91/blog/2015/07/19/why-you-should-never-ever-ever-use-mongodb/
[design-by-contract-unam]: http://www.revista.unam.mx/vol.4/num5/art11/sep_art11.pdf

## Do you really get classloaders?

I've watched [this video][really-get-classloaders] by Jevgeny Kabanov on classloaders: what they are, how they work nad some tips to solve common issues.

My notes:

  * the classloading is lazy: the resources are not loaded until they are mentioned
  * every classloader has a parent
  * every class has a classloader associated with it
  * every object has a class associated with it
  * classloading delegation: the parent is consulted before loading a class. if it has it, it will load it. If not, I will delegate it

There is also [this article][comments-on-classloaders] on the same video

Tags: jevgeny-kabanov, classloader, java, 

[really-get-classloaders]: http://zeroturnaround.com/rebellabs/rebel-labs-tutorial-do-you-really-get-classloaders/
[comments-on-classloaders]: http://www.javaworld.com/article/2074396/core-java/javaone-2011--do-you-really-get-classloaders-.html
## Truth table

I've read [the wikipedia article][truth-table-wiki] about the truth table and the 16 possible binary boolean operators:

  * Contradiction
  * NOR
  * Converse nonimplication
  * Negation (of p)
  * Material nonimplication
  * Negation (of q)
  * XOR (exclusive disjunction)
  * NAND
  * AND (conjunction)
  * XNOR (biconditional)
  * Projection (of p)
  * Implication
  * Projection (of q)
  * Converse implication
  * OR (disjunction)
  * Tautology

[truth-table-wiki]: https://en.wikipedia.org/wiki/Truth_table

## 7 lines of code, 3 minutes: Implement a programming language from scratch

I've read [this article][implemeting-language] by Matt Might about the benefits of implementing a language (from scratch but on top of another existing language used as framework). Chooses lambda calculus as the desired DSL

Tags: matt-might, lambda-calculus, racket, domain-specific-language

[implemeting-language]: http://matt.might.net/articles/implementing-a-programming-language/



## Turing completeness

I've read [this wikipedia article][turing-completeness] (both main and discussion) about this subject. 

It has sounded strange to me the reference to S-expressions:

> Data languages
The notion of Turing-completeness does not apply to languages such as XML, HTML, JSON, YAML and S-expressions because they are typically used to represent structured data, not describe computation [...]

If data (S-expression) is represented as the same format as code (e.g., Lisp's S-expression) and the latter is used to represent a computation, shouldn't be "data languages that also are used as computation languages" excluded from that list?

As a side note, Lisp is Turing Complete (see [Turing Complete#Examples][turing-complete-examples])

[turing-complete-examples]: https://en.wikipedia.org/wiki/Turing_completeness#Examples

[turing-completeness]: https://en.wikipedia.org/wiki/Turing_completeness

## The Prize Is Won; The Simplest Universal Turing Machine Is Proved

I've read [this article][simplest-universal-turing-machine] by Stephen Wolfram about the proof of a Turing Machine 2,3 being universal by Alex Smith.

Tags: stephen-wolfram, turing-machine, universal-turing-machine, proof, paper, alex-smith

[simplest-universal-turing-machine]: http://blog.wolfram.com/2007/10/24/the-prize-is-won-the-simplest-universal-turing-machine-is-proved/?year=2007&monthnum=10

## Making a successful commitment in each Sprint

I've read [this article][commitment-each-spring] by Nikolaos Raptis on committing to work in each sprint.

Tags: nikolaos-raptis, sprint, agile, commitment

[commitment-each-spring]: http://succeeding-with-agile.blogspot.com/2015/07/making-successful-commitment-in-each.html

## No increment operator (++) in Ruby?

I've read [this stackoverflow][increment-operator-ruby] question about the lack of post-increment operator (i++) in Ruby:

> ++ and -- are NOT reserved operator in Ruby.
>
> Mailing list from [Yukihiro Matsumoto aka matz](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/2710)

[increment-operator-ruby]: http://stackoverflow.com/questions/3717519/no-increment-operator-in-ruby

## Code is Data, Data is Code

I've read [this article][code-is-data-is-code-donelan] by James Donelan on the equivalence of code and data in homoiconic languages, including Clojure.

The article talks about homoiconicity, manually creating Abstract Syntax Trees (AST) out of data and the macro environment. Also, compares the difference between macros and functions.

Tags: code=data, data=code, james-donelan, clojure, homoiconicity, abstract-syntax-tree, ast, macro, function

[code-is-data-is-code-donelan]: http://blogs.mulesoft.com/dev/news-dev/code-is-data-data-is-code/

## Agile in Practice: Test Driven Development

I've watched [this video][agile-practice-tdd] introducing TDD by the Agile Academy. Explains its motivations and the basic cyclical fashion.

Tags: agile-academy, video, tdd, introduction

[agile-practice-tdd]: https://www.youtube.com/watch?v=uGaNkTahrIw

## Agile in Practice: Pair Programming

I've watched [this video][agile-practice-pair-programming] by Agile Academy on practicing pair programming. Explains the destination and how to get there.

Tags: agile-academy, pair-programming, video, introduction

[agile-practice-pair-programming]: https://www.youtube.com/watch?v=ET3Q6zNK3Io

## A low cost approach to working on side projects

I've read [this article][low-cost-side-projects] by Gregory Brown on how to apply the MVP and Lean Startup principles to side projects (a.k.a. pet projects). Try to start with a brainstorming session of all the features you want your product to have, then prioritise, picking the most important ones.

Most projects' needs can be solved with a minimal version, in the form of a script that took half an hour to develop.

Tags: gregory-brown, mvp, lean-startup, script, proof-of-concept, priority, backlog, side-project, pet-project, low-cost, cost-reduction

[low-cost-side-projects]: https://practicingruby.com/articles/low-cost-approach-to-side-projects

## Extreme Programming

I've watched [this video][star-xp] by STAR Videos on the basic principles behind Extreme Programming and how to use it to improve software quality

Tags: star-videos, extreme-programming, xp, software-quality

[star-xp]: https://www.youtube.com/watch?v=kFM2Vcu-BRo

## Disruptor: High performance alternative to bounded queues for exchanging data between concurrent threads

I've read [this white paper][white-paper-disruptor] describing the disruptor framework: a way of exchanging data between concurrent threads.

It uses a ring buffer and other techniques to eliminate write contention, reduce read contention and produces good results. It was developed for a financial exchange environment but it's general purpose.

Tags: martin-thompson, dave-farley, michael-barker, patricia-gee, andrew-stewart, trisha-gee, disruptor, contention, framework, concurrency, parallelism, white-paper, comparison, arrayblockingqueue, concurrentlinkedqueue, doug-lea, benchmark, lmax, low-level-optimization, optimization

[white-paper-disruptor]: http://lmax-exchange.github.io/disruptor/files/Disruptor-1.0.pdf

## Dissecting the Disruptor: What's so special about a ring buffer?

I've read [this article][disruptor-ring-buffer] about the ring buffer data structure. A FIFO data structure where elements get overwritten to reduce pressure on the garbage collector. Every message gets sent to every consumer.

Tags: patricia-gee, trisha-gee, disruptor, ring-buffer, data-structure

[disruptor-ring-buffer]: http://mechanitis.blogspot.com.es/2011/06/dissecting-disruptor-whats-so-special.html

## The Dependency Inversion Principle

I've read [this paper][dip-original] about the Dependency Inversion Principle (DIP) written Robert C. Martin.

It explains the theory, philosophy behind it. Also, creates an example with a copy buffer and different output locations

Tags: robert-martin, dependency-inversion-principle, dip, example, comparison, object-oriented, principle, solid, design-principle

[dip-original]: http://www.objectmentor.com/resources/articles/dip.pdf

## DIP in the Wild

I've read [this article][dip-in-the-wild] about the Dependency Inversion Principle (DIP) written by Brett L. Schuchert.

It is explained non-canonical representations of this principle, how in other cases he has solved it and conclusions of using it day to day.

Tags: brett-l.-schuchert, dependency-inversion-principle, dip, example, object-oriented, solid, design-principle

[dip-in-the-wild]: http://martinfowler.com/articles/dipInTheWild.html

## The New New Product Development Game

I've read [this paper][new-new-product] about the holistic approach to product development, considered seminal for Scrum and other Agile methodologies. Written by Hirotaka Takeuchi and Ikujiro Nonaka

In it, they describe how teams are distributed, the responsibilities for each one, and the degrees of freedom.

Cites the six basic characteristics:

  * built-in instability
  * self-organizing project teams
  * overlapping development phases
  * multilearning
  * subtle control
  * organizational transfer of learning

Tags: hirotaka-takeuchi, ikujiro-nonaka, scrum, agile, product-development, management, 1986

[new-new-product]: https://hbr.org/1986/01/the-new-new-product-development-game

