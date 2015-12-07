---
published: false
categories:
  - sample
  - refactoring
  - theory
  - big-o-notation
  - refactor
  - cost
---

TODO expand this post

the result of the refactoring is the same, the cost isn't

Levels of automatic refactoring:

  * No automation, whatsoever
  * Search and replace, no automatic refactor
  * Simple refactor: rename, extract method, ...
  * Complex refactor: extract method object, pull up interface, replace inheritance with polymorphism, ...

Levels of navigation:

  * No automation, whatsoever
  * Search in file
  * Search global
  * Go to definition by string match
  * Go to definition by fully qualified class name (FQCN)
  * Go to definition by fully qualified class name (FQCN) and parameters (to support overload). Might not work in dynamicly typed languages

The cost of writing / adapting tests is not included, as this has to be done either way (manual or automatic)

There are some languages / editors that might prevent refactoring as they don't make it easy

TODO continue with this example:


original: 
int sum = double(abs(1 + 1));

what I want:
int sum = doubleAbs(1+1);

how to get there:

  * extract method (no parameters)
  * introduce parameter


  * extract variable
  * extract method (one parameter)


result:
int sum = doubleAbs(1+1);

int doubleAbs(int value) {
	return double(abs(value));
}

---

imagine the code as a graph:

at each modification of the code, the code travels from a vertex to another, and in each edge there is the name of the refactor and its cost.

it is clear that the graph has cycles, so it cannot be a tree but a general graph. it is also weighted as each refactor has an associated weight.

following the refactoring algorithm, it is not possible to navigate the graph in an infinite path, as each refactor should decrease the cost of future modifications and its simplicity >>>

according to the definition, .....????