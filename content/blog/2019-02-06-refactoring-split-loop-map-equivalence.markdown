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

## Example

We want to print all substrings of a given string:

(State1: This uses a single loop, performing two actions)

```kotlin
fun printAllSubstrings(string: String){
  for (i in 0.rangeTo(string.length)) {
    val substring = string.substring(i)
    println(substring)
  }
}
```

From State1, we replace the loop for a map:

(State2: This uses a map, with two operations)

```kotlin
fun printAllSubstrings(string: String) {
    0.rangeTo(string.length).map {
        val substring = string.substring(it)
        println(substring)
    }
}
```

From State1, Refactor to split the loop:

(State3: This uses two loops, performing one action each)

```kotlin
fun printAllSubstrings(string: String){
  val substrings = mutableListOf<String>()
  for (i in 0.rangeTo(string.length)) {
    val substring = string.substring(i)
    substrings.add(substring)
  }
  for (substring in substrings) {
    println(substring)
  }
}
```

Collapse the first loop into a map:

(This uses a map and a loop)

```kotlin
fun printAllSubstrings(string: String) {
  for (substring in 0.rangeTo(string.length)
                     .map { string.substring(it) }) {
    println(substring)
  }
}
```

Extract the method to give it a name:

(This uses a map, a loop, and a method to explain the logic)

```kotlin
fun printAllSubstrings(string: String) {
  for (substring in allSubstrings(string)) {
    println(substring)
  }
}

private fun allSubstrings(string: String) = 0.rangeTo(string.length).map { string.substring(it) }
```

Alternatively, use the method, with a map:

(This uses an explaining method, with a map)

```kotlin
fun printAllSubstrings(string: String) {
  allSubstrings(string)
    .map { println(it) }
}

private fun allSubstrings(string: String) = 0.rangeTo(string.length).map { string.substring(it) }
```

Alternatively, from State3, we can also replace the loop for two `map`s:

(State4: This uses two maps)

```kotlin
fun printAllSubstrings(string: String){
  0.rangeTo(string.length)
    .map { string.substring(it) }
    .map { println(it) }
}
```

## Links
 
  - [Split Loop refactoring][refactoring], by Martin Fowler

[refactoring](https://refactoring.com/catalog/splitLoop.html)


