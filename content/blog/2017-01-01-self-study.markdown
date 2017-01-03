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

