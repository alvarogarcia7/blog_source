---
layout: post
title: "Talk: 'Is TDD Dead? Of course not! But what´s all the fuzz about then?' by Emily Bache"
date: 2015-01-06 15:47:47 +0100
comments: true
categories: 
  - TDD
  - talk
  - video
  - emily-bache
  - dhh
  - notes
  - design
external-url: 
---

I've just seen this talk: [Is TDD dead? Of course not! But what´s all the fuzz about then?](https://www.youtube.com/watch?v=PCEHRFHKZSk) by [Emily Bache](https://twitter.com/emilybache)

My notes:

* deliberate vs accidental learning (around minute 19)
* do not be an evangelist for tdd but rather "come learn tdd, come at a dojo with us!"

* points to [Dan North](https://twitter.com/tastapod)'s [talk](www.youtube.com/watch?v=SPj-23z-hQA) (at the same foo café)
* points to her book - [The Coding Dojo Handbook](https://leanpub.com/codingdojohandbook)
* points to [cyber dojo](http://cyber-dojo.org/)


* design is hard whether you do TDD or not
* [dhh](https://twitter.com/dhh): too much focus on unit test. 

> I thought we got rid of best practices in agile

* different kinds of advice for each kind of target (eg, based on experience level)
* points to self-testing code (by [Martin Fowler](https://twitter.com/martinfowler))
* problem: the test suite is no longer in sync with the production code
* points to approval testing: 
	* code kata "minesweeper"
	* test data + code produces output data
	* I approve the data
	* Useful for full features
	* Useful for asserting on difficult parts like images
	* realistic users to generate tests
	* tool to manage these "approval tests". Easy way of managing tests cases
	* [TextTest](http://texttest.org) is one of these tools

Her conclusions:

* Watch out the fundamentalism
* TDD might take you to too many layers of indirection
* The share of each test (end to end, integration, unit) depends on each project / part
* Many TDD pieces of advice is directed to novices. When you're not, you should know when to stop listening

PS: I've first seen this video in [garajeando](http://garajeando.blogspot.com/2015/01/interesting-talk-is-tdd-dead-of-course.html)