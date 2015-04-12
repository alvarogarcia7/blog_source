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

Experience report on Jason Gorman's "Test-driven development intensive workshop"

I attended this training in the [Greefell housing & training][training-place] in South Wimbledon, London SW19 1JZ.

## Introduction

There were 23 of us, including me. We spent some half hour introducing ourselves before the training started. I remember about a tester that came to the workshop "wanting to know more about this testing methodology". Jason's answer was priceless: "I'm sorry but you came to the wrong place: this is not about testing". (See more on this topic [here][tdd-is-not-a-good-name])

At 10:00 sharp, [Jason Gorman][jason-gorman] started a set of slides explaining what TDD is about, including:

  * productivity:
    * no company is willing to give you a "get out of jail free" card to get out of the productivity zone
    * a drop in the productivity, at least for the first weeks
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
  * Some ideas about [Simple development][simple-development] ([XP][xp])

## Exercises

All exercises were done in pairs, always switching one half of the pair. He asked for someone in the pair to raise, especially if you were not a programmer (e.g., tester, manager)

### First exercise: Banking

```Write a program that is capable of transfering money from an account to another```

In pairs, a chance to practice arrange, act, assert

Later, he did it some live coding to develop the same kata, practicing "TDD as if you mean it" ([Keith Braithwaite][keith-b]'s original idea). We discovered together the "primitive obsession" and "feature envy" smells

### Second exercise: Fibonacci sequence generator

```Write a program that is capable of generating Fibonacci sequences, no shorter that 8 and no longer than 50```

In pairs, a chance to practice baby steps.

My pair and I had the chance of discovering the importance of understanding correctly the requirements before writing a line of code. Also, I learnt about the different ways of doing TDD. In this case, my pair executed the tests via a main (java class) and saw the failures on the console. When proposed to do it in the JUnit runner the IDE has, he said he preferred it in his own ways.

Jason did some live coding to show how he approached and triangulated this exercise. 

I really liked some of what he said: I like to make the API correct from the first moment so I will ask questions that are correct but only check answers for things that I have already implemented. Example:

As the generated sequence can only have 8 <= x <= 50 elements, a list returning a single element would not be correct. So

```java
@Test
public void theFirstElementIsZero(){
	assertThat(new FibonacciSequence().generate(8)[0], is(0));
}
```

### Third exercise: FizzBuzz

```Write a program that is capable of returning a string with all numbers less than 100 that are using the FizzBuzz pattern. This FizzBuzz pattern converts the divisors of 3 to 'fizz', divisors of 5 to 'buzz' and divisors to both to 'fizzbuzz'```

I discovered that this FizzBuzz is a drinking game in the UK.

### Fourth exercise: CRC cards

Before this exercise there was a short introduction on [Class-responsibility-collaboration card][crc-cards]

A CRC card is as follows:

top: class name
half left: responsibilities
half right: collaborations

Following an example about a movie library, there were six user stories, described at high level, without acceptance criteria.

We had to create an acceptance criteria for this user story. Later create a set of CRC cards and finally partially implement said feature. 

Very interesting exercise, such a pity that there wasn't more time to complete this exercise or see him doing it

## Knowledge pearls

He dropped some knowledge pearls (that I'm going to use myself):

Q: When are you done with TDD?
A: When you can not think of more tests for your suite

Q: What do we do after TDD?
A: (No answer)
Q: Starts with "T". Any idea?
A: Testing. Test for the purpose of testing, not TDD


## Conclusions


[training-place]: http://www.grenfell-housing.co.uk/
[jason-gorman]: http://twitter.com/@jasongorman
[pola]: http://en.wikipedia.org/wiki/Principle_of_least_astonishment
[tdd-is-not-a-good-name]: TODO
[simple-development]: TODO
[xp]: TODO
[keith-b]: https://twitter.com/keithb_b
[crc-cards]: http://en.wikipedia.org/wiki/Class-responsibility-collaboration_card

TODO: add reference to TDD books
TODO add that GOOS is pronounced "/gús/" in English
