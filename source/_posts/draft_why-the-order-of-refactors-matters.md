---
published: false
categories:
  - sample
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
