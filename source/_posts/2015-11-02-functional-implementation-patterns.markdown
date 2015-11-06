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
