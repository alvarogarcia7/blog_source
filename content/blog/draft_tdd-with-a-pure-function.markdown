---
categories:
- draft
- tdd
- pure-function
- baby-step
- reflection
published: false
date: 2016-11-10T14:06:19Z
title: Test-driving a pure function
comments: true
---

It is easy when you are starting with TDD, as the inputs and outputs are fixed, and there are no side effects. The only difference is in the implementation, and this can help with the baby steps. 

The current example that I have in mind is the Powersets TODO add link

But these characteristics also difficult driving it, as opposed to writing tests first:

  - Is there much API discovery when you have fixed the inputs and outputs from the beginning?
  - How does testing from the outside, influence the process: triangulation, test cases, implementation?
  - Is this difficulty of driving affected by the paradigm of the language (e.g., functional vs object oriented)?
  - How does this affect triangulation?
    - In case this pure function is an algorithm, TODO see test driving algorithm TODO, does the refactor 'replace algorithm' happen often? Is the difficulty related to driving algorithms or to driving pure functions?




