---
published: false
layout: post
title: "Quote: Characterization tests"
date: 2016-04-18 00:56:54 +0200
comments: true
categories:
  - quote
  - wewlc
---

In chapter 13, "I need to make a change, but I don't know what tests to write"

> In nearly every legacy system, what the system does is more important than what it is supposed to do.
>
> A *characterization test* is a test that characterizes the actual behavior of a piece of code. [...] The test document the actual current behavior of the system. Here is a little algorithm for writing algorithm for writing characterization tests:
>
>  * Use a piece of code in a test harness
>  * Write an assertion that you know will fail
>  * Let the failure tell you what the behavior is.
>  * Change the test so that it expects the behavior that the code produces
>  * Repeat

