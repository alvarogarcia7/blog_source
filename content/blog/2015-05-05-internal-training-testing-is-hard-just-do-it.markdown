---
categories:
- training
- internal
- internal-training
- tdd
- testing
- laziness
- open-questions
- article
- brown-bag-session
comments: true
date: 2015-05-05T23:00:17Z
title: 'Internal training: Testing is hard - just do it'
---

At a client, last week I've organized an internal training, in the form of a discussion about this article: [Testing is hard - just do it][article]

## Our thoughts

> When a bug is found, prove it exists with a test

This immediately reduces defect rate: the same regression cannot be introduced again

>  fix a bug a second time

If fixing a bug (having defects in your code) was 'waste', as defined by lean methodologies, it also is wast fixing it for the following times

> testing requires discipline

Agree. See quote by Larry Wall (this same article)

> [Three requirements for a good test suite]:
>
>  1. The tests need to be easier to write
>  1. The test suite must run, and pass, before any code is allowed out the door
>  1. Support from the project's leadership

Agree.

> Programming is like drawing water from a well

Good analogy

> I'm going to assume you are smarter than me [...]

This is related to 'doing clever things': when I write 'clever code', that has neither comments, nor it is massaged to be Clean Code, it will cost me many times more to modify / understand in the future vs massage it a little bit.

For me, an example of clever code are certain bitwise operations. Even though these operations are publicly available on websites and books, you must know about them before understanding the code.

Another example of clever code is taking assumptions, even if they are valid. Example: always return the second element because the first one is the header

```java
private String select(List<String> elements){
	return elements.get(2);
}
```

vs

```java
private String selectFirstValidLine(List<String> elements){
	List<String> validElements = skipHeader(elements);
	return validElements.get(1);
}
```

## Open questions / other ideas

  * There are tests that are more important than others. Is there a tool to assign them weights and inform about which preponderation of the codebase is broken? The same (i.e., more importance) can happen for production code.
  * Is SCRUM apt for junior developers? In the sense of the increased autonomy, more decisions, more required technical skills / values, etc
  * We discussed what differentiates a project with a shorter deadline from one with a longer deadline. The consensus was: you should do tests for any kind of project, the shorter deadline project won't allow as much time for refactoring
  * Tests iff (i.e., if and only if) working code
  * Tests do not guarantee lack of defects
  * Bijectiveness between tests and features (production code)
  {% comment %}
  Expand on this bijectiveness
  {% endcomment %}


[article]: http://davidsouther.com/#/posts/2013/10/30/testing-its-hard-just-do-it/
