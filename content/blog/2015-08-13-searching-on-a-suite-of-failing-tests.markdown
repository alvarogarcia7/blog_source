---
categories:
- tip
- search
- naive-search
- binary-search
- dichotomous-search
- comparison
- spring
- context
- end-to-end-test
- test-dependency
- antipattern
comments: true
date: 2015-08-13T16:45:19Z
title: Searching on a suite of failing tests
---

## Motivation

Today, at a client, in the green phase, we had a test suite which was failing: the whole suite fails but the test cases, individually, succeed.

So my first impression was that something was being shared between tests. Also confirmed because the failing class was an EndToEnd test, in which we load the whole spring context

A quick glance was not revealing anything interesting, so I decided to find which is the minimum suite (as opposed as to the whole suite) that makes the new testcase fail, expecting to narrow the search for possible causes. This is very similar to what QuickCheck does, to generate the minimum testcase that breaks your property. In this way, you can focus in a possibly simpler[^1] feature.

[^1]: Because maybe the minimum testcase is more difficult than another.

This post covers how to perform this search.

## Mathematical formulation

Let ``T`` be a sequence of tests: ``i1, i2, ..., in, F, j1, j2, ..., jm``

where:

  * ``i`` are green tests
  *  ``F`` is first failing test
    * when executed in isolation, is green
    * when executed in the sequence, is red
  *  ``j`` are tests after the failed test.

In this case, the order is important, as the failed test suite (presumably) comes from a shared state set by a previous test.

The first search-space pruning is to remove the ``j``, as they supposedly don't have any effect (as they are after the failed test)

let ``T1`` be a subsequence of ``T`` that includes ``i`` and ``F``: ``i1, i2, ..., in, F``

Then it is assumed that one (or more) of the ``i`` generates an inconsistent state that makes ``F`` fail.

In the sequence ``T1``, ``F`` fails, but in the sequence ``TF`` composed by ``F`` only, the test succeeds. This can be thought as the equivalent of the [Intermediate value theorem](https://en.wikipedia.org/wiki/Intermediate_value_theorem), also called Bolzano's theorem, where the ``T1`` is at one side ot the axis and the ``TF`` at another. The theorem proves that there must be at least one value where the domain of the function crosses the axis

I say "thought of" because that theorem is only for continous functions and sets are not (are discrete) but the analogy is good enough: if one sequence is OK but the other isn't, there must be a minimum sequence where the result is OK and another one where the results are not. They two sequences must not be the same case as one result cannot be OK and not OK at the same time.

## Naïve search

The first way of searching would be find the minimum set that fails:

  * include ``F``, then another from ``i1,...,in`` that makes the ``F`` fail. ``F`` the last one, because it needs to be affected by the side effects from the preceding test.
  * if the first strategy does not work, for each of the above cases, add another from the ``i1,...,in`` (except the one that was added)

For the first step, it takes ``O(n * 2)``, assuming executing a single test costs ``O(1)``. Reduces to ``O(n)``

For the second step, ``O(n * n-1 * 3)``. Reduces to ``O(n^2)``

For the third step, ``O(n * n-1 * n-2 * 4)``. Reduces to ``O(n^3)``

For the nth step, it costs ``O(n * n-1 * n-2 * ... * n-(n-1) * (n+1))``. Reduces to ``O(n^n)``. Which is polynomical but not feasible for medium-sized ``n`` (in an automatic fashion) or small ``n`` (in a manual fashion)

## Dichotomous search

(This is also known as [binary search](https://en.wikipedia.org/wiki/Binary_search_algorithm))

Inspired by ``git-bisect``, I decided to treat the sequence ``i1, ..., in`` as the source for the dicotomical search, applying the subsequences to ``F``.

The first step, it takes ``O(n/2 * n/2)`` = ``O(n^2)`` to execute half the tests

The second step, is to execute half the number of the tests previously executed, either from the sequence before (if the ``F`` fails) or from the other half (if ``F`` does not fail). The cost is ``O(n/4 * n/4)`` = ``O(n^2)``

For the nth step, the cost is ``O(n/2^n * n/2^n)`` = ``O(n^2/2^n)`` = ``O(0)``

This n in the nth step is smaller than the other n, as each step divides by two the amount of tests to be included.

The amount of tests to be executed is ``n + n/2 + n/4 + n/8 + ... + 1`` which is roughly ``2n``. Executing each test costs ``O(1)`` (by the assumption before), so the total cost is ``O(2n)`` = ``O(n)``

If we take it by the amount of steps we need to manually execute is 1 for the whole, 1 for the half, 1 for the quarter, .... = ``O(log2 n)``

## Procedure

To keep the executed tests, I created a support branch where I deleted the tests that were selected to be excluded. Always executed "all tests in the suite" as this makes it faster to select in the IDE.

When the half taken was wrong, I reverted the last commit and selected the other half.

After finding the minimum sequence and solving the issue, this support branch was discarded

## Conclusion

In the real scenario, with around 100 tests, searching manually in the naïve way would not have been possible. It would have cost 100 steps, as the minimum set that produces ``F`` had size 2 (so only one step was necessary).

Applying the dichotomous search, in 8-10 steps I had finished, with the guarantee that no matter how many tests produced the ``F`` I would have found it in a reasonable amount of time.

## Comments

Finally, the root cause for the failing test ``F`` was the OrientDB InMemory implementation with Spring context, as the former does not allow two instances at the same time in the same JVM.

It was solved using ``@DirtiesContext`` in both cases of the minimum sequence that forms ``F``, so no matter which order the executor decides, the context will always be clean for the next execution.

We found this thanks to a teammate's intuition.
