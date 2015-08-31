---
published: false
title: "A basic working environment"
categories:
  - sample
  - environment
  - protip
---

Sometimes, when working out of somebody's else computer, I won't have my preferred IDE installed. 

In this case, what I usually do --as long as the programming session is more than 5 cycles--, is to configure my own environment. It includes:

  * text editor: $EDITOR is enough
  * test runner. A simple bash script executing the tests will suffice
  * git terminal: to commit, see differences, revert, etc
  * [optional] REPL if the language has it

## Details

More in depth, the test runner will be similar to this:

```bash
while [ true ]; do
    date;
    runhaskell Spec.hs;
    read i;
done
```

This program will:

  * print the date
  * execute the tests
  * read from the console, effectively waiting for the user to interact (an enter is enough)

The date is useful for both detecting the pace of the cycles and for scrolling up and down in the terminal.

If this date is much too necessary, it might indicate the presence of the TDD antipattern "El Bocazas" / "A mouthful", present in [Diseño Ágil con TDD](http://www.carlosble.com/downloads/disenoAgilConTdd_ebook.pdf). I use when the output of the test runner is extensive (such as ``runhaskell``).