---
title: "The Threading Macro (clojure) equivalent in Python" 
categories:
- equivalence
- threading-macro
- clojure
- lisp
- macro
- python
- language
- language-equivalence
date: 2023-07-22T16:38:28+0400
url: /articles/2023/07/22/threading-macro-equivalent-python/
---

## Introduction

In any programming language, it is common to compose functions by pipelining functions: `h = g ∘ f` such that `h(x) = g(f(x))`.

The function `f` is applied first, then `g`, then the following. [^1]

[^1]: The notation `g ∘ f` is read as "g of f ", "g after f " (...). From [wikipedia: Function Composition](https://en.wikipedia.org/wiki/Function_composition)

For me, it would be more comfortable and easy to understand to write it `f COMPOSE_THEN g`, indicating that this function composition is not the usual, but a different operation.

## Introduction in Clojure

This function composition can be written in Clojure by pipelining or chaining functions:

```lisp
(defn calculate []
   (reduce + (map #(* % %) (filter odd? (range 10)))))
```
Fig 1: Example taken from Clojure's [threading macros][]. Notice the `(range 10)` is written at the right-most, while the functions are at the left of it.


The [threading macros][] are also a magnificent way to chain or pipeline operations: take a value and put it through the following functions:

[threading macros]: https://clojure.org/guides/threading_macros

```lisp
(defn calculate* []
   (->> (range 10)
        (filter odd?)
        (map #(* % %))
        (reduce + )))
```
Fig 2: when using threading macros. Notice the `(range 10)` is written at the beginning, while the functions are to the right of it. This is a more natural way of reading code (left to right).

## Python

In python, I haven't found any equivalent [^2] to these threading macros, but it is possible to create an equivalent [^3]:

[^2]: In the python 3 SDK or the Standard Library. There might be alternatives, but I haven't researched them: `funcy`, `funcoperators`, or `toolz`.

[^3]: This [Stack Overflow thread](https://stackoverflow.com/questions/16739290/composing-functions-in-python) is related to function composition

```python
def chain(arg: object, *funcs: Any) -> object:
    return reduce(lambda r, f: f(r), funcs, arg)
```

and to use it:

```python
chain(range(10),
      lambda ele: filter(lambda x: x % 2 == 1, ele),
      lambda ele: map(lambda x: x * x, ele),
      sum
      )
```

The upside is that you can now chain functions, while the parameter is at the beginning.

The obvious downside is you need to create lambda functions for each of the functions.
