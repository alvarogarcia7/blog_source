---
categories:
- internal-training
- open-discussion
- code-review
- pair-programming
- training
comments: true
date: 2015-02-07T18:54:54Z
title: 'Open discussion: On code reviews'
url: /2015/02/07/open-discussion-on-code-reviews/
---

At a client, I organized an open discussion on code reviews. We had a great conversation.

The main idea was to discuss about it and share the ideas each one had. I didn't want it to turn into a masterclass (see [the white belt](http://chimera.labs.oreilly.com/books/1234000001813/ch02.html#the_white_belt))

## Benefits

These are the main benefits we saw in it:

  * Increased trust
  * Learning from others, other approaches
  * Less defects, more quality
  * Increased [bus factor](http://en.wikipedia.org/wiki/Bus_factor), decreased information silos
  * Also:
    * Getting out of your comfort zone
    * Communicating more often (code style, edge cases, complaining, etc)



## Pair programming

Then we discussed about the topic of [code reviews](/{{site.category_dir}}/code-review) and [pair programming](/{{site.category_dir}}/pair-programming/):

  * How do they mix
    * Is the need for code review reduced when doing pair programming?
    * It is cheaper to catch defects when pairing than code review (e.g., less to modify, mental caches are hot, ...), so why do code reviews? [J. B. Rainsberger][jbrains] has an [article][jbrainsarticle] about it

  * Does it give you the same benefits?
    * I argued that it does, some of my colleagues argued against as one is "while doing" and the other is after.

## Practice, Practice, Practice

This is also a reference to a chapter by the same name ([here][practice3])

We proposed this problem: 

> Receive a list of numbers to a command-line (CLI) application and print their sum

I wrote simple code listing and we reviewed it. The code is [here as a gist](https://gist.github.com/alvarogarcia7/258faea12cb9375539fe)

(Just in case, I wrote this listing with some defects / smells on purpose)

Here are the comments:


 * Not all parameters will be added, only the first three
 * The parameters are out of order, overcomplicating things. Is it due to something? Should I be careful about it?
 * There is duplication (i.e., parsing from string)
 * Bad naming: what is ``a``, ``b``, ``c``?
 * There are no tests for it. No manual / javadoc either. Therefore, it's difficult to maintain
 * Difficult to test: a smell for bad design?
   * How to test the adding by itself? The output is to the console, so we have to capture it (at GMaur we published this tool: [legacyUtils](https://github.com/GMaur/legacyutils))
   * How to test the parsing if there is no mock to be injected? Only via state tests, therefore "end to end" tests as it includes the adding

 * Mixed concerns / responsibilities. Parsing the numbers and adding them are different concerns and should not be together 


## Conclusion

 * No one was against it
 * We all agreed that is important to do it even in time-constrained environments
 * It is also important to review our code reviews to make the most of it. The article by [J. B. Rainsberger][jbrainsarticle] is quite useful for that
 * Even small codes can be bad and need to be reviewed (as the example)
 * Quick and dirty proof of concept do not mix well with code reviews


[jbrains]: https://twitter.com/jbrains
[jbrainsarticle]: http://us2.campaign-archive2.com/?u=80ca60ec48ef77dfaa1f38943&id=acc77a0fb2&e=4a925444f9
[practice3]: http://chimera.labs.oreilly.com/books/1234000001813/ch05.html#practice_comma_practice_comma_practice
