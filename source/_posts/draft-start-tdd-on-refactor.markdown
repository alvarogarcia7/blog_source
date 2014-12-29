---
published: false
---


#Should we start the TDD cycle on refactor?


In this lexical scope, TDD by example is referring to this book[^tddbyexample]

###The TDD cycle

Altough [Kent Beck][kentbeck] in his book Test-Driven Development by example explains in "Part I: the money example"[^tddbyexampleparti] that one should 

> quickly add a test;
> run all the tests and see the new one fail [...]
> --- Kent Beck

Implying that the TDD cycle starts with the red. Later on he explains that the cycle continues with green and refactor and back to red.

But I've been hearing for a while that there're some useful refactors to be done before introducing new code. Rings in my head but the only example I have is Xavi Gost's "La economía del refactoring[^refactoringeconomy]"


###Refactoring 
Let's take a look at the definition of refactor (found [here](http://www.refactoring.com/)):

> [Refactoring] is a disciplined technique for restructuring an existing body of code, altering its internal structure without changing its external behavior.
>  --- Martin Fowler

I've found some info on [stackoverflow](http://stackoverflow.com/questions/1355101/test-code-refactor-when-should-we-start-a-refactoring) about the subject. The currently [accepted answer](http://stackoverflow.com/a/1355782) points out some interesting comments:

 - Do not refactor on red. Always a good reminder
 - If you are refactoring for introducing a feature, how much refactor is enough? This is speculative development, possibly taking much time from needed development

The last point is the one that interests me the most:

 - Your refactoring might not be where you're going to introduce new production code[^fakepains] (spatial caché)
 - You might end up introducing features after a few hours/days of refactoring, therefore losing focus on the refactor you did and why (local caché)
 - Given that I've already "cleaned up" this, I could also go somewhere else (slippery slope). Heard from [Xavi Gost][xavigost] at the CAS2014 at his talk[^refactoringeconomy]: 

> No está justificado hacer cambios fuera de la rebanada.
> (roughly translated to "It's not justified to change outside the bread slice")

as Xavi was referring to software as sliced bread instead of layers, vertical rather than horizontal

###Should you do it?

//TODO complete

pros:
- can allow for less refactoring at the end of the cycle
- not talking about duplication but to refactoring to patterns
- leave the refactoring to the last responsible moment
- simplify as no need to reimplement things (that might be a )
cons:
- speculative development
- refactoring in wrong places

//END TODO

Not useful on first round of a new feature, you can use a lambda transition to the red again


## Conclusions

Short answer: it mainly depends on your environment:

 - You: experience, common sense (sadly) ---another post coming---, benefit/time-wasted ratio
 - Your project: how tight are deadlines, how critical that code is, the team's pressure

Long answer:

Yes, //TODO

 1. There is a fine line between fixing code and rewriting code (Egoless programming #4). Don't be a lone enforcer
 2. Strictly follow the boy scout rule but only around your campfire, not outside of it.

[kentbeck]: https://twitter.com/KentBeck
[xavigost]: https://twitter.com/xav1uzz
[^refactoringeconomy]: That talk is not yet available (AFAIK), but there's a [post](http://ocana.github.io/articles/Conferencia-Agile-Spain-2014-primer-dia/) about it (Spanish)

[^tddbyexample]: Test-Driven Development by example (ISBN-13: 078-5342146530), available [on Amazon][amazontddbyexample]

[amazontddbyexample]: http://www.amazon.com/Test-Driven-Development-By-Example/dp/0321146530

[^tddbyexampleparti]: from book [Test-driven Development by example][amazontddbyexample] part I description, before chapter I

[^fakepains]: The "pains" you might feel before introducing new features might not be real
