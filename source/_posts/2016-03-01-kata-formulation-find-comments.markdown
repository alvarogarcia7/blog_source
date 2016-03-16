---
layout: post
title: "Kata formulation: Find the comments"
date: 2016-03-01 08:57:28 +0200
comments: true
categories:
  - kata
  - formulation
---

Little Johnny is inspecting a PHP source code that contains comments. These comments contains words that he doesn't understand, as it written in another language.

## Rules and constraints

A comment (a subset of PHP comments) is defined as:

  * A line containing C-style comment delimiter, except when it is within a string
    * ``// hello C-style`` is a valid comment
    * ``echo "//";`` is not a comment
    * ``echo '//';`` is not a comment
  * A line containing Perl-style comment delimiter, except when it is within a string
    * ``# hello Perl-style`` is a valid comment
    * ``echo "#";`` is not a comment
    * ``echo '#';`` is not a comment
  * There are no multi-line comments


## Samples

The code (both project and samples) can be [found here](https://github.com/alvarogarcia7/kata-formulation-find-comments)

## Requirements

Please do not read ahead, just read the current assignment, do it, then read the next one:

  1. Can you help Little Johnny fetch all those comments?
  1. These messages have not been audited yet and we want to publish the code, so it is better to remove the comments. Can you do it?

## Optional requirement

As an optional task, when the problem is finished (you can attack in your preferred order), there must be an executable jar with some parameters to process the current folder with the 'working modes' specified above.

