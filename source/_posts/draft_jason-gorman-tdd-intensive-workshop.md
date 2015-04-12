---
published: false
categories:
  - sample
  - training
  - workshop
  - experience-report
  - jason-gorman
  - uk
  - tdd
  - crc-card
  - pair-programming
---

20150412-150211 AGB

Experience report on [Jason Gorman][jason-gorman]'s "[Test-driven development intensive workshop][workshop-link]"

I attended this training in the [Greenfell housing & training][training-place] in South Wimbledon, London SW19 1JZ.

## Introduction

There were 23 of us, including me. We spent some half hour introducing ourselves before the training started. I remember about a tester that came to the workshop "wanting to know more about this testing methodology". Jason's answer was priceless: "I'm sorry but you came to the wrong place: this is not about testing". (See more on this topic [here][tdd-is-not-a-good-name])

At 10:00 sharp, he started a set of slides explaining what TDD is about, including:

  * productivity:
    * no company is willing to give you a "get out of jail free" card to get out of the productivity zone
    * a drop in the productivity, at least for the first weeks
    * you have to find a time slot in your schedule to practice TDD, otherwise it's like learning to swim while crossing the Atlantic Ocean
  * You have to feel uncomfortable not doing TDD
  * triangulation: 
    * how each problem is different
    * you can only learn it by doing
  * TDD styles:
    * Chicago style by Kent Beck. Reference book would be "TDD by example"
    * London school or Mockist style by Steve Freeman and Nat Pryce. Reference book would be "Growing object oriented software, guided by tests"
  * 13 good habits for a sustainable test-driven development way
  * The basic TDD cycle:
    * an executable specification, encoded in a failing test
    * pass the test in the simplest way 
    * refactor
    * (talking with another attendee, he described to me a new TDD phase called redesign. Maybe another post will explain this in deeper detail level)
  * Some ideas about [Simple design][simple-design] ([XP][xp])
  * Shown a wrong example of mixing assertions (state) and verifications (interactions)
  * More than one reason to go wrong makes the code non-trivial anymore. Non-trivial code requires tests
  * You want to see the test failing for the right reason: remove / finish code that does not compile, fix null pointers, array out of bounds exceptions, etc. See it fail with "was <X> but expected <Y>" or "NoInteractionException" (hamcrest error and mockito error, respectively; both java)
  * Duplication as a sign of design smell
  * Process of generalising code: discover the need for patterns
  * The most difficult skill in TDD is refactoring [and design; note is mine]. The TDD cycle is very easy.
    * TDD is much more in demand than refactoring, even though the former includes the latter
  * Refactor until you're happy with the code, until you stand by it

## CRC Cards



A [Class-responsibility-collaboration card][crc-cards] is as follows:

  * top: class name
  * half left: responsibilities
  * half right: collaborations

Notes from the slides:

  * each then is an outcome
    * do not mix outcomes and implications. An example: after winning the lottery, the money should be transferred to my bank account and I can buy a yatch. The former is an outcome (change in state) and the latter an implication (a new action that is now enabled)
    * an outcome is mapped to an assertion, while a collaboration is mapped to an interaction (verify in mockito)
  * Given / When / Then is not enough to implement an executable specification. We need examples, detail
  * OO: send messages to distribute responsibility.
    * A Then is an unique responsibility
  * Topmost object: no one connects with it
  * Put the work where the data is
  * Tell, don't ask [^1] vs data driven design (tell a collaborator what to do vs ask for values and do the work yourself)
  * You want as few interactions as possible (related to the tell, don't ask)
  * More objects than outcomes is a bad thing (design smell) (?)
  * CRC is a very mechanical exercise, do not overthink it
  * Describe outcomes as changes in OO (new, destroy, relationships, modify fields / state)
  * Continuous integration is not necessarily about shipping the code at each commit but having it shippable at each commit, as always having a product that is ready for its production phase




## Exercises

All exercises were done in pairs, always switching one half of the pair. He asked for someone in the pair to raise, especially if you were not a programmer (e.g., tester, manager)

### First exercise: Banking

```Write a program that is capable of transfering money from an account to another```

A chance to practice arrange, act, assert

Later, he did it some live coding to develop the same kata, practicing "[TDD as if you meant it][tdd-as-if-you-meant-it]" ([Keith Braithwaite][keith-b]'s original idea). We discovered together the "primitive obsession" and "feature envy" smells. We tried doing as few decisions as possible.

### Second exercise: Fibonacci sequence generator

```Write a program that is capable of generating Fibonacci sequences, no shorter that 8 and no longer than 50```

A chance to practice baby steps.

My pair and I had the chance of discovering the importance of understanding correctly the requirements before writing a line of code. Also, I learnt about the different ways of doing TDD. In this case, my pair executed the tests via a main (java class) and saw the failures on the console. When proposed to do it in the JUnit runner the IDE has, he said he preferred it in his own ways.

Jason did some live coding to show how he approached and triangulated this exercise. 

I really liked some of what he said: I like to make the API correct from the first moment so I will ask questions that are correct but only check answers for things that I have already implemented. Example:

As the generated sequence can only have 8 <= x <= 50 elements, a list returning a single element would not be correct. So

```java
//class FibonacciTests
@Test
public void theFirstElementIsOne(){
	assertThat(new FibonacciSequence().generate(8)[0], is(1));
}
```

### Third exercise: FizzBuzz

```Write a program that is capable of returning a string with all numbers less than 100 that are using the FizzBuzz pattern. This FizzBuzz pattern converts the divisors of 3 to 'fizz', divisors of 5 to 'buzz' and divisors to both to 'fizzbuzz'```

I discovered that this FizzBuzz is a drinking game in the UK.

### Fourth exercise: CRC cards

Before this exercise there was a short introduction on [Class-responsibility-collaboration card][crc-cards], explained above

Following an example about a movie library, there were six user stories, described at high level, without acceptance criteria.

We had to create an acceptance criteria for this user story. Later create a set of CRC cards and finally partially implement said feature. 

Very interesting exercise, such a pity that there wasn't more time to complete this exercise or see him doing it

## Knowledge pearls

He dropped some knowledge pearls (that I'm going to use myself):

```
Q: When are you done with TDD?
A: When you can not think of more tests for your suite
```

```
Q: What do we do after TDD?
A: (No answer)
Q: Starts with "T". Any idea?
A: Testing. Test for the purpose of testing, not TDD
```

Close concepts interested in responsibilities:
  * Conceptual diagram and class diagram
  * Instance diagram
  * Knowledge map and tag cloud

Regarding legacy code:
  * Isolate big balls of mud into parts and test these as end-to-end. Also connected to isolating groups of nodes into the class graph
  * Understand what the code does, not the architecture
  * Do not use a mock to help you test legacy code, use it just as a design tool. (It might be a good idea to use it temporarily while you refactor, but remove it afterwards)
  * Tests with mocks double down on the design: if it is broken, it will be a drag more than help


Test on the boundaries. Many times we test in the middle of the algorithm but forget the boundaries, where many special cases hide


## Conclusions

TODO complete conclusions


[training-place]: http://www.grenfell-housing.co.uk/
[jason-gorman]: http://twitter.com/@jasongorman
[workshop-link]: http://www.codemanship.co.uk/tdd.html
[pola]: http://en.wikipedia.org/wiki/Principle_of_least_astonishment
[tdd-as-if-you-meant-it]: http://www.infoq.com/presentations/TDD-as-if-You-Meant-It
[tdd-is-not-a-good-name]: TODO
[simple-design]: http://www.extremeprogramming.org/rules/simple.html
[xp]: http://www.extremeprogramming.org
[keith-b]: https://twitter.com/keithb_b
[crc-cards]: http://en.wikipedia.org/wiki/Class-responsibility-collaboration_card
[^1]: As described by [Martin Fowler](http://martinfowler.com/bliki/TellDontAsk.html) and the [Pragmatic Bookshelf](https://pragprog.com/articles/tell-dont-ask)

TODO: add reference to TDD books
TODO add that GOOS is pronounced like the goose animal ("/gús/") in English
