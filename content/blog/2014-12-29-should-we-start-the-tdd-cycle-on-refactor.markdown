---
categories:
- TDD
- refactoring
- CAS2k14
- new-idea
- hypothesis
comments: true
date: 2014-12-29T20:30:01Z
title: Should we start the TDD cycle on refactor?
url: /blog/2014/12/29/should-we-start-the-tdd-cycle-on-refactor/
---

In this lexical scope, TDD by example is referring to this book[^tddbyexample], available [on Amazon][amazontddbyexample]

###The TDD cycle

Altough [Kent Beck][kentbeck] in his book Test-Driven Development by example explains in "Part I: the money example"[^tddbyexampleparti] that one should 

> quickly add a test;

> run all the tests and see the new one fail [...]

> <cite>Kent Beck </cite>

Implying that the TDD cycle starts with the red. Later on he explains that the cycle continues with green and refactor and back to red.

But I've been hearing for a while that there're some useful refactors to be done before introducing new code. Rings in my head but the only example I have is Xavi Gost's "La economía del refactoring[^refactoringeconomy]"


###Refactoring 
Let's take a look at the definition of refactor (found [here](http://www.refactoring.com/)):

> [Refactoring] is a disciplined technique for restructuring an existing body of code, altering its internal structure without changing its external behavior.

>  <cite>Martin Fowler</cite>

I've found some info on [stackoverflow](http://stackoverflow.com/questions/1355101/test-code-refactor-when-should-we-start-a-refactoring) about the subject. The currently [accepted answer](http://stackoverflow.com/a/1355782) points out some interesting comments:

 - Do not refactor on red. Always a good reminder
 - If you are refactoring for introducing a feature, how much refactor is enough? This is speculative development, possibly taking much time from needed development

The last point is the one that interests me the most:

 - Your refactoring might not be where you're going to introduce new production code[^fakepains] (spatial caché)
 - You might end up introducing features after a few hours/days of refactoring, therefore losing focus on the refactor you did and why (local caché)
 - Given that I've already "cleaned up" this, I could also go somewhere else (slippery slope). Heard from [Xavi Gost][xavigost] at the CAS2014 at his talk [La economía del refactoring][laeconomiadelrefactoring]

> No está justificado hacer cambios fuera de la rebanada.

Roughly translated to "It's not justified to change outside the bread slice", as Xavi was referring to software as sliced bread instead of layers, vertical rather than horizontal

###Should you do it?

 - Doing it would be a good thing, as long as you know in advance what will be affected by the next feature.
 - It can allow for less refactoring at the end of the cycle. This is not about duplication but refactoring to patterns. There might be a gain in refactoring to a pattern before introducing another feature. An example might be adding a new strategy when it's currently coded as if-then-else
- The last responsible moment might be before or after introducing the feature. You decide.
- Work less as there's no need for adding new cases to old structures and then simplifying

###Should you not do it?

- Foreseeing the future is difficult, therefore you might end with unused development, as it is speculating
- Related to the last point, you might end refactoring in the wrong places. There's no current business value to it.
- Not useful on first round of a new feature, you can use a lambda transition to the red again. But then, this is not a general pattern, only applicable to a big percent of cases.


## Conclusions

Short answer: it mainly depends on your environment:

 - You: experience, common sense (sadly) ---another post coming---, benefit/time-wasted ratio
 - Your project: how tight are deadlines, how critical that code is, the team's pressure

Long answer: Yes, as long as:
 1. You realize there is a fine line between fixing code and rewriting code (Egoless programming #4). Don't be a lone enforcer
 2. Strictly follow the boy scout rule but only around your campfire, not outside of it.
 1. You know your domain, pitfalls and team well
 1. You want to test this hypothesis and post an answer

###Sources

 - [La economía del refactoring][laeconomiadelrefactoring], [Xavi Gost][xavigost]
 - [Test-Driven Development by example][amazontddbyexample], [Kent Beck][kentbeck]
 - [Refactoring.com](http://refactoring.com), [Martin Fowler][martinfowler]


[kentbeck]: https://twitter.com/KentBeck
[xavigost]: https://twitter.com/xav1uzz
[martinfowler]: https://twitter.com/martinfowler

[^refactoringeconomy]: That talk is not yet available (AFAIK), but there's a [post](http://ocana.github.io/articles/Conferencia-Agile-Spain-2014-primer-dia/) about it (Spanish)

[laeconomiadelrefactoring]: http://cas2014.agile-spain.org/sessions/sesion-1h-la-economia-del-refactoring-una-vision-desde-la-gestion-economica-del-proyecto-xavier-gost/

[^tddbyexample]: Test-Driven Development by example; Beck, K. (ISBN-13: 078-5342146530)

[amazontddbyexample]: http://www.amazon.com/Test-Driven-Development-By-Example/dp/0321146530

[^tddbyexampleparti]: from the book, description of part I, before chapter I

[^fakepains]: The "pains" you might feel before introducing new features might not be real