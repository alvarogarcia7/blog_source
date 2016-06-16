---
categories:
- chapter
- poodr
- sandi-metz
- ruby
- dependency
- object
- quote
comments: true
date: 2015-08-08T14:11:29Z
title: Recognizing dependencies
url: /2015/08/08/recognizing-dependencies/
---

From the Chapter 3, Managing Dependencies, from the book Practical Object-Oriented Design in Ruby, by Sandi Metz:

> An object has a dependency when it knows:
>
> * The name of another class. [...]
> * The name of a message that it intends to send to someone other than self. [...]
> * The arguments that a message requires. [...]
> * The order of those arguments. [...]

If an object knows any of these facts about another object, it has dependencies to the other.

This is not to say that having dependencies to others is bad, as 

> A single object cannot know everything, so inevitably it will have to talk to another object.
> Chapter 3, Managing Dependencies, Introduction

For this latter purpose, there is the section "Writing loosely coupled code"