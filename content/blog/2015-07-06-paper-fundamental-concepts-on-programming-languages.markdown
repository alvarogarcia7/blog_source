---
categories:
- christopher-strachey
- programming-language
- theory
- 1967
- course
- fundamental-concepts
- paper
- lecture
comments: true
date: 2015-07-06T07:48:35Z
title: 'Paper: Fundamental concepts on programming languages'
---

Note: all quotes on this post come from [this paper](http://www.cs.cmu.edu/~crary/819-f09/Strachey67.pdf): Strachey, C. Fundamental Concepts in Programming Languages. Published in Higher-Order and Symbolic Computation, 13, 11–49, 2000.

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

### Constancy and fixity

"Protection by freezing"

>Constancy is thus an attribute of an L-value, and
>is, moreover, an invariant attribute. Thus when we create a new L-value, and in particular
>when we define a new quantity, we must decide whether it is a constant or a variable.
>
> 3.4.6 Constants and variables, page 30


>[...] fixed function. This is defined as a function which
>either has no free variables, or if it has, whose free variables are all both constant and fixed.
>
> 3.4.7, Fixed and free, page 31

>Note that fixity is a property of the λ-expression--i.e., a property of the R-value, while
>constancy is a property of the L-value.
>
> 3.4.7, Fixed and free, page 31

In general:

  * Constancy is an attribute of the L-Value
  * Fixity is an attribute of the R-Value

Both for functions and objects.


### First and second class objects

> A procedure, on the other hand, may only appear in another procedure call either
>as the operator (the most common case) or as one of the actual parameters. There are no
>other expressions involving procedures or whose results are procedures. Thus in a sense
>procedures in ALGOL are second class citizens—they always have to appear in person
>and can never be represented by a variable or expression
>
> 3.5.1, First and second class objects, page 32

>Historically this second class status of procedures in ALGOL is probably a consequence
>of the view of functions taken by many mathematicians: that they are constants whose
>name one can always recognise.
>
> 3.5.1, First and second class objects, page 33

>[...] it is remarkably difficult to stop looking on functions as second class objects
>
> 3.5.1, First and second class objects, page 33

> and in particular, of functions which have functions as a result
>
> 3.5.1, First and second class objects, page 33


### Closure

>Thus the R-value of a function contains two parts—a rule for evaluating the expression,
>and an environment which supplies its free variables. An R-value of this sort will be called
>a closure.
>
> 3.5.2, Representation of functions, page 34

### Types

There is information on types: latent vs manifest, how to determine it

>We call attributes which can be determined at compile time in this way manifest; attributes
>that can only be determined by running the program are known as latent
>
>3.6.2, Manifest and latent, page 36

### Polymorphism

Ad-hoc vs parametric polymorphism

>In ad hoc polymorphism there is no single systematic way of determining the type of the
>result from the type of the arguments. There may be several rules of limited extent which
>reduce the number of cases, but these are themselves ad hoc both in scope and content
>
>3.6.4, Polymorphism, page 37

>Parametric polymorphism:
>
>(α ⇒ β, α list) ⇒ β list
> 
>3.6.4, Polymorphism, page 37

### Collections
> * **List**: An ordered sequence of objects all of the same type. The number is dynamically variable.
> * **Ntuple**: An ordered sequence of objects all of the same type. The number is dynamically variable.
> * **Set**: An ordered sequence of objects all of the same type. The number is dynamically variable.
> * **Bag or Coll**: It consists of an unordered collection of objects all of which are of the same type and differs from a set in that repetitions are allowed
>
>3.7.7, Other forms of structure, page 45

Also talks about "rings" (3.7.7, Other forms of structure, page 45)

### Macros

>macrogenerators deal with the symbols which represent
>the variables, values and other objects of concern to a program so that all their manipulation
>is performed before the final compiling
>
>4.2, Macrogenerators, page 47

>Macrogeneration seems to be particularly valuable when a semantic extension of the
>language is required
>
>4.2, Macrogenerators, page 47

>I believe, a proper aim for programming language designers to try to make the use of
>macrogenerators wholly unnecessary
>
>4.2, Macrogenerators, page 47


### funny comments

> One important characteristic of mathematics is our habit of using names for things
>
> 3.3.1 Variables, page 22

>if this turns out to be difficult, the subject of a comment
>
> 3.4.5 Functions and routines, page 30

>**Bag or Coll** This is a new sort of collection for which there is, as yet, no generally accepted name.
>
>3.7.7, Other forms of structure, page 45

## Review

This has been a very interesting paper, on the foundational concepts. A more formal approach to the assignment operator, L-Values and R-Values and functions.

The part about types is very interesting, explained in simple terms and with examples.

Some of the examples are in CPL, that although an old language, it is still comprehensible. The examples or equivalences in lambda calculus are more difficult to understand (I had to read an introduction to it[^2], just to grab the basics)

Some concepts are a bit outdated, such as the missing object orientation (or its features) or the assembly code, but in general the contents resist the time. 

Many of the concepts in programming are around L-Values and R-Values and this paper has made me realize this. Also that even if we are users of these systems, I didn't know many formalities behind it (assignment operator, rewriting, types, type inference, polymorphism modes, polymorphism without inheritance, etc).


[^2]: [introduction to lambda calculus](../../../../2015/07/01/self-study-in-july-2015), search for "A Tutorial Introduction to the Lambda Calculus"