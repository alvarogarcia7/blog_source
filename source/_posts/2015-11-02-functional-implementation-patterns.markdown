---
published: false
layout: post
title: "Functional Implementation Patterns"
date: 2015-11-02 21:26:13 +0100
comments: true
categories: 
---

## Decorating a collection

### Alternative names

  * Intermediary
  * Functional decorator
  * Collection Annotation (from Wallingford's Roundabout)

### Example

Original:

```ruby
[5] pry(main)> [1,2,3].select {|x| x.even?}
=> [2]
```

Introduce an intermediary:

```ruby
[2] pry(main)> [1,2,3].map {|x| [x, x.even?]}
=> [[1, false], [2, true], [3, false]]
```

Then select all that match:

```ruby
[3] pry(main)> [1,2,3].map {|x| [x, x.even?]}.select {|x| x[1]}
=> [[2, true]]
```
## Compact HOF

### Introduction

You have several HOFs in a row: you decorate the collection, act on the decorated values, then use only part from the new aggregation.

### Example

```diff
- .map { |x| [x, 2 * x]}
- .sort_by { |f| f[1]}
- .map { |x| x.first}
+ .sort_by { |x| 2 * x}
```

```ruby
[48] pry(main)> [0, -2, 90, 1, 2, 0].map { |x| [x, -x] }.sort_by { |x| x[1] }.map { |x| x[0] }
=> [90, 2, 1, 0, 0, -2]
```

replace it by:

```ruby
[49] pry(main)> [0, -2, 90, 1, 2, 0].sort_by { |x| -x }
=> [90, 2, 1, 0, 0, -2]
```