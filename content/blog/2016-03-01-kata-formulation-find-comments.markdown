---
categories:
- kata
- formulation
- php
- comment
- exercise
comments: true
date: 2016-03-01T08:57:28Z
title: 'Kata formulation: Find the comments'
url: /blog/2016/03/01/kata-formulation-find-comments/
---

Little Johnny is inspecting a PHP source code that contains comments. These comments contains words that he doesn't understand, as it written in another language.

## Rules and constraints

The source code in the PHP files does not need to be correct.

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
    * ``/* ... */`` is not a comment

You can do this kata in any language you want. In any case it is not allowed to use a PHP parser. This task must be done manually.

## How to start

  * Clone/fork (any stars are welcome) [this repo][formulation]
  * Run the tests. [See this][running-tests] for help
  * They should be red.
  * Go to production code and fix it
  * Have fun (happy kata and happy koding!)

## Requirements

Please do not read ahead, just read the current assignment, do it, then read the next one:

  1. Can you help Little Johnny fetch all those comments?
  1. These messages have not been audited yet and we want to publish the code, so it is better to remove the comments. Can you do it?

## Optional requirement

As an optional task, when the problem is finished (you can attack in your preferred order), there must be an executable jar with some parameters to process the current folder with the 'working modes' specified above.

(This formulation is also present at the [repository][kata-readme] )



[formulation]: https://github.com/alvarogarcia7/kata-formulation-find-comments
[running-tests]: https://github.com/alvarogarcia7/cli-app-base-clojure/blob/master/README.md#tests
[kata-readme]: https://github.com/alvarogarcia7/kata-formulation-find-comments/blob/master/README.md