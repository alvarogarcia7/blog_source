---
layout: post
title: "The language was prepared for that"
date: 2015-08-09 01:19:50 +0200
comments: true
categories: 
  - clojure
  - haskell
  - java
  - language-comparison
---

Many times I've written this function:

```java
public boolean between(int lowerBound, int n, int upperBound){
	return lowerBound <= n &&
		n <= upperBound;
}
```

It may depend on the case, whether it is ``[]``, ``[)``, ``(]`` or ``()``, to use mathematical terms.

When the two comparisons are the same (``[]`` and ``()``), there is duplication in the comparisons.

Investigating a little bit on this in clojure, I've found this function:

```lisp
<=
```

And its [clojuredocs][clojuredocs-less-equals]: Returns non-nil if nums are in monotonically non-decreasing order,
otherwise false.

A sample usage:

```lisp
(<= 1 2)
; true

(<= 1 2 1)
; false
```

The last part is the most interesting one. As this function is prepared to receive more than two parameters, it is very easy for the programmer to use it. We could say that the language was prepared for that.

The [implementation][clojure-less-equals-implementation]:

```lisp
(defn <=
  ([x] true)
  ([x y] (. clojure.lang.Numbers (lte x y)))
  ([x y & more]
   (if (<= x y)
     (if (next more)
       (recur y (first more) (next more))
       (<= y (first more)))
     false)))
```

Inspired by this, I've implemented the same function in haskell (for the repl):

```haskell
let isBigger acc ele = (snd acc) && (fst acc) < ele in
   foldl (\acc ele -> (ele, isBigger acc ele)) (1, True) [1,2,1,3] 
```

and a simpler solution I've found on [Stack Overflow][haskell-less-equals-implementation]:

```haskell
isSorted :: (Ord a) => [a] -> Bool
isSorted xs = all (\(x, y) -> x <= y) $ zip xs (tail xs)
```

or 

```haskell
isSorted :: (Ord a) => [a] -> Bool
isSorted xs = and $ zipWith (<=) xs (tail xs)
```

## Conclusion

Unless a more elegant, language-provided solution exists in haskell, the clojure one is way simpler. This is one of the benefits of prefix notation, that operators (e.g., +, -, *, <=) are overloaded to take more arguments than before.



[clojure-less-equals-implementation]: https://github.com/clojure/clojure/blob/clojure-1.7.0/src/clj/clojure/core.clj#L1020
[clojuredocs-less-equals]: https://clojuredocs.org/clojure.core/%3C=
[haskell-less-equals-implementation]: http://codereview.stackexchange.com/questions/46606/is-a-list-sorted/46608#46608
