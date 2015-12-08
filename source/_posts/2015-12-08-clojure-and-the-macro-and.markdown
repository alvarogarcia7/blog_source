---
layout: post
title: "Clojure and the macro and"
date: 2015-12-08 17:37:28 +0200
comments: true
categories:
  - clojure
  - macro
  - and
  - repl
  - function
  - macro-vs-function
---

While on the REPL, I tried this:

```lisp
simple.core=> (reduce and true [true])
CompilerException java.lang.RuntimeException: Can't take value of a macro: #'clojure.core/and, compiling:(form-init7116694665186998245.clj:1:1)
```

Reading the [clojuredocs for ``and``](https://clojuredocs.org/clojure.core/and), you can find this:

> Note add is a macro, so you cannot apply it. For example, there is a vector of some Boolean values [true true false true], which you want to test to see if they are all true. The code below will not work:
>
> (apply add [true true false true]) ;won't work
>
> Instead, use this:
>
> (every? identity [true  true false true])

I tried it with success. Digging a bit deeper:

```lisp
simple.core=> (defn all-truthy? [& elements] (every? identity elements))
#'simple.core/all-truthy?
simple.core=> (all-truthy? nil false)
false
simple.core=> (all-truthy? nil 0)
false
simple.core=> (all-truthy? nil 1)
false
simple.core=> (all-truthy? 2 1)
true
simple.core=> (all-truthy? [nil false])
true
```

Was also tempted to try this:

```lisp
simple.core=> (reduce (fn [acc element] (and acc element)) true [true true false true])
false
simple.core=> (reduce (fn [acc element] (and acc element)) true [true true true true])
true
```

Encapsulate it into a function:

```lisp
simple.core=> (defn all-true [& elements] (reduce (fn [acc element] (and acc element)) true elements))
#'simple.core/all-true
simple.core=> (all-true true)
true
simple.core=> (all-true true false)
false
simple.core=> (all-true true false true)
false
```

What happens with the non-boolean values?

```lisp
simple.core=> (all-true 1 2 3)
3
simple.core=> (all-true 1 2 3 76)
76
simple.core=> (all-true 1 2 3 64)
64
simple.core=> (all-true 1 2 3 64)
64
```

This is because:

```lisp
simple.core=> (and 64 3)
3
simple.core=> (and 3 64)
64
```

## Conclusion

``all-truthy?`` exploits the falsy values in clojure (``nil``, ``false``), while ``all-true`` uses the true boolean values, although the function does not work properly with non-boolean values (i.e. its domain is the booleans)

## Appendix A: Source code

``and``:

```lisp
simple.core=> (source and)
(defmacro and
  "Evaluates exprs one at a time, from left to right. If a form
  returns logical false (nil or false), and returns that value and
  doesn't evaluate any of the other expressions, otherwise it returns
  the value of the last expr. (and) returns true."
  {:added "1.0"}
  ([] true)
  ([x] x)
  ([x & next]
   `(let [and# ~x]
      (if and# (and ~@next) and#))))
```

``identity``:

```lisp
simple.core=> (source identity)
(defn identity
  "Returns its argument."
  {:added "1.0"
   :static true}
  [x] x)
```

``every``:

```lisp
simple.core=> (source every?)
(defn every?
  "Returns true if (pred x) is logical true for every x in coll, else
  false."
  {:tag Boolean
   :added "1.0"
   :static true}
  [pred coll]
  (cond
   (nil? (seq coll)) true
   (pred (first coll)) (recur pred (next coll))
   :else false))
```

``->``:

```lisp
simple.core=> (source ->)
(defmacro ->
  "Threads the expr through the forms. Inserts x as the
  second item in the first form, making a list of it if it is not a
  list already. If there are more forms, inserts the first form as the
  second item in second form, etc."
  {:added "1.0"}
  [x & forms]
  (loop [x x, forms forms]
    (if forms
      (let [form (first forms)
            threaded (if (seq? form)
                       (with-meta `(~(first form) ~x ~@(next form)) (meta form))
                       (list form x))]
        (recur threaded (next forms)))
      x)))
```
