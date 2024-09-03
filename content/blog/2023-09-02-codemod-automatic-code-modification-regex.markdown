---
categories:
- codemod
- code-modification
- refactor
- rewrite
- '2023'
- facebook
comments: true
date: 2023-09-02T11:31:52+04:00
title: 'Codemod: Helps you with large-scale rewrites that require human oversight.'
url: /blog/2023/09/02/codemod-automatic-code-modification-regex/
---

## Introduction

Practicing the [Tell don't ask kata in PHP](https://github.com/alvarogarcia7/tell-dont-ask-kata-php), original [here](https://github.com/racingDeveloper/tell-dont-ask-kata/), I was thinking on how to convert the usage of setters to the constructor:

Before:
```php
(new Category())->setName('food')->setTaxPercentage(10)
```

After:
```php
new Category('food', 10))
```

It occurred to me:
1. To use a Factory pattern, search-and-replace `new Category` for `new CategoryFactory`, but the call to `build` should be manually included in each call.
2. To use the fluent API in `setName->setTaxPercentage` to return a fully built object from `taxPercentage`. This can be mixed with the previous one to remove the setters from `Category`.
   1. Another variant is to leave the setters in `Category` to throw exceptions when called.
   2. This alternative doesn't solve the case where the setters are called as `setTaxPercentage->setName`

I wanted to perform this refactor automatically, to handle hundreds/thousands of calls automatically.

I tried using codemod for this step and it worked well.

## Codemod

[Codemod](https://github.com/facebookarchive/codemod) is a tool created by Facebook:

> Codemod is a tool/library to assist you with large-scale codebase refactors that can be partially automated but still require human oversight and occasional intervention. Codemod was developed at Facebook and released as open source.

It's currently archived, but it still works. It says it depends on python2, but I was able to use it with python3.

Codemod lets you use regexes to replace code, then manually reviewing the changes before writing to disk. Imagine a `git add -p` that will *not* write to disk before accepting.

## Code

I wrote a few test cases to test the conversion.

Before the modification:

```php
'order name, then taxpercentage (no spaces)' => [(new Category())->setName('food')->setTaxPercentage(10)],
'order taxpercentage, then name (no spaces)' => [(new Category())->setTaxPercentage(10)->setName('food')],

'order name, then taxpercentage (with spaces)' => [(new Category()) ->setName('food') ->setTaxPercentage(10)],
'order taxpercentage, then name (with spaces)' => [(new Category()) ->setTaxPercentage(10) ->setName('food')],

'order name, then taxpercentage (with newline)' => [(new Category())
    ->setName('food')
    ->setTaxPercentage(10)],
'order taxpercentage, then name (with newline)' => [(new Category())
    ->setTaxPercentage(10)
    ->setName('food')],

'order name, then taxpercentage (with newline and spaces)' => [(new Category())
       ->setName('food')
      ->setTaxPercentage(10)],
'order taxpercentage, then name (with newline and spaces)' => [(new Category())
          ->setTaxPercentage(10)
       ->setName('food')]
```


Codemod code:

```bash
#!/bin/bash

set -euxo pipefail

# Replacements when empty
## Consume name
codemod -m \
    --extensions php \
    "\(new Category\(\)\)\s*->setName\((\'.*?\')\)" \
    '(new Category(\1, x))'

## Consume taxPercentage
codemod -m \
    --extensions php \
    "\(new Category\(\)\)\s*->setTaxPercentage\((.*?)\)" \
    '(new Category(x, \1))'

# Replacements when one has been replaced already
## Consume name
codemod -m \
    --extensions php \
    "\(new Category\((\'.*?\'), x\)\)\s*->setTaxPercentage\((.*?)\)" \
    '(new Category(\1, \2))'

## Consume taxPercentage
codemod -m \
    --extensions php \
    "\(new Category\(x, (.*?)\)\)\s*->setName\((\'.*?\')\)" \
    '(new Category(\2, \1))'
```

After the modification:
```php
'order name, then taxpercentage (no spaces)' => [(new Category('food', 10))],
'order taxpercentage, then name (no spaces)' => [(new Category('food', 10))],

'order name, then taxpercentage (with spaces)' => [(new Category('food', 10))],
'order taxpercentage, then name (with spaces)' => [(new Category('food', 10))],

'order name, then taxpercentage (with newline)' => [(new Category('food', 10))],
'order taxpercentage, then name (with newline)' => [(new Category('food', 10))],

'order name, then taxpercentage (with newline and spaces)' => [(new Category('food', 10))],
'order taxpercentage, then name (with newline and spaces)' => [(new Category('food', 10))]
```

## Explanation

In this code, there three axes:
1. The attributes (`name`, `taxPercentage`)
2. The order of the attributes (`name` then `taxPercentage` or `taxPercentage` then `name`) 
3. The possible whitespace (` `, `\t`, `\n`, etc)

The attributes have been matched one by one:
1. With 0 arguments in the constructor, add `name` or `taxPercentage`. The other one(s) are replaced by hardcoded string `x`, a placeholder. This tackles both the first and the second axes.
2. With 1 argument in the constructor (with a placeholder `x`), add `name` or `taxPercentage`. This completes the conversion from setters to constructor arguments. If there were more attributes, this strategy could get too difficult and a new one should be found (see Appendix A)
3. The possible whitespace is handled by:
   1. A regex to handle zero or more whitespace (`\s*`)
   2. Telling codemod to include newline in the matcher (`-m`: Have regex work over multiple lines (e.g. have dot match newlines))

## Limitations

* In this particular example, the quotes are always single quotes (`'`). If it was a mix of single and double quotes (`'` and `"` respectively), the regex should include both cases. Maybe with a group syntax: `['"]` (untested) or with a non-greedy matcher until the comma or parenthesis.
* The code assumes that the type of the argument is always constant. Especially around the quotes: if `name` could be a quoted/unquoted argument, things could get tricky.

## Appendix A

Imagine there were many more attributes (e.g., 100). This current strategy could get long to implement (due to the [combinatorial explosion](https://en.wikipedia.org/wiki/Combinatorial_explosion#:~:text=In%20mathematics%2C%20a%20combinatorial%20explosion,the%20intractability%20of%20certain%20problems.)).

Another possible strategy could be to:

* Start from the first attribute, capture that setter and leave the rest in place. Capture the existing constructor arguments (currently 0): `\(new Category\(\).*?->setter1\((.*?)\).*;` 
* Start from the second attribute, capture that setter and leave the rest in place. Capture the existing constructor arguments (currently 1): `\(new Category\(.*?\).*?->setter2\((.*?)\).*;` 
* Continue until done.