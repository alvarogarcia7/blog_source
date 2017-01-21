---
categories:
- self-study-aggregation
- january 
- 2017
- read
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

## Monads, part elevel

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

