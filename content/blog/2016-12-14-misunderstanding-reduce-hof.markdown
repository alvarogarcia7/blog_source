---
categories:
  - functional-programming
  - clojure
  - haskell
  - javascript
  - misunderstanding
  - reduce
  - fold
  - higher-order-function
  - quote
  - mozilla-developer-network
comments: true
date: 2016-12-14T18:48:28Z
title: A common misunderstanding about `reduce`
---

### Misconception

I've read in several places that [`reduce`][mdn-reduce] reduces an array[^1] of values to a single one. The main characteristic of this function is not to reduce to a 'smaller element' / 'single element', but to have access to the accumulated results and the elements, one by one. Quoting Mozilla Developer Network's (MDN) Javascript reference:

[^1]: In fact, any type in the `Foldable` class in Haskell. The `reduce` function in Javascript is in the `Array` prototype (only). In Clojure, a set, a map, an array, a list can be `reduce`d.

> The reduce() method applies a function against an accumulator and each value of the array (from left-to-right) to reduce it to a single value.
>
> [Array.prototype.reduce()][mdn-reduce] at MDN

### Examples

Note: the examples in this article are in Javascript.

This is a simple example of such function:

```javascript
> let sum = function (a, b) { return a + b; };
undefined
> [1,2,3].reduce(sum)
6
```

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

