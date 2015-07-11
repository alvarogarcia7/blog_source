---
published: false
categories:
  - sample
  - clojure
---

TODO expand on this post

A common ``application.properties``:

```
connection-pool-size=2
username=john.doe
password=1234a
```

With clojure, you can convert this into ``application-properties.clj`` [^1]:

[^1]: the full code can be found in [this file](https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/test/simple/application-properties.clj)

```lisp
(defn max-connection-pool-size []
  (inc 3))
(defn database-password []
  "1234a")
(defn username[]
  "john.doe")
```

and to read it [^2]:

[^2]: the full code can be found in [this file](https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/test/simple/repl-session-14.clj)

```lisp
(load-file "test/simple/application-properties.clj")

(max-connection-pool-size)
; 4

(database-password)
; "1234a"

(username)
; "john.doe"
```

