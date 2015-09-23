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
---

Today, at a client, I've facilitated the brown-bag session on Clojure, introducing Lisp's [homoiconicity][wiki-homoiconocity].

The session was designed as a kata, first introducing participants in the problem, letting some time to read the initial version and to think about possible solutions.

Then, I structured the rest of the time as a prepared kata, where I was explaining in the beamer our current problems (day-to-day tasks) and possible solutions in Clojure.

Among them:

  * Configuration and extensibility: allowing for flexibility, define at configuration time new features without recompiling or modifying the system.
  * Persisting and restoring certain state: this is a problem that could easily be solved persisting data in Lisp

[wiki-homoiconocity]: https://en.wikipedia.org/wiki/Homoiconicity