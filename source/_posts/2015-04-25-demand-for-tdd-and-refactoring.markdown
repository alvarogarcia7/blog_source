---
layout: post
title: "Demand for TDD and Refactor"
date: 2015-04-25 13:28:20 +0200
comments: true
categories: 
  - idea
  - overheard
  - jason-gorman
  - tdd
  - refactor
  - workshop
  - quote
---

When I went to the Jason Gorman's TDD workshop (experience report [here](../../../../2015/04/12/jason-gorman-tdd-intensive-workshop)), he said something interesting regarding refactor and TDD:

> In job offers / advertisements, TDD is much more in demand than refactor. But the latter is included in the former as an integral part.
>
> Jason Gorman

I agree with the second thought: you cannot properly do TDD without refactoring, as it is an integral part; also the third phase.

For me, sometimes refactoring is the difference between code and "Clean Code" (as defined in the book by the same title). If I cannot find the (algorithmic) pattern for the software I'm writing, I try to introduce scaffolds to keep investigating until I can find a viable, general solution (if the problem requires it.)

Even after doing the refactor ``replace algorithm``, the code might not have the responsibilities in the right place, the methods might be long, value objects not extracted yet, etc. This is where further refactor is needed to introduce all those qualities in the piece of software.

I believe that we programmers have done a bad job of communicating with the rest of the organization what refactoring is about. It has nothing to do with beauty, style or design (in the visual sense) but is related to maintainability, coupling, defects and quality. Money, in the long run, as its objective is to make it cheaper to change in the future, a better investment and ROI. This is the common language that the rest of the company understands.
