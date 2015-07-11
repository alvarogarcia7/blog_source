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

With clojure, you can convert this into ``application-properties.clj``:

```lisp
(defn max-connection-pool-size []
  (inc 3))
(defn database-password []
  "1234a")
(defn username[]
  "john.doe")
```

and to read it:

```lisp
(load-file "test/simple/application-properties.clj")

(max-connection-pool-size)
; 4

(database-password)
; "1234a"

(username)
; "john.doe"
```

