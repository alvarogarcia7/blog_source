---
layout: post
title: "Video: Nothing is something"
date: 2015-05-04 07:43:14 +0200
comments: true
categories: 
  - talk
  - video
  - sandy-metz
  - bathruby
  - 2015
  - composition-vs-inheritance
  - ruby
---

I have seen this video: [Nothing is something][video] by [Sandi Metz][sandimetz], as I saw it recommended [here][recommendation]

In the video, she talks programming in this fashion: (it is a stack, not an unordered list)

  * Abstraction seeking
  * Message centric
  * Condition Averse
  * Smalltalk Infected

> Not here to change the language but change you

This is a pattern I've also heard from [Alvaro Videla][old_sound], where he said that other, more powerful languages can change your mind and bring some of those concepts to your own language. He was talking about Haskell, she, about Smalltalk.

She shows how to smell the ``null object pattern`` (that she independently discovered herself too - can be improved studying the classics[^1]), also called ``active nothing``. Decorates the ``Animal`` with a wrapper, to call it ``GuaranteedAnimal``

Later on, shows how to code an example on a 'tail', extending behaviour with inheritance and how to get rid of it: prefer composition versus inheritance. The importance of roles.

> Inheritance is for specialization, not for sharing code

Steps to convert inheritance into composition:

  1. Isolate the difference
  1. Name the concept
  1. Define the role
  1. Inject the players

This is a trick I discovered here: when you don't know what name put here, create a spreadsheet and ask yourself what name the row should have. There is an example [at this minute][video-showing-the-spreadsheet]

[^1]: a reference to a pattern by the same name at [Apprenticeship Patterns](http://www.amazon.com/Apprenticeship-Patterns-Guidance-Aspiring-Craftsman/dp/0596518382)
[old_sound]: https://twitter.com/@old_sound
[sandimetz]: https://twitter.com/@sandimetz
[video]: https://www.youtube.com/watch?feature=player_detailpage&v=9lv2lBq6x4A
[recommendation]: http://garajeando.blogspot.com.es/2015/04/interesting-talk-nothing-is-something.html
[video-showing-the-spreadsheet]: https://www.youtube.com/watch?feature=player_detailpage&v=9lv2lBq6x4A#t=1959
