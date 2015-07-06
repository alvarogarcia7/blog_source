---
layout: post
title: "Paper: Fundamental concepts on programming languages"
date: 2015-07-06 07:48:35 +0200
comments: true
categories: 
  - christopher-strachey
  - programming-language
  - theory
  - 1967
  - course
  - fundamental-concepts
  - paper
---

## Contents

This paper starts slow, from the mathematical and philosophical point of view, until it gets to the basic concepts on the fundamental concepts:

  * Assignment command
  * L-Value and R-Value
  * Definitions
  * Names
  * Numerals
  * Conceptual models: an explanation about the relationship between the code, the memory store and the abstract concepts

Later, it gets more in depth to the conceptual constructs, where most of the content is explained and contains:

  * Expressions and commands
  * Expressions and evaluations
  * Commands and sequencing
  * Definition of functions and routines
  * Functions and routines as data items
  * Types and polymorphism
  * Compound data structures

Finally, as closing notes, it explains some implementation details (such as Load-Update Pairs), tools as Macrogenerators (nowadays called macros) and formal semantics

## Notes / highlights

### L-Values and R-Values

> L-value for the address-like object appropriate on the left of the assignment, and R-value for the contents-like object appropriate for the right
>
> 2.1, Assignment commands in page 14

> An L-value represents an area of the store of the computer. [...] Two essential features [...] it has content --i.e., an associated R-value-- and that it is in general possible to change this content
>
> 2.2, L-values and R-Values in pages 14-15

### Referential transparency

Explained in 3.2.1, Values:

> In essence, this means that if we wish to find the value of an expression with contains a sub-expression, the only thing we need to know about the sub-expression is its value.

Also cites Quine [^1] on this matter.

[^1]: Quine, W.V. Word and Object. New York Technology Press and Wiley, 1960

> We tend to assume automatically that the symbol ``x`` in an expression such as ``3x**2 + 2x + 17`` stands for the same thing (or has the same value) on each occasion it occurs. This is the most important consequence of referential transparency
>
> 3.3.1 Variables, page 22

> If we consider L-values as well as R-Values, however, we can preserve referential transparency as far as L-values are concerned. Thi is because L-values, being generalised addresses, are not altered by assignment command
>
> 3.3.1 Variables, page 22

### Types of variables: bound, free

Explains the types of variables, based on their belonging to an environment or not: bound variable and free variable. Page 20

### Evaluating vs applying

> Distinction between evaluating an operator and applying it to its operands
> 3.2.4, Evaluation, page 20

This also introduces the concept of currification / currying:

> [...] for reducing operators with several operands to the successive application of single operands operators
> 3.2.4, Evaluation, page 21

An example is given.

### Conditional expressions vs conditional commands

Introduces the concept of conditional expression, akin to the ternary operator (example in java):

```java
y = x > 1 ? 1 : 2;
```

this is equivalent to (example in java):

```java
int y;
if(x > 1) {
	y = 1;
} else {
	y = 2;
}
```

and the conditional command (example in java):
```java
if (x > 1) {
	f();
	h(x);
} else {
	g();
}
```

The conditional expression is also known as "functional if"

## Parameter calling modes

Explains call by value and call by reference, equivalent to calling by R-Value or L-Value, respectively

3.4.2, Parameter calling mode

### Functions and routines

> Functions and routines are as different in their nature as expressions and commands. It
> is unfortunate, therefore, that most programming languages manage to confuse them very
>successfully
>
> 3.4.5 Functions and routines, page 30

>The problem arises because we naturally expect referential transparency of R-values in
>expressions, particularly those on the right of assignment commands
>
> 3.4.5 Functions and routines, page 30

>Any departure of R-value referential transparency in a R-value context should
>either be eliminated by decomposing the expression into several commands and simpler
>expressions, or, if this turns out to be difficult, the subject of a comment
>
> 3.4.5 Functions and routines, page 30



### funny comments

> One important characteristic of mathematics is our habit of using names for things
>
> 3.3.1 Variables, page 22

>if this turns out to be difficult, the subject of a comment
>
> 3.4.5 Functions and routines, page 30

