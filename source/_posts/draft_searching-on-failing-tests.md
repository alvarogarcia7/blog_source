---
published: false
layout: post
title: "Searching on a suite of failing tests"
date: 2015-08-13 16:45:19 +0200
comments: true
categories: 
  - tip
  - search
  - binary-search
  - dicotomical-search
---

## Motivation

Today, at a client, in the green phase, we had a test suite which was failing. After a quick investigation, the whole suite fails but the test cases, individually, succeed.

So my first impression was that something was being shared between tests. Also confirmed because the failing class was an EndToEnd test.

A quick glance was not revealing anything interesting, so I decided to search which is the minimum suite (as opposed as to the whole suite) that makes the new testcase fail. This is very similar to what QuickCheck does, to generate the minimum testcase that breaks your property. In this way, you can focus in a possibly simpler[^1] feature.

[^1]: Because maybe the minimum testcase is more difficult than another.

This post covers how to perform this search.


## Order of the tests

In this case, the order is important, as the failed test suite (presumably) comes from a shared state set by a previous test.
