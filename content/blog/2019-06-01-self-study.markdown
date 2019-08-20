---
categories:
- self-study-aggregation
- june
- 2019
- bash
- borrowing-rules
- c
- comparison
- compiler
- concurrency
- consensus
- correctness
- covariance
- debug
- distributed-consensus
- distributed-lock
- distributed-programming
- efficiency
- fencing-mechanism
- function-pointer
- garbage-collection
- generic
- h0p3
- help
- language
- language-feature
- lifetime
- lifetime-parameter
- lock
- maksym-zavershynskyi
- martin-kleppmann
- monotonic-clock
- parallellism
- personal-knowledge-base
- peter-hosey
- pointer
- pointer-arithmetic
- programming-language
- redlock
- redlock-algorithm
- rust
- rustonomicon
- script
- stop-the-world
- string
- struct
- trap
- variance
- wiki
date: 2019-06-01T10:32:19Z
title: Self-Study in June 2019
url: /blog/2019/06/01/self-study-june-2019/
---


## [(h0p3's Wiki)](https://philosopher.life/#Root:Root%20%5B%5BLegal%20Notice%5D%5D)

This is a highly customized tiddlyWiki, from h0p3.

Tags: wiki, personal-knowledge-base, h0p3

Id: b8b3d973-9611-4180-854a-0242ac110003
Read: Fri, 7 Jun 2019 13:20:26 +0000

## [Debug bash scripts](https://gist.github.com/Potherca/4f4ce1c8d4bcf4cd4aab)

This article explains how to debug bash scripts using the DEBUG trap.

Declares several log levels for the commands

Tags: debug, bash, trap, help, script

Id: 39f76af4-99ce-48b6-adc1-0242ac110003
Read: Fri, 7 Jun 2019 13:20:26 +0000

## [Understanding Rust Lifetimes](https://medium.com/nearprotocol/understanding-rust-lifetimes-e813bcd405fa)

Describes rust lifetimes, lifetime parameters.

Compares them to C++ pointers (in the sense they are difficult to learn, but make things explicit).

Tags: rust, borrowing-rules, pointer, language, comparison, generic, lifetime, lifetime-parameter, maksym-zavershynskyi, compiler, language-feature, variance, covariance, struct, rustonomicon

Id: 2e14ae3e-8ec0-11e9-be23-0242ac110003
Read: Fri, 14 Jun 2019 16:19:26 +0000

## [Everything you need to know about pointers in C](https://boredzo.org/pointers/)

Explains pointers in C

Tags: c, programming-language, pointer, peter-hosey, language-feature, string, pointer-arithmetic, function-pointer

Id: ddc39078-8ed6-11e9-85bc-0242ac110003
Read: Fri, 14 Jun 2019 19:01:50 +0000

## [How to do distributed locking](https://martin.kleppmann.com/2016/02/08/how-to-do-distributed-locking.html)

This article explains the usage of locks (for efficiency - optimization / for correctness). 

Explains the usage of the "Redlock" algorithm, to perform distributed locks. Explains a fencing mechanism (using tokens).

References monotonic clocks, stop-the-world garbage collection, consensus mechanisms.

Uses good diagrams for parallelism and concurrency.

Tags: lock, efficiency, correctness, redlock, redlock-algorithm, consensus, distributed-consensus, distributed-programming, distributed-lock, martin-kleppmann, parallellism, concurrency, fencing-mechanism, monotonic-clock, stop-the-world, garbage-collection

Id: a1165c1e-9719-11e9-bf0b-0242ac110003
Read: Tue, 25 Jun 2019 07:19:54 +0000

