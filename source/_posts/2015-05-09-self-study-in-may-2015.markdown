---
layout: post
title: "Self-study in May 2015"
date: 2015-05-09 16:41:10 +0200
comments: true
categories: 
  - 2010
  - article
  - passion
  - craftsmanship
  - bootcamp
  - talk
  - video
  - slides
  - video
  - oscon
  - values
  - language
  - luke-sneeringer
  - rob-pike
  - ken-auer
  - buffer
  - self-study-aggregation
  - functional-programming
  - guide
---

Update: I've grouped all small posts related to the self-study from May 2015
into a single post


## Programmer passion considered harmful

I've read [this article][article-passion] on why programmer passion could be negative. The title is similar to a paper by Dijkstra. 


[article-passion]: https://medium.com/on-coding/programmer-passion-considered-harmful-5c5d4e3a9b28


## Software Craftsmanship: Are Bootcamps Enough?

I've read [this article][article-craft] on software craftsmanship, development bootcamps and passion by [Ken Auer][author]


[article-craft]: https://www.coursereport.com/blog/software-craftsmanship-are-bootcamps-enough
[author]: https://twitter.com/kauerrolemodel


## Improve your development environments with virtualization

I have seen this video: [Improve your development environments with virtualization][video-environments-virtualization] by Luke Sneeringer.

My notes:

  * development should be exactly like production.
  * except where it is too painful. there it should be different

[video-environments-virtualization]: https://www.youtube.com/watch?v=Dg_vPMnC7_k&feature=youtu.be

## Buffer's take on values

I have found these [values][values-buffer], written by Buffer, very interesting.

[values-buffer]: http://www.slideshare.net/Bufferapp/buffer-culture-04

## Public static void

I've watched this video: ["Public, static void"][video-pbs] by Rob Pike. The slides can be found [here][slides-pbs]

### My notes

* too much bureaucracy
* fighting the compiler
* dynamic vs static typing
* language too verbose 
* do not mix the two of them

* a language niche:

  * comprehensible
  * statically typed
  * light on the page
  * fast to work in
  * scales well
  * doesn't require tools but supports them well
  * good at networking and multiprocessing
  
  (minute 10:09)​

* [Go][golang] was born to fill this niche

[video-pbs]: https://www.youtube.com/watch?v=5kj5ApnhPAE
[slides-pbs]: http://www.oscon.com/oscon2010/public/schedule/detail/13423
[golang]: http://golang.org

## Nothing is something

This video has been extracted to a [post][nothing-is-something] of its own.

[nothing-is-something]: ../../../../2015/05/04/video-nothing-is-something/

## Software is eating the world

This video has been extracted to a [post][eating-the-world] of its own.

[eating-the-world]: ../../../../2015/05/10/talk-software-is-eating-the-world/

## The Cost of Test Driven Development

I've read [this article](http://blog.typemock.com/2009/03/the-cost-of-test-driven-development.html), on the cost of doing TDD, which refers to [this paper][nagappan-tdd]: Realizing quality improvement through test driven development: results and experiences of four industrial teams (below)

[nagappan-tdd]: http://www.msr-waypoint.net/en-us/groups/ese/nagappan_tdd.pdf

## Realizing quality improvement through test driven development: results and experiences of four industrial teams

This paper has been extracted to a [post][tdd-in-industrial-teams] of its own.

[tdd-in-industrial-teams]: ../../../../2015/05/12/paper-tdd-in-industrial-teams/

## Learn You Some Lisp for Great Good

I've watched the video [Learn You Some Lisp for Great Good](https://www.youtube.com/watch?v=3T00X_sNg4Q), by Howard Abrams.

I guess this is a reference to the popular [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/).

He suggests many interesting resources for learning Lisp dialects. The live coding is in Clojure:

  * [The land of Lisp](http://landoflisp.com/)
  * [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sicp/). See also [SICPQuotes](https://twitter.com/SICPQuotes)
  * [The Little Schemer](http://mitpress.mit.edu/books/little-schemer)
  * [An Introduction to Programming in Emacs Lisp](https://www.gnu.org/software/emacs/manual/pdf/eintr.pdf)
  * [4clojure Questions](https://www.4clojure.com/)
  * [Clojure Koans](http://clojurekoans.com/)
  
On another topic, in the [Bank accounts exercise from Exercism](http://www.meetup.com/ClojureBCN/events/222418104/) meetup, we discussed the book [Programming Clojure (2nd edition)](https://pragprog.com/book/shcloj2/programming-clojure) by Stuart Halloway

## Professor Frisby's Mostly Adequate Guide to Functional Programming

I've read [this guide][mostly-adequate-guide] to functional programming. It is still work in progress (WIP) but still interesting. Written in javascript, so you can REPL in the browser.

[mostly-adequate-guide]: https://github.com/DrBoolean/mostly-adequate-guide

## Learning Code Good

I've watched this video, by Saron Yitbarek: [Learn Code Good][learning-code-good].

[learning-code-good]: https://www.youtube.com/watch?v=-nsnAYRqYLA

## Why You Don't Get Mock Objects

I've watched [Why You Don't Get Mock Objects][why-you-dont-get-mock-objects], by Gregory Moeck.

In it, they point to the [Growing Object-Oriented Software Guided by Tests][goos-book] book ([category here][goos-category]), the paper [Mock Roles, not Objects][mock-roles-not-objects] (also present in the GOOS book).

[why-you-dont-get-mock-objects]: https://www.youtube.com/watch?v=R9FOchgTtLM
[goos-book]: http://www.growing-object-oriented-software.com/
[mock-roles-not-objects]: www.jmock.org/oopsla2004.pdf
