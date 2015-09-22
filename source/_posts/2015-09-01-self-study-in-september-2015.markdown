---
layout: post
title: "Self-Study in September 2015"
date: 2015-09-01 15:25:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - september
  - 2015
  - read
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}

## The 30 second habit with a lifelong impact

I've read [this article][30-second-habit] list of patterns, by Robyn Scott, in which it is explained why to compress information in a few ideas, investing 30 seconds to condense the article.

Tags: 30-second, habit, robyn-scott

[30-second-habit]: https://blog.growth.supply/the-30-second-habit-with-a-lifelong-impact-2c3f948ead98

## The Strengths and Weaknesses of Extreme Programming

I've watched [this video][strength-weakness-of-xp] explaining the strengths and weaknesses of extreme programming. By William Matheson

Tags: extreme-programming, xp, william-matheson, video, strength, weakness

[strength-weakness-of-xp]: https://www.youtube.com/watch?v=LkhLZ7_KZ5w

## Poster de Extreme Programming

I've watched [this video][xp-intro-kleer] introducing eXtreme Programming. By Martín Salías

Tags: martin-salias, kleer, extreme-programming, xp

[xp-intro-kleer]: https://www.youtube.com/watch?v=4nN6Gh79Yg8

## Good Tech Lead, Bad Tech Lead

I've read [this comparison][good-bad-tech-lead] of good and bad traits in tech leads. By Jason Liszka.

Explains the differences between good and bad tech leads, even though many of these qualities are shared by plain team members

Tags: jason-liszka, tech-lead, comparison

[good-bad-tech-lead]: https://blog.growth.supply/good-tech-lead-bad-tech-lead-948b2b806d86

## Why Procrastinators Procrastinate

I've read [this article][why-procrastinators-procrastinate] by Tim Urban on procrastination: this article compares the procrastinator and the non-procrastinator brain with pictures, introducing the Rational part, the Instant Gratification Monkey and the Panic Monster. Shows some reasons why. 

There is more on part 2: [How to beat procrastination](http://waitbutwhy.com/2013/11/how-to-beat-procrastination.html)

Tags: tim-urban, procrastination, rational-part, instant-gratification-monkey, panic-monster, brain, comparison

[why-procrastinators-procrastinate]: http://waitbutwhy.com/2013/10/why-procrastinators-procrastinate.html

## Algebraic data type

I've read [this wikipedia page][Algebraic_data_type], that explains what this is, a few examples and the theory behind it.

Tags: wikipedia, data-type, algebraic-data-type

[Algebraic_data_type]: https://en.wikipedia.org/wiki/Algebraic_data_type

## Recursion

I've read [this wikipedia page][recursion_], that explains the recursion basic concepts, such as:

  * induction, coinduction
  * recursion, corecursion
  * implementation details in iterative vs recursive programs:
    * shortcutting recursion (i.e., arm-length's recursion)
    * wrapper function
    * tail-call optimization, related to tail-recursive functions
  * recursion and its relation to data structures
  * base case / recursive case and removing the need of the base one in corecursion or in non-strict languages
  * types of recursion:
    * direct, indirect, mutual
    * generative, structural

Tags: recursion, corecursion, induction, coinduction, tail-call-optimization, tail-recursion, direct-recursion, indirect-recursion, mutual-recursion, generative-recursion, structural-recursion, arm-length-recursion, iterative-function, recursive-function, base-case, recursive-case, wikipedia, data-structure

[recursion_]: https://en.wikipedia.org/wiki/Recursion_(computer_science)

## Anonymous function

I've read [this wikipedia page][anonymous_function], that describes what is a lambda expression or an anonymous function. How it can be used (e.g., currying, higher-order function, closures) and gives examples in many languages.

Cites its invention (Church, 1936, lambda-calculus) and its first implementation (Lisp, 1958)

Tags: alonzo-church, anonymous-function, lambda-expression, closure, lambda-calculus, lisp, currying, higher-order-function, wikipedia

[anonymous_function]: https://en.wikipedia.org/wiki/Anonymous_function

## Closure

I've read [this wikipedia page][closure-wiki], that explains the concept of closures and the usual confusion between closure and lambda. Also some applications.

Discusses closures as a way of deferring execution and implementing object-oriented (OO) systems

Tags: wikipedia, closure, object-orientation, lambda-expression

[closure-wiki]: https://en.wikipedia.org/wiki/Closure_(computer_programming)

## Zen Story: The Master Archer

I've read [this story][the-master-archer] by Charlie Ambler about perfectionism and deep study, exemplified by the general that retires to study archery and the child who draws targets around the arrows.

Tags: charlie-amber, master, student, zen, story

[the-master-archer]: http://www.thedailyzen.org/2015/06/23/zen-story-the-master-archer/

## Loosely Coupled

I've read [this article][loosely-coupled] by Ben Whaley about how to loosely couple services introducing a queue and the difference in patterns between push and pull communication.

Tags: ben-whaley, push, pull, coupling, loose-coupling, service, queue, aws

[loosely-coupled]: http://blog.bwhaley.com/loosely-coupled

## Being good at programming competitions correlates negatively with being good on the job

I've watched the small video and the discussion about programmers' talent at [this page][programmers-talent-around-contests]. By Peteris Krumins.

The original video explains that being good at a programming contest correlates negatively with skill at a programming job, even if the company hires them.

The discussion explains the analogy with height and the NBA and concludes that this parameter should be preponderated with less importance than others.

Tags: google, peter-norvig, nba, analogy, programming-contest, programming-skill, peteris-krumins

[programmers-talent-around-contests]: http://www.catonmat.net/blog/programming-competitions-work-performance/

## On Functors

I've read [this comparison][functor-comparison] by Peteris Krumins of what the functors are in different languages:

  * C++: function objects
  * Standard ML: generic implementation of interfaces. They allow to compose structures
  * Haskell: structure containing zero or more objects that can be converted to another structure containing the other objects. It's an homomorphism between two categories.
  * Prolog: built-in predicate for self-inspection and the atom at the start of the structure

Tags: peteris-krumins, comparison, haskell, c-plus-plus, standard-ml, prolog, functor

[functor-comparison]: http://www.catonmat.net/blog/on-functors/

## Recursive Regular Expressions

I've read [this article][recursive-regex] on recursive regular expressions by Peteris Krumins.

In it, he lightly describes how a regular expression relates to a [Context-Free Grammar][cfg-wiki] and the language support for Perl to include recursive regular expressions. Based on the examples (e.g., ``0^n1^n``), it really clicked to me that this could be expressed as a recursive function, with its base case and the recursive one. Also that it "depends on solutions to smaller instances of the same problem" ([wikipedia][recursion_])

Tags: peteris-krumins, regular-expression, recursion, recursive-regular-expression, perl, context-free-grammar, formal-language-theory

[recursive-regex]: http://www.catonmat.net/blog/recursive-regular-expressions/
[cfg-wiki]: https://en.wikipedia.org/wiki/Context-free_grammar

## In Functional Programming, what is a functor?

I've read [this answer][so-functor], by Norman Ramsey, on what is a functor. 

He explains in simple words what the concept is and how a type can belong to the class functor. Examples in haskell.

Tags: norman-ramsey, functor, stack-overflow, haskell, type-class, class, map, fmap

[so-functor]: http://stackoverflow.com/questions/2030863/in-functional-programming-what-is-a-functor/2031421#2031421

## Functors

I've read [this article][functors] by Jim Duey explaining functors in Clojure. He introduces a couple of notes of Haskell but all of the examples are in Clojure. Explains functors, a subset of it called applicatives, and the two libraries he has created.

Tags: jim-duey, functor, clojure, haskell

[functors]: http://www.clojure.net/2013/01/19/Functors/

## 10 Tips for Proper Application Logging

I've read [this article][proper-application-logging] by Tomasz Nurkiewicz about tips on logging:

  * reduce side effects
  * use categories and levels
  * connection with external systems
  * handling exceptions
  * automatically / manually reading logging files

Tags: tomasz-nurkiewicz, logging, sl4j, log4j, tip

[proper-application-logging]: http://www.javacodegeeks.com/2011/01/10-tips-proper-application-logging.html

## What is "duck typing"?

I've read [this article][what-is-duck-typing] by Eric Lippert about duck typing

Tags: duck-typing, eric-lippert, type-system, c-sharp

[what-is-duck-typing]: http://ericlippert.com/2014/01/02/what-is-duck-typing/
## Yagni

I've reread [this article][yagni-fowler] by Martin Fowler on the cost of developing features that are not needed

Tags: martin-fowler, yagni, article, misunderstanding

[yagni-fowler]: http://martinfowler.com/bliki/Yagni.html

## Learn Haskell

I've seen [this video][medlock-learn-haskell] by Jordan Medlock on learning haskell, explaining the basics and how to use the REPL

Tags: haskell, repl, jordan-medlock, beginner, video

[medlock-learn-haskell]: https://www.youtube.com/watch?v=JJlI5FPTbgE

## Learn Haskell

I've seen [this video][medlock-learn-haskell] by Jordan Medlock on learning haskell, explaining the basics and how to use the REPL

Tags: haskell, repl, jordan-medlock, beginner, video

[medlock-learn-haskell]: https://www.youtube.com/watch?v=JJlI5FPTbgE

## TMUX - The Terminal Multiplexer

I've read these two parts: ([one][tmux-part-1], [two][tmux-part-2]) of an introduction guide to ``tmux`` (the unix terminal multiplexer) by Cody from Hawk Host.

In it, he explains the basics of tmux and the main differences with ``screen``

Tags: cody, hawk-host, tmux, how-to

[tmux-part-1]: http://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/
[tmux-part-2]: http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2

## Thermodynamics and Garbage Collection

I've read [this paper][thermogc] by Henry G. Baker that explains the analogy of the garbage collection ("a freezer") and thermodynamics, where the state mutator (th program, also an oven) modifies the garbage heap and introduces / extracts entropy into the system.

Comparison between entropy and lack of information, using the theories from Shannon, Maxwell-Boltzmann. There's a reference to the knapsack problem and to simulated annealing. 

There's also a gentle introduction to thermodynamics in layman terms: heat, temperature, microstates, macrostates, reversability, etc.

In this paper it is also reflected (in macro vs micro states) that the sum all parts is simpler than the single ones (i.e., Information Hiding)

Tags: henry-baker, thermodynamics, microstate, macrostate, analogy, simulated-annealing, garbage-collection, shannon, information, maxwell-boltzmann, freezer, oven, entropy

[thermogc]: http://www.pipeline.com/~hbaker1/ThermoGC.html

## How we ended up with microservices

I've read [this article][end-up-with-microservices], by Phil Calçado, where he talks about his stay at SoundCloud:

  * the value stream map: from X days to Y
  * reorganizing teams into service teams
  * conway's law and teams being responsible for support. Also, being given full authority

  Tags: phil-calcado, soundcloud, microservice, team-split, value-stream-mapping, conversion, reorganization

[end-up-with-microservices]: http://philcalcado.com/2015/09/08/how_we_ended_up_with_microservices.html

## Lisp is still a secret weapon

I've read [this article][lisp-still-secret-weapon] by Judd Keppel where he explains it is a good idea that Clojure / ClojureScript continues to be a secret, not known among developers. Cites the article 'Beating the averages' by Paul Graham and the amount of available packages in npm, maven central, etc

Tags: paul-graham, judd-keppel, clojure, clojurescript, weapon, developer

[lisp-still-secret-weapon]: http://kep.io/is-lisp-still-a-secret-weapon/

## Perceptron

I've read [this wikipedia][perceptron-wiki] article that explains the single-layer and multi-layer perceptron. First designed to be a machine (hardware), but later an algorithm for supervised machine learning. Worked by Minsky & Papert and invented by Frank Rosenblatt in 1958.

Tags: peceptron, artificial-intelligence, machine-learning, frank-rosenblatt, 1958, mavin-minsky, seymour-papert

[perceptron-wiki]: https://en.wikipedia.org/wiki/Perceptron


## Is C# a strongly typed or a weakly typed language?

I've read [this article][c-sharp-strongly-or-weakly-typed], in the form of a dialogue between Eric Lippert and himself about the C# language and its type system.

Tags: type-system, c-sharp, eric-lippert, dialogue, strongly-typed, weakly-typed, language

[c-sharp-strongly-or-weakly-typed]: http://ericlippert.com/2012/10/15/is-c-a-strongly-typed-or-a-weakly-typed-language/

