---
layout: post
title: "Destructuring as a refactor in Clojure"
date: 2015-04-14 23:36:23 +0200
comments: true
categories: 
  - clojure
  - refactor
  - destructuring
  - parallel-change
---

[Manuel][trikitrok] has taught us today about the default value while destructuring:

> The following example illustrates the use of an :as directive to bind a local with the entire map.

```
user=> (def point {:x 5 :y 7})
#'user/point

(let [{:keys [x y] :as the-point} point]
         (println "x:" x "y:" y "point:" the-point))

x: 5 y: 7 point: {:x 5, :y 7}
```

> We've now seen the :as directive used for both vectors and maps. In both cases the local is always assigned to the entire expression that is being destructured.

[Source][clojure-destructuring]

This has been used for a method like this one:

```lisp
(defn all-access[k]
  (do (:a k))
  (do (:b k)))
```

this has been refactored to this

```lisp
(defn all-access[k]
  (let [{:keys [a b] :as k}]
	  (do a)
	  (do (:b k))))
```

the best thing about this is I can introduce the keys to the array while keeping the original map (``k``) and, when I'm ready, to change some of the accesses to ``k`` to its destructured variables.

[trikitrok]: https://twitter.com/@trikitrok
[clojure-destructuring]: http://blog.jayfields.com/2010/07/clojure-destructuring.html
