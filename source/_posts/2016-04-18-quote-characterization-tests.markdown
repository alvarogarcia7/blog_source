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

In Working effectively with legacy code, Michael Feathers talks a type of tests to define or characterize the current behavior of the legacy system:

> In nearly every legacy system, what the system does is more important than what it is supposed to do.
>
> A *characterization test* is a test that characterizes the actual behavior of a piece of code. [...] The test document the actual current behavior of the system. Here is a little algorithm for writing algorithm for writing characterization tests:
>
>  * Use a piece of code in a test harness
>  * Write an assertion that you know will fail
>  * Let the failure tell you what the behavior is.
>  * Change the test so that it expects the behavior that the code produces
>  * Repeat
>
> M Feathers, in the chapter 13[^1], section "Characterization tests" of Working effectively with legacy code. Actual page, 186.

Later on, he goes to describe them in a bigger environment:

> Characterization tests record the actual behavior of a piece of code. If we find something unexpected when we write them, it pays to get some clarification. It could be a bu. That doesn't mean that we don't include the test in our test suite; instead, we should mark it as suspicious an find out what th effect would be of fixing it.
>
> M Feathers, in the chapter 13[^1], section "Characterization tests" of Working effectively with legacy code. Actual page, 188.

[^1]: Chapter 13, "I need to make a change, but I don't know what tests to write"

