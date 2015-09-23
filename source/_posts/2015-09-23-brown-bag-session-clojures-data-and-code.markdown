---
layout: post
title: "Brown Bag Session: Clojure's Data and Code"
date: 2015-09-23 21:24:58 +0200
comments: true
categories:
  - brown-bag
  - training
  - client
  - code-equals-data
  - clojure
  - homoiconicity
  - prepared-kata
  - lisp
  - code=data
  - data=code
  - feedback
---

Today, at a client, I've facilitated the brown-bag session on Clojure, introducing Lisp's [homoiconicity][wiki-homoiconocity].

## Session Structure

The session was designed as a kata, first introducing participants in the problem, letting some time to read the initial version and to think about possible solutions.

Then, I structured the rest of the time as a prepared kata, where I was explaining in the beamer our current problems (day-to-day tasks) and possible solutions in Clojure.

Among them:

  * Configuration and extensibility: allowing for flexibility, define at configuration time new features without recompiling or modifying the system.
  * Persisting and restoring certain state: this is a problem that could easily be solved persisting data in Lisp

I explained, in private to those who asked, about [Lisp][wiki-lisp] and its dialects [Common Lisp][wiki-common-lisp], [Clojure][wiki-clojure] and [Scheme][wiki-scheme].

## Feedback

  * They liked the effort of investigating new languages to solve problems we have in our current stack
  * They liked introducing the language features with a back-story to better understand the concepts
  * They suggested to improve the level of the session: as the group as a whole is still starting with Clojure, leaving them on their own with code is too much. They asked for more guidance

[wiki-homoiconocity]: https://en.wikipedia.org/wiki/Homoiconicity
[wiki-lisp]: https://en.wikipedia.org/wiki/Lisp_(programming_language)
[wiki-scheme]: https://en.wikipedia.org/wiki/Scheme_(programming_language)
[wiki-common-lisp]: https://en.wikipedia.org/wiki/Common_Lisp
[wiki-clojure]: https://en.wikipedia.org/wiki/Clojure