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

## No increment operator (++) in Ruby?

I've read [this stackoverflow][increment-operator-ruby] question about the lack of post-increment operator (i++) in Ruby:

> ++ and -- are NOT reserved operator in Ruby.
>
> Mailing list from [Yukihiro Matsumoto aka matz](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/2710)

[increment-operator-ruby]: http://stackoverflow.com/questions/3717519/no-increment-operator-in-ruby

