---
published: false
categories:
  - sample
  - clojure
  - ruby
  - iterate
  - language-comparison
  - protip
---

Scenario: iterate a sequence (``seq``) with its index
  

The lines have an implicit line number (starting by 1, in most editors):

```
[1] line1
[2] line2
[3] hello
```

When you read it from file to a variable, it is converted to:

```lisp
("line1" "line2" "hello")
```

 This implicit line number value is not present, therefore you need to assign them one.
 
 In ruby, you have this construct:
 
 ```ruby
array = ["A", "B", "C"]
array.each_with_index {|val, index| puts "#{val} => #{index}" }
```

[Source](http://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby/310638#310638)

In clojure, there is a similar function:

```lisp
(map-indexed (fn [idx itm] [idx itm]) '(:f :o))
; ([0 "line1"] [1 "line2"] [2 "hello"])
```

If you want to shift the collection to the right so it starts with 1 (for the REPL):

```lisp
(def lines '("line1" "line2" "hello"))
; ("line1" "line2" "hello")

(defn shift-one [lines] 
  (cons "" lines))
(def lines (shift-one lines))
lines
; ("" "line1" "line2" "hello")

(map-indexed (fn [idx itm] [idx itm])
  lines)  
; ([0 ""] [1 "line1"] [2 "line2"] [3 "hello"])
```

[Source](https://clojuredocs.org/clojure.core/map-indexed), especially [this one](https://clojuredocs.org/clojure.core/map-indexed#example-542692cdc026201cdc326d25)

But if you only need to get the lines at certain indexes, it is also possible to get the values directly, using ``map`` on the sequence of desired indexes:

```lisp
lines
; ("" "line1" "line2" "hello")

(defn get-all [lines indexes]
  (map #(nth lines %) indexes))
(get-all lines '(1 2))
; ("line1" "line2")

(get-all lines '(1 1))
; ("line1" "line1")
```
