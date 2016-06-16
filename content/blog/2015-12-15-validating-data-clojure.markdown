---
categories:
- clojure
- hof
- csv
- validation
- yagni
- idea-for-another-post
- repl
- repl-based-development
- selector
- lambda
comments: true
date: 2015-12-15T11:52:28Z
title: Validating CSV data in clojure
---

At a client, we have CSVs of data that can be simplified to this [^1]:

```lisp
(def data [
           ["total" 6 8 13]
           ["0"     1 2 3]
           ["0"     2 0 4]
           ["0"     3 0 6]
          ])
```

In this case, some of the row named ``total`` is the sum of the rest of the rows, but only for some columns (second and fourth). We do not want to get rid of the columns, as they need to be printed at the end.

This is what we need to validate:

``sum (rest [1]) = total [1]``

``sum (rest [3]) = total [3]``

this could be written as a one-off program but a better alternative for us was to write a program and let users decide what columns to validate. In the future, power users will write their own validations [^2], thus creating an environment where users are no longer dependent on programmers as coupling business users to programmers does not scale. 

{% comment %}
TODO
expand on this idea for another post:

thus creating an environment where users are no longer dependent on programmers as coupling business users to programmers does not scale. 

teach someone to fish vs fish for them

{% endcomment %}

## Implementation

The full [source code is here][production-code]

```lisp
(defn sum-eq-total [selector dataset]
  (letfn [(total-and-rest [coll]
             [(first coll) (rest coll)])]
  (let [[total rest-dataset] (total-and-rest dataset)
        selected-total (selector total)
        selected-column (map selector rest-dataset)
        sum-of-column (reduce + selected-column)]
        (= selected-total sum-of-column))))

(defn validate-columns [indices data]
  (let [generate-selector #(fn [dataset] (nth dataset %))
         selectors (map generate-selector indices)
         check-selector #(sum-eq-total % data)]
         (map check-selector selectors)))
```

We define the domain concept of ``selector`` for pointing to a dataset column


```lisp
generate-selector #(fn [dataset] (nth dataset %))
```

This expression creates selectors based on a given index. It is a lambda that returns a function, thus being a HOF

Users can use the application in this fashion:

```lisp
simple.core=> (validate-columns [1 3] data)
(true true)
```

The full [source code is here][production-code]

## Conclusion

Working on the REPL for this problem has been a very good idea, but working in a spreadsheet software has been even better. Even faster feedback cycle [^3].

The inclusion of the HOF for validating the data has paid its cost (good RoI)

Do not limit what your users can do, let them decide but do not complicate things unnecessarily. Know when to stop adding features and limit work to prevent YAGNI.


[production-code]: https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/test/simple/check-data-with-hofs.clj

[^1]: for more information and a spike on reading CSV data in clojure, [this spike](https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/src/simple/check-media-csv.clj) may be useful
[^2]: for the time being, there are no power users and no need to enable these custom validators. Doing it now would be YAGNI
[^3]: in the case here, the data and business rules are so simple that there is no need for this software.