---
layout: post
title: "Inserting clojure code in octopress"
date: 2015-04-14 23:48:27 +0200
comments: true
categories: 
  - meta
  - octopress
  - blogging
  - code
  - lisp
  - clojure
---

Inserting this code in the blog:

	```clojure
	(defn all-access[k]
		(let [{:keys [a b] :as k}]
			(do a)
			(do (:b k))))
	```

the octopress processor throws the error:

	Error: Pygments can't parse unknown language: clojure
	Error: Run jekyll build --trace for more information.

A solution would be to include it as lisp code:


	```lisp
	(defn all-access[k]
		(let [{:keys [a b] :as k}]
			(do a)
			(do (:b k))))
	```


this is an example:	

```lisp
(defn all-access[k]
	(let [{:keys [a b] :as k}]
		(do a)
		(do (:b k))))
```

