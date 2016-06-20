---
categories:
- kata
- TDD
- java
- RPN
- reverse-polish-notation
- calculator
- using-notes
comments: true
date: 2015-01-12T03:56:58Z
title: 'Kata: Reverse Polish Notation in java'
url: /blog/2015/01/12/kata-reverse-polish-notation-in-java/
---

I've written a [RPN](http://en.wikipedia.org/wiki/Reverse_Polish_notation) string calculator in java, using TDD with these: mockito, hamcrest, junit

It's close to the [String Calculator kata](http://osherove.com/tdd-kata-1/), by [Roy Osherove][osherove]. This RPN is using mocks (so more difficult than the String calculator)

I've tried to practice ["Your tests are dragging you down"](http://us2.campaign-archive1.com/?u=80ca60ec48ef77dfaa1f38943&id=42f9a0b66f&e=6ca6702beb) by [J.B Rainsberger][rainsberger] (mainly, to use something to write on). This behavior is also explained in the book [Dirigido por tests](http://www.carlosble.com/libro-tdd/) (Spanish) by [Carlos Blé][carlosble].

My solution is [here](https://github.com/alvarogarcia7/kata-rpn-calculator-java). Every step (red, green, refactor) has been saved. 


[carlosble]: https://twitter.com/carlosble
[rainsberger]: https://twitter.com/jbrains
[osherove]: https://twitter.com/RoyOsherove