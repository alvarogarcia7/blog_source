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
  - oopsla
  - scrum
  - 2004
  - jmock
  - goos
  - nat-pryce
  - steve-freeman
  - kata
  - dojo
  - dto
  - domain-object
  - coding-dojo
  - stuart-halloway
  - haskell
  - lisp
  - learning
  - tiago-garcia
  - jeremy-jarrell
  - gregory-moeck
  - saron-yitbarek
  - greg-wilson
  - ron-jeffries
  - carlos-ble
  - jeff-atwood
  - slava-akhmechet
  - go
  - david-pollak
  - michael-bernstein
  - hornbeck
  - technologist
  - well-rounded
  - papers
  - lisp-1
  - lisp-2
  - tedx
  - tedx-brussels
  - aza-raskin
  - data-bank
  - science-corp
  - philippe-creux
  - preparatory-refactoring
  - refactoring
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
[goos-category]: /{{site.category_dir}}/goos

## Technical Debt: A Repayment Plan

I've read [this article][tech-debt-repayment] by [Jeremy Jarrell][jeremy-jarrell] on technical debt how to repay it: schedule, taxes, default, etc

This has made me think of the ["Deuda técnica, origen y consecuencias" talk][deuda-tecnica-javier-gomez] (Technical debt: origin and consequences) (Spanish), that was delivered by [Javier Gómez][jgomezz] at the Software Craftsmanship 2014.

[tech-debt-repayment]: http://www.infoq.com/articles/tech-debt-repayment
[jeremy-jarrell]: https://twitter.com/@jeremyjarrell
[deuda-tecnica-javier-gomez]: http://scbcn.ideascale.com/a/dtd/Deuda-t%C3%A9cnica-origen-y-consecuencias/69782-25568
[jgomezz]: https://twitter.com/@jgomezz

## Revisiting XP: be a thoughtful programmer by exercising more collective ownership

I've read [this article][revisiting-xp-collective-ownership] by [Tiago Garcia][tiago-garcia] on the collective code ownership, as stated by Xtreme Programming (XP), with some example and guidelines.

[revisiting-xp-collective-ownership]: http://www.infoq.com/articles/revisit-p-collective
[tiago-garcia]: https://twitter.com/tiagooo_romero

## Where's the Real Bottleneck in Scientific Computing?

I've read [this article][real-bottleneck] by Greg Wilson on the tools and procedures investigators use to produce software.

[real-bottleneck]: http://www.americanscientist.org/issues/pub/wheres-the-real-bottleneck-in-scientific-computing/99999

## Testing inside the Sprint

I've read [this article][testing-inside-sprints] by Ron Jeffries.

Discusses the need for testing and why this hasn't been communicated enough, as there still are people who have not understood it.

Also about why people equal something failing when using scrum with scrum failing.

[testing-inside-sprints]: http://ronjeffries.com/articles/2015-03-01-testing-in-sprints/

## DTO vs Domain Models

I've read [this article][dto-vs-domain-models] by Carlos Blé

[dto-vs-domain-models]: http://www.carlosble.com/2015/05/dto-vs-domain-models/

## Homoiconicity isn’t the point

I've read [this article][homoicononicity-is-not-the-point] by David Herman about homoiconicity, comparing Lisp dialects (have it) to others that don't. The main point is at the end, where it says:

> [...] homoiconicity isn’t the point, read is

[homoicononicity-is-not-the-point]: http://calculist.org/blog/2012/04/17/homoiconicity-isnt-the-point/

## So You Don't Want to be a Programmer After All

I've read [this article][programmer-after-all] by Jeff Atwood. Cites the golden handcuffs (also known as golden shackles), reasons to be and not to be a programmer, and how to be an average and outstanding programmer

[programmer-after-all]: http://blog.codinghorror.com/so-you-dont-want-to-be-a-programmer-after-all/

## The Nature of Lisp

I've read [this article / introduction][the-nature-of-lisp] to Lisp by Slava Akhmechet

[the-nature-of-lisp]: http://www.defmacro.org/ramblings/lisp.html

## [David Pollak's] My Thoughts on Go

I've read [these comments][thoughts-go-lang] on Go Lang from David Pollak

[thoughts-go-lang]: http://blog.goodstuff.im/golang

## The Well-Rounded Technologist

I've read [this article][well-rounded-technologist] by Michael Bernstein

[well-rounded-technologist]: http://michaelrbernste.in/2014/04/02/the-well-rounded-technologist.html

## Should I read papers?

I've read [this article][should-i-read-papers] by Michael Bernstein

[should-i-read-papers]: http://michaelrbernste.in/2014/10/21/should-i-read-papers.html

## Lisp-1 vs Lisp-2

I've read [this article][lisp-1-lisp-2] by [@Hornbeck](https://twitter.com/hornbeck) about the lisp 1 and lisp 2.

[lisp-1-lisp-2]: https://hornbeck.wordpress.com/2009/07/05/lisp-1-vs-lisp-2/

## Science Corps

I've watched this [TEDx talk][tedx-science-corps] by Aza Raskin, featuring Data Banks and Science corps

[tedx-science-corps]: https://www.youtube.com/watch?v=dkQkafxFoIQ

## Healthy Codebase and Preparatory Refactoring

 I've read [this article][preparatory-refactoring] by Philippe Creux about preparatory refactoring

[preparatory-refactoring]: http://brewhouse.io/blog/2014/11/10/healthy-codebase-and-preparatory-refactoring.html

## You Are Learning Haskell Right Now (Or Anything You Want Really)

I've read [this article][you-are-learning-haskell-right-now] by Michael Bernstein

[you-are-learning-haskell-right-now]: http://michaelrbernste.in/2014/12/11/you-are-learning-haskell-right-now.html

## Lisp is Abstract Syntax

I've read [this article][lisp-is-abstract-syntax] by Michael Bernstein

[lisp-is-abstract-syntax]: http://michaelrbernste.in/2014/04/16/lisp-is-abstract-syntax.html

## Two Things Types Have Taught Me

I've read [this article][two-things-that-types-have-taught-me] by Michael Bernstein

[two-things-that-types-have-taught-me]: http://michaelrbernste.in/2014/10/30/two-things-types-have-taught-me.html

## Don't Bet Against Yourself

I've read [this article][dont-bet-against-yourself] by Michael Bernstein

[dont-bet-against-yourself]: http://michaelrbernste.in/2015/04/15/dont-bet-against-yourself.html