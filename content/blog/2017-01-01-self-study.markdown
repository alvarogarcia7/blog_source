---
categories:
- self-study-aggregation
- january 
- 2017
- read
- additive-monad
- advice
- alvaro-videla
- amplifier
- authority
- benjamin-hardy
- bind
- c-sharp
- code-complete
- coding-horror
- comonad
- compound-interest
- continous-improvement
- dan-piponi
- data-structure
- dennis-forbes
- discipline
- eric-elliott
- eric-lippert
- essay
- functional-programming
- gerald-weinberg
- haskell
- hume-logan
- hunter-thompson
- interview
- interviewing
- isomorphic
- james-coglan
- javascript
- jeff-atwood
- kaizen
- leadership
- leading-by-example
- life
- lift
- linrec
- long-term-plans
- monad
- monad-explanation
- motivation
- multirec
- nasa
- personal-improvement
- planning
- politics
- psychology
- quadtree
- recruitement
- recursive-data-structure
- reginald-braithwaite
- shiny
- stephen-toub
- tailrec
- team-lead
- test
- thomas-oppong
- tree
- unit
- unit-test
comments: true
date: 2017-01-01T11:32:19Z
title: Self-Study in January 2017 
---
## Translation from Haskell to JavaScript of selected portions of the best introduction to monads I’ve ever read

I've read [this article][js-monads-tutorial] by James Coglan, introducing monads.

About composability:

> The symmetry of the argument and return types is what makes these functions composable

or

> symmetric input and output types

Guide to basic monadic functions:

> lift, which converts a 'simple’ function into a debuggable function
> bind, which converts a debuggable function into a composable form
> unit, which converts a simple value into the format required for debugging, by placing it in a container

The basic definition:

> So what is a monad? Well, it’s a design pattern. It says that whenever you have a class of functions that accept one type of thing and return another type of thing, there are two functions that can be applied across this class to make them composable:
> 
> There is a `bind` function that transforms any function so that accepts the same type as it returns, making it composable
> There is a `unit` function that wraps a value in the type accepted by the composable functions.

Also:

> [I]t’s a very useful design pattern to be aware of because it helps you spot accidental complexity: code that isn’t dealing directly with the problem at hand, but which is dealing with glueing data types together

Tags: monad, monad-explanation, haskell, javascript, james-coglan, bind, unit, lift

[js-monads-tutorial]: https://blog.jcoglan.com/2011/03/05/translation-from-haskell-to-javascript-of-selected-portions-of-the-best-introduction-to-monads-ive-ever-read/


## You Could Have Invented Monads! (And Maybe You Already Have.)

I've read [this tutorial][haskell-monad-tutorial] by Dan Piponi, in which he slowly introduces monads, using examples from everyday life.

Tags: dan-piponi, monad, monad-explanation, haskell

[haskell-monad-tutorial]: http://blog.sigfpe.com/2006/08/you-could-have-invented-monads-and.html


## Monads, part one

I've read [this article][monad-1-lippert] by Eric Lippert, in which he describes monads as a design pattern that "can sneak up on you"

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-1-lippert]: https://ericlippert.com/2013/02/21/monads-part-one/

## Monads, part two

I've read [this article][monad-2-lippert] by Eric Lippert, in which he describes monad examples in the C# code. Also describes what an 'amplifier' is. I relate it to composing behavior.

> An "amplifier" is something that increases the representational power of their "underlying" type.

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming, amplifier

[monad-2-lippert]: https://ericlippert.com/2013/02/25/monads-part-two/ 

## Monads, part three

I've read [this article][monad-3-lippert] by Eric Lippert, in which he describes how to wrap a value in a monadic wrapper (`unit`) 

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-3-lippert]: https://ericlippert.com/2013/02/28/monads-part-three/ 

## Monads, part four

I've read [this article][monad-4-lippert] by Eric Lippert, in which he explains the second function (`bind`) 

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-4-lippert]: https://ericlippert.com/2013/03/04/monads-part-four/ 

## Monads, part five

I've read [this article][monad-5-lippert] by Eric Lippert, in which he explains the three laws, which are later compressed into two (`unit` and `bind`)

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-5-lippert]: https://ericlippert.com/2013/03/07/monads-part-five/

## Monads, part six

I've read [this article][monad-6-lippert] by Eric Lippert, in which he explains the logical identity of applying the function inside a monad and outside a monad.

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-6-lippert]: https://ericlippert.com/2013/03/11/monads-part-six/

## Monads, part seven

I've read [this article][monad-7-lippert] by Eric Lippert, in which he states the three laws of monads:

> * Applying the construction function to a given instance of the monad produces a logically identical instance of the monad.
> * Applying a function to the result of the construction function on a value, and applying that function to the value directly, produces two logically identical instances of the monad.
> * Applying to a value a first function followed by applying to the result a second function, and applying to the original value a third function that is the composition of the first and second functions, produces two logically identical instances of the monad.

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-7-lippert]: https://ericlippert.com/2013/03/14/monads-part-seven/

## Monads, part eight

I've read [this article][monad-8-lippert] by Eric Lippert, in which he describes the monad terms he was using other, more common names (`unit` and `bind`).

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-8-lippert]: https://ericlippert.com/2013/03/18/monads-part-eight/ 

## Monads, part nine

I've read [this article][monad-9-lippert] by Eric Lippert, in which he creates a `Tainted` monad, which is basically a `Nullable` or `Maybe` monad

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-9-lippert]: https://ericlippert.com/2013/03/21/monads-part-nine/

## Monads, part ten

I've read [this article][monad-10-lippert] by Eric Lippert, in which he describes `Where` (as the query syntax form) using the `bind` signature

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-10-lippert]: https://ericlippert.com/2013/03/25/monads-part-ten/

## Monads, part eleven

I've read [this article][monad-11-lippert] by Eric Lippert, in which he describes the "additive monad":

> * There is a zero value of every construction of the monadic type.
> * There is a way to add two monads with the same underlying type together.
> * The zero value is the identity of the add operation.
> * Using bind to apply any function to the zero produces the zero.
> * Using bind to apply the function a=\>zero to any M<A> produces the zero.

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming, additive-monad

[monad-11-lippert]: https://ericlippert.com/2013/03/28/monads-part-eleven/

## Monads, part twelve

I've read [this article][monad-12-lippert] by Eric Lippert, in which he explains how the `SelectMany` could be implemented (but it is not implemented in practice)

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming

[monad-12-lippert]: https://ericlippert.com/2013/04/02/monads-part-twelve/

## Monads, part thirteen

I've read [this article][monad-13-lippert] by Eric Lippert, in which he suggests reading a similar article on the Task comonad

Tags: eric-lippert, monad, monad-explanation, c-sharp, functional-programming, comonad

[monad-13-lippert]: https://ericlippert.com/2013/04/03/monads-part-thirteen/

## Tasks, Monads, and LINQ

I've read [this article][task-comonad] by Stephen Toub in which he explains the comonad `Task`.

A comonad:

>  [...] dual of a monad, a triple consisting of the type and two operators: `Extract` (the flip of `Unit`/`Return`) and `Extend` (the flip of `Bind`)

Tags: comonad, monad, monad-explanation, stephen-toub, c-sharp, functional-programming

[task-comonad]: https://blogs.msdn.microsoft.com/pfxteam/2013/04/03/tasks-monads-and-linq/

## 5 Questions Every Unit Test Must Answer

I've read [this article][questions-ut] (titled as a listicle) by Eric Elliot about unit tests:

> * What are you testing?
> * What should it do?
> * What is the actual output?
> * What is the expected output?
> * How can the test be reproduced?

Tags: eric-elliott, javascript, unit-test, test

[questions-ut]: https://medium.com/javascript-scene/what-every-unit-test-needs-f6cd34d9836d

## Why You Should be Planning for 2018, Not 2017.

I've read [this article][planning-long-term] by Benjamin P. Hardy on motivation, planning and designing your life.

Some quotes:

> [...] having the power to make choices:
> 
> * The right to choice
> * The responsibility to choose
> * The results of choice


> [...] hope reflects your perceptions regarding your capacity to:
> 
> * clearly conceptualize goals
> * develop the specific strategies to reach those goals (i.e., pathways thinking)
> * initiate and sustain the motivation for using those strategies (i.e., agency thinking).


> [...] motivation involves three components:
> 
> * the value you place on your goal
> * your belief that specific behaviors will actually facilitate the outcomes you desire
> * your belief in your own ability to successfully execute the behaviors requisite to achieving your goals

Tags: benjamin-hardy, motivation, life, planning, long-term-plans

[planning-long-term]: https://medium.com/the-mission/why-you-should-be-planning-for-2018-not-2017-7c8fea3e2e52

## Get 5% Better

I've read [this article][get-5-better], in which the author explains how compound interest does not only apply to investing and saving but also personal improvement.

Tags: kaizen, personal-improvement, compound-interest

[get-5-better]: https://www.farnamstreetblog.com/2016/03/five-percent-better/

##  Hunter S. Thompson’s Letter on Finding Your Purpose and Living a Meaningful Life

I've read [this letter][finding-purpose-meaningful-life] from Hunter S. Thompson to his friend Hume Logan, containing advice on living your own life: must find your own way, decide between floating or swimming to your goal and strive to be yourself.

Tags: hunter-thompson, hume-logan, advice, psychology, life

[finding-purpose-meaningful-life]: https://www.farnamstreetblog.com/2014/05/hunter-s-thompson-to-hume-logan/

## The Japanese philosophy of Kaizen offers an effective, manageable way to achieve long-term goals

I've read [this article][kaizen-qz-oppong] by Thomas Oppong on kaizen, or continuous improvement, and how it applies like compound interest to your life.

Tags: kaizen, continous-improvement, thomas-oppong, compound-interest, life, psychology

[kaizen-qz-oppong]: https://qz.com/867711/the-japanese-philosophy-of-kaizen-offers-an-effective-manageable-way-to-achieve-long-term-goals/

## Preparing for a Software Interview

I've read [this article][preparing-software-interview] by Alvaro Videla on interviewing technical people.

Tags: recruitement, interviewing, interview, alvaro-videla

[preparing-software-interview]: https://42hire.com/preparing-for-a-software-interview-6d0392a3d72c

## Why Recursive Data Structures?

I've read [this essay][recursive-ds] by Reginald “Raganwald” Braithwaite, on which he introduces the relationship between data structures and algorithms. Explains how the algorithm can be split into parts, following the data structure.

Uses a library containing a function called 'multirec' for recursion:

  * [a candidate](https://hackage.haskell.org/package/multirec) library, in haskell
  * [another candidate](http://www.lazutkin.com/blog/2008/06/30/using-recursion-combinators-javascript/) library, in javascript

Tags: reginald-braithwaite, recursive-data-structure, quadtree, javascript, functional-programming, essay, data-structure, isomorphic, tree, multirec, linrec, tailrec, haskell

[recursive-ds]: http://raganwald.com/2016/12/27/recursive-data-structures.html

## Leading by Example

I've read [this article][leading-by-example] by Jeff Atwood on how the best leadership comes from doing, rather than telling how to do it. From being a leader rather than being a boss. 

Suggests further reads.

Tags: leadership, team-lead, leading-by-example, jeff-atwood, gerald-weinberg

[leading-by-example]: https://blog.codinghorror.com/leading-by-example/

## Discipline Makes Strong Developers

I've read [this article][discipline-developers] by Jeff Atwood on a project sucess should not be attributed to a language or framework, but to the team's and individuals' discipline. 

Also explains how small projects require different levels of discipline than large projects.

Tags: leadership, discipline, nasa, code-complete, coding-horror, jeff-atwood

[discipline-developers]: https://blog.codinghorror.com/discipline-makes-strong-developers/ 

## Effectively Integrating Into Software Development Teams

I've read [this article][integrating-software-teams] by Dennis Forbes about authority and discipline in a team.

> One organization’s Enterprise solution is another organization’s short sighted mistake.

Tags: shiny, dennis-forbes, discipline, authority, psychology, politics

[integrating-software-teams]: https://dennisforbes.ca/index.php/2006/01/29/effectively-integrating-into-software-development-teams/

