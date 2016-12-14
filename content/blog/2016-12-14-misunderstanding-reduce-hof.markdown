---
categories:
- functional-programming
comments: true
date: 2016-12-14T18:48:28Z
title: A common misunderstanding about `reduce`
---

I've read in several places that [`reduce`][mdn-reduce] reduces an array\* of values to a single one.

This is a simple example of such function:

```javascript
> let sum = function (a, b) { return a + b; };
undefined
> [1,2,3].reduce(sum)
6
```

TODO: missing explanation that the reduce function can also be used on other elements belonging to the same category as the array

`reduce` can reduce a collection of elements to a single one. But this is not its defining charactertic. Let's see another example:

```javascript
> let append = function (element, accumulator) { accumulator.push(element); return accumulator };
undefined
> [1,2,3].reduce(append, [])
[ 1, 2, 3 ]
```

Note: this is a special case, where the elements are not altered by the `reduce`. Can be seen as the identity element for `reduce`.

[mdn-reduce]: https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

Identity element: https://en.wikipedia.org/wiki/Identity_element

