---
layout: post
title: "Talk: Simplicity matters"
date: 2015-04-18 14:44:06 +0200
comments: true
categories: 
  - clojure
  - rich-hickey
  - talk
  - keynote
  - rails-conf
---


I've seen this video by [Rich Hickey][rich-hickey-twitter]: "[Simplicity matters][simplicity-matters-video]", taken from [Manuel Rivero][trikitrok]'s google plus' [site][via-this]

here are my notes:

  * the software is the elephant
  * do more, do it differently, do it better
  * complexity of the elephant is going to dominate what you can do
  * your ability to reason about your program is critical 
  * design is about pulling things apart
  * become familiar by learning, trying
  * "We can be creating the exact same programs out of significantly simpler components". Rich Hickey


Complexity vs simplicity:

|Complexity 	| Simplicity|
|---------------|----------|
|state, objects	| values|
|methods | functions, namespaces|
|variables | managed refs|
|inheritance, switch, matching  | polymorphism à la carte|
|syntax | data|
|imperative loops, fold | set functions|
|actors | queues|
|ORM | declarative data manipulation|
|conditionals | rules|
|inconsistency | consistency |

  * he does not agree on "simplicity" on the agile manifesto
  * simplicity is not about you. simplicity is a lot of hard work
    * clicked with paul graham's [LISP startup][article-beating-the-average]
  * simplicity is not an objective

Order is all over the place:


|Complex  | Simple|
|----------|-------|
|positional arguments | named arguments or map|
|syntax | data|
|product types  | associate records|
|imperative programs | declarative programs|
|prolog | datalog|
|call chains | queues|
|XML | JSON, Clojure literals|


[rich-hickey-twitter]: http://twitter.com/@richhickey
[simplicity-matters-video]: https://www.youtube.com/watch?v=rI8tNMsozo0
[via-this]: https://plus.google.com/u/0/117817370205182982732/posts/W6Gd9v67BgS?cfem=1
[trikitrok]: http://twitter.com/@trikitrok
[article-beating-the-average]: http://www.paulgraham.com/avg.html