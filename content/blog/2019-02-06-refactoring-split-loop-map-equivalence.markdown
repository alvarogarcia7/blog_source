---
categories:
- refactoring
comments: true
date: 2019-02-06T20:44:59Z
title: Refactoring: split loop + loop/map equivalence
url: /blog/2019/02/06/refactoring-split-loop-map-equivalence/
---

We can combine the ["Split loop" refactoring][refactoring] technique plus the "Loop / Map equivalence" when refactoring.

Given that it does not matter in which order we apply these operations, we can say that they have the [associative property](https://en.wikipedia.org/wiki/Associative_property)

## Chart of the operations

Take the case of a loop doing two things. From there:

  - we can replace the loop for a map (including the two actions into a single map body)
  - we can split the loop into two loops

Take the case of two loops, doing one thing each. From there:

  - we can replace a loop for a map
  - we can replace both loops for maps

Take a map doing two things. From there:

  - we can split the map, into two maps, doing one thing each.

(We're not specifying the inverse operations)

<!--
see the 2019-02-06-refactoring-split-loop-map-equivalence.snippet.txt file for the code to generate this state diagram UML
-->

{{< upload "state-diagram-loop-map-split-map-equivalence.png" >}}

## Links
 
  - [Split Loop refactoring][refactoring], by Martin Fowler

[refactoring](https://refactoring.com/catalog/splitLoop.html)


