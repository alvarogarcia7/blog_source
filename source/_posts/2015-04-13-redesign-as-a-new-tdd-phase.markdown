---
layout: post
title: "Redesign as a new TDD phase"
date: 2015-04-13 22:00:45 +0200
comments: true
categories: 
  - redesign
  - tdd
  - theory
---


In the last TDD workshop (experience report [here](../../../../2015/04/12/jason-gorman-tdd-intensive-workshop)), a conversation with [Gary McLean Hall][gary] introduced to me this new concept of "Redesign" as a TDD phase.

## Concept

As Gary introduced it to me[^1], it is a phase that might appear after refactor.

It is about changing the outside design without changing the expected behavior. I thought this was also included in the refactor phase.

## How I do redesign

I usually do this "changing of the outside design" by applying a series of refactors [^2] to the production code but not changing the test code; using a bridge / adapter to get to the new API from the old one. Later you can inline the scaffold and use the new API directly.

The same for the test code: when you want to change design in the test code, do not modify production code (a.k.a. model code).

## Other thoughts

Merriam-Webster defines "[redesign][dictionary]" as

> to change the design of (something)

or

> to revise in appearance, function, or content

an example: 

> The book's cover has been redesigned for the new edition.

The Refactoring book (by Martin Fowler) describes "refactoring" as

> Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves its internal structure

Taken literally, the public API is not internal but external structure, so changing it, should belong to a phase that is not refactor (see definition), nor red (no failing tests), not green (making it pass). Maybe this phase is "redesign" or we have to take the refactoring phase less literally so it includes redesign. Any thoughts?

## Other references

I've searched for redesign and refactor and [this blog post][refactoring-not-redesign] came up. They cite redesign as a way of rewriting

[This answer](http://stackoverflow.com/a/80758/1181094) and the [original question](http://stackoverflow.com/a/80758/1181094) in StackOverflow is interesting

Redesign also appears cited in [this blog post](http://blog.testdouble.com/posts/2014-01-25-the-failures-of-intro-to-tdd.html)


[gary]: http://twitter.com/@garymcleanhall
[refactoring-not-redesign]: https://practicingruby.com/articles/refactoring-is-not-redesign
[dictionary]: http://www.merriam-webster.com/dictionary/redesign

[^1]: Excuse me if you explained it differently and I understand it wrong; you can always open a pull request to fix it [here](https://github.com/alvarogarcia7/blog_source/tree/source/source/_posts)

[^2]: thanks for the clarifying refactor vs refactoring [here](http://blog.4mm.co.uk/2012/12/11/pet-peeve-726.html)