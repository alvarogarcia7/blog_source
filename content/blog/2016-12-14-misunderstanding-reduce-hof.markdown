---
categories:
- functional-programming
comments: true
date: 2016-12-14T18:48:28Z
title: A common misunderstanding about `reduce`
---

I've read in several places that [`reduce`][mdn-reduce] reduces an array\* of values to a single one.

Note: the examples in this article are in Javascript because it is one language that uses `reduce` for this higher-order function. Some functions will be typed using Haskell syntax.

This is a simple example of such function:

```javascript
> let sum = function (a, b) { return a + b; };
undefined
> [1,2,3].reduce(sum)
6
```

TODO: missing explanation that the reduce function can also be used on other elements belonging to the same category as the array

`reduce` can reduce a collection of elements to a single one. But this is not its defining characteristic. Let's see another example:

```javascript
> let append = function (element, accumulator) { accumulator.push(element); return accumulator };
undefined
> [1,2,3].reduce(append, [])
[ 1, 2, 3 ]
```

Note: this is a special case, where the elements are not altered by the `reduce`. Can be seen as the identity element for `reduce`.

This same behaviour can be reproduced with a `map`:

```javascript
> let identity = function (x) { return x; };
undefined
> [1,2,3].map(identity)
[ 1, 2, 3 ]
```

An example that requires a `reduce` (and not a `map`) is [`frequencies`][cljdoc-frequencies]. This function calculates the frequency of the elements in the collection:

```javascript
> frequencies([3,3,2,1,-1])
{ '1': 1, '2': 1, '3': 2, '-1': 1 }
```

Why not a `map`? Because you need to cumulate the results.

```javascript
> let frequency = function (accumulator, element) { 
  if (!accumulator[element]) {
    accumulator[element] = 0;
  } 
  accumulator[element]++;
  return accumulator; 
} 
undefined
> let frequencies = function (arr) {
  return arr.reduce(frequency, {});
}
undefined
```

[mdn-reduce]: https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
[cljdoc-frequencies]: https://clojuredocs.org/clojure.core/frequencies

Identity element: https://en.wikipedia.org/wiki/Identity_element

