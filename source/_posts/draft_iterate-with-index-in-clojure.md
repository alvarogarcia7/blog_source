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

Scenario: 

  * read lines from a file
  * select 1 and 2
  * print to console
  

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
```

[Source](https://clojuredocs.org/clojure.core/map-indexed), especially [this one](https://clojuredocs.org/clojure.core/map-indexed#example-542692cdc026201cdc326d25)
