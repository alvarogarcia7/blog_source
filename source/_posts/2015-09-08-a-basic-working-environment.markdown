---
layout: post
title: "A basic working environment"
date: 2015-09-08 07:46:56 +0200
comments: true
  - environment
  - protip
  - java
  - python
  - haskell
  - clojure-test
  - junit
  - test-runner
  - bash
  - snippet
  - carlos-ble
  - tdd
  - programming-session
  - bocazas
  - antipattern
---

Sometimes, when working out of somebody's else computer, I won't have my preferred IDE installed. 

In this case, what I usually do --as long as the programming session is more than 5 TDD cycles--, is to configure my own environment. It includes:

  * text editor: $EDITOR is enough
  * test runner. A simple bash script executing the tests will suffice
  * git terminal: to commit, see differences, revert, etc
  * [optional] REPL if the language has it

If the system already has it, I will use ``screen`` to cycle around the sessions.

## A simple test runner

More in depth, the test runner will be similar to this:

```bash
while [ true ]; do
    clear;
    date;
    runhaskell Spec.hs;
    read i;
done
```

This script will:

  * clear the screen (for better readability)
  * print the date
  * execute the tests
  * read from the console, effectively waiting for the user to interact (an enter is enough)

The date is useful for both detecting the pace of the cycles and for scrolling up and down in the terminal.

If this date is much too necessary, it might indicate the presence of the TDD antipattern "El Bocazas" / "A mouthful", present in [Diseño Ágil con TDD](http://www.carlosble.com/downloads/disenoAgilConTdd_ebook.pdf). I use when the output of the test runner is extensive (such as ``runhaskell``).

If the test runner output is too verbose, a possible step forward is to silence output in when every test is green (fragment):

```bash
output=$(runhaskell Spec.hs);
if [ $? = 0 ]; then
    echo "OK";
else
    echo $output;
fi
```

## Other test runners

As a side note, other test runners are quieter than others:

  * ``py.test`` will output the name of the file and "E" for error and "." for OK
  * ``clojure.test`` will output the name of the file and a total of tests and assertions. [Here](http://jakemccrary.com/blog/2015/04/25/quieter-clojure-dot-test-output/) to make it quieter
  * ``HSpec`` will output one line per ``describe`` and ``it``. Inspired by RSpec
  * ``Jasmine`` will output one line per ``describe`` and ``it``, as HSpec, as both of them are inspired by RSpec.
  * ``Junit`` and derivatives will produce the name of the file and total of tests and assertions. Also, on demand, a file containing test results so it can be interpreted by the IDE.
