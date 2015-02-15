----
published: false
categories:
  - bdd
  - open-discussion
  - behaviour-driven-development
  - jbehave
----

This week we had a great discussion about Behavior Driven Development (BDD). We have explained it as a way of developing software based on requirements, via automatically tested specifications. For more information, see the [wikipedia's article on the subject](http://en.wikipedia.org/wiki/Behavior-driven_development)

I forgot to mention that this is the perfect start to TDD, as this is usually called the double-loop TDD. See a post on it on [coding is like cooking](http://coding-is-like-cooking.info/2013/04/outside-in-development-with-double-loop-tdd/)

layers of software:

  * DSL. TODO what is a DSL
  * Test-adapter
  * Test software
  * Production software (SUT)
  
Benefits:

 * everyone might involved in the specification by example workshops
 * live specifications. managers can now understand the real state
 * regression tests are much cheaper (from automation)

Gotchas:

 * Test only the happy paths
 * This has a cost, do not overdo it
 * Doesn't remove manual tests
 * How do you manage multiple scenarios
 * How fast should it be?
  
