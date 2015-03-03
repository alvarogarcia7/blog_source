---
layout: post
title: "Open discussion: Behaviour-Driven Development"
date: 2015-02-15 02:30:38 +0100
comments: true
categories:
  - bdd
  - open-discussion
  - behaviour-driven-development
  - jbehave
  - training
---

This week we had a great discussion about Behavior Driven Development (BDD). We have explained it as a way of developing software based on requirements, via automatically tested specifications. For more information, see the [wikipedia's article on the subject](http://en.wikipedia.org/wiki/Behavior-driven_development)

I forgot to mention that this is the perfect start to TDD, as this is usually called the double-loop TDD. See a post on it on [coding is like cooking](http://coding-is-like-cooking.info/2013/04/outside-in-development-with-double-loop-tdd/)

In this double-loop TDD, the first thing is to create a BDD scenario, run it (red-1), create a unit test that reflects this red (red-2), pass it, refactor; go to red-1 as many times as you need, doing TDD cycles. When you think the feature is done, execute the BDD scenarios and go to green (outer layer) and refactor.

## (Our) Common setting

Going back to BDD, a common scenario would be the following:

Layers of software:

  * Domain-Specific Language (DSL). See [wikipedia's article](http://en.wikipedia.org/wiki/Domain-specific_language)
  * Test adapter: an interpreter for this DSL
  * Test software: test fixtures, methods, structures to arrange, act, and assert on the sut
  * Production software (system under test - SUT): thing being tested

## A BDD test vs A TDD test

Let's imagine a BDD test for a [linked list](http://en.wikipedia.org/wiki/Linked_list):

```
Given I have an empty list
When I add an element
Then I have an element on the list
```

now, the same test in TDD [using java, junit 4, hamcrest]

```java
@Test
public void add_an_element_to_an_empty_list(){
	MyLinkedList linkedList = new MyLinkedList();

	linkedList.add("something");

	assertThat(linkedList.size(), is(1));
}
```

In some aspects, a BDD and a TDD test are similar:

 * the given is the arrange, i.e., the prerequisite
 * the when is the act, i.e., the command
 * the then is the assertion, i.e., the postcondition

(for more information on this, see [Hoare's triple](http://en.wikipedia.org/wiki/Hoare_logic))

But in others, they are not. In BDD you do not specify the APIs, methods, etc. You only care about behavior.


## Conclusion
  
Benefits:

 * everyone might involved in the specification by example workshops (source: [ATDD by example](http://www.amazon.com/ATDD-Example-Test-Driven-Development-Addison-Wesley/dp/0321784154))
 * live specifications. managers can now understand the real state
 * [regression tests](http://en.wikipedia.org/wiki/Regression_testing) are much cheaper (from automation)

Gotchas:

 * Test only the happy paths
 * This has a cost, do not overdo it
 * Doesn't remove manual tests
 * How do you manage multiple scenarios
 * How fast should it be?
  
