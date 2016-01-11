---
layout: post
title: "Self-Study in January 2016"
date: 2016-01-01 16:55:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - January
  - 2016
  - read
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}

{% comment %}
	TODO - put FOOTNOTES at the end
{% endcomment %}

[^1]: ``What Is Functional Programming?``
[^2]: many of these fragments are quotes or paraphrased quotes

## Test cases in inner classes with JUnit

I've read [this answer][test-inner-class-junit] in stackoverflow about nested test runners in JUnit

Tags: junit, stackoverflow, answer, nested-runner

[test-inner-class-junit]: http://stackoverflow.com/questions/8758294/test-cases-in-inner-classes-with-junit

## Recording a Great Coding Screencast

I've read [this article][recording-screencast] by John Lindquist where he explains how he sets up the recording environment for egghead.

Tags: john-lindquist, record, screencast, egghead, code-screencast, record-video, video

[recording-screencast]: https://egghead.io/articles/recording-a-great-coding-screencast

## React Testing Course

I've watched [the full course][react-testing-course] by Trevor D. Miller on how to test react components and the libraries to make it possible.

Tags: trevor-miller, online-course, screencast, mooc, react, flux, egghead

[react-testing-course]: https://egghead.io/lessons/react-testing-jsx-error-diffs

## What Is Functional Programming?

I've read [this article][what-is-fp] by Kris Jenkins where the author describes functional programming from an input & output point of view.

Describes state of the system (maybe global or local) is input & output of the function

Produced state changes are called side effects. the author calls the state inputs as "side causes".

Side effects and causes are called complexity iceberg, as they are not visible under the water level (surface)

Also what a pure function is: one with no side causes or side effects; e.g., all its inputs are declared inputs (i.e., parameters) and all outputs are declared outputs (i.e., return value).

notes on jobbing programmer:

  * [at Becoming a Better Programmer](https://www.safaribooksonline.com/library/view/becoming-a-better/9781491905562/ch32.html), by Pete Goodliffe
  * [at Mastering Julia](https://books.google.es/books?id=P-09CgAAQBAJ&pg=PA67&lpg=PA67&dq=%22jobbing+programmer%22&source=bl&ots=U6Gvi9OSda&sig=J4qWDUtnk768SMjAK3yuEeWUv5Y&hl=es&sa=X&ved=0ahUKEwjz58K615DKAhUFVRQKHfyhAZAQ6AEIOTAE#v=onepage&q=%22jobbing%20programmer%22&f=false), by Malcolm Sherrington
  * [at What Makes a Good Programmer Good?](http://joshsymonds.com/blog/2013/11/03/what-makes-a-good-programmer-good/) by Josh Symonds

Tags: kris-jenkins, functional-programming, input, output, function, complexity-iceberg, pure-function, impure-function, side-effect, side-cause

[what-is-fp]: http://blog.jenkster.com/2015/12/what-is-functional-programming.html

## Which Programming Languages Are Functional?

I've read [this article][what-languages-are-functional] by Kris Jenkins where the author analyses languages, determining whether they are functional or not.

Describes how functional languages deal with side effects and side causes, and to identify them (was also explained in part one[^1]).

{% comment %}
	FOOTNOTES are at the beginning
{% endcomment %}

Tags: kris-jenkins, functional-programming, side-effect, side-cause, comparison, haskell, clojure, python, perl, javascript, java, map, reduce, hof, scala, moc

[what-languages-are-functional]: http://blog.jenkster.com/2015/12/which-programming-languages-are-functional.html

## Argument from the "Real World"

I've read [this article][argument-real-world] by Ron Jeffries that dismantles the "real world", as an excuse to use good practices: as in "we could use that, but we live in the real world".

>  [...] our job is to create the “real world” and not to imagine that our present situation is the only situation there is

This is exactly our day to day task, to imagine a real world solution to present problems, maybe involving software in between.

Can't we do this for product and team management?

Tags: ron-jeffries, agile, scrum, tdd, bdd, incremental-iterative-development, product-management, team-management

[argument-real-world]: http://ronjeffries.com/xprog/articles/argument-from-the-real-world/

## Self-Contained Systems

I've read [these slides][scs-slides] about a self-contained system (SCS), an architecture choice to split monolithic systems in parts. It includes the use of microservices in the business logic to solve domain specific problems. Written by Roman Stranghöner

> development, operation and maintenance [...] by a single team

Tags: big-bang-release, roman-stranghoner, self-contained-system, scs, microservice, monolith, monolithic-system, architecture

[scs-slides]: https://speakerdeck.com/rstrangh/self-contained-systems-1

## What Makes a Good Programmer Good?

I've read [this article][what-makes-programmer-good] by Josh Symonds on the characteristics that differentiate a good programmer from the jobbing programmers, the list of skills to be a good programmer.

Explains what factors are related and not related to being a good one[^2]:

  * knowing that most programming problems have already been solved. You have to know where to look for the solution
  * not to be afraid to dig deep into problems: detect a problem and be eager to solve it; figure out what is wrong
  * go to the source: use the source as a fact, as analysis needs to be based on facts, not beliefs
  * just do it: to be driven to act
  * instinctively tackle problems head-on, grabbing the bull by the horns instead of waiting for it to be solved automagically; start solving the problem
  * excited about grabbing problems, about facing the cutting edge
  * taking the time to reflect and understand it before moving one to the next one
  * communicate well: succintly and eloquently expressing your thoughts. The author thinks this might be the most important aspect of all.
  * to be truly caring about what you do: not just a job, but a hobby, an interest, even a fascination; great programmers are always programming
  * thinking of programming of a way to shape the world, not just a money-making activity

Tags: jobbing-programmer, good-programmer, career, career-management, skill, josh-symonds, quote

[what-makes-programmer-good]: http://joshsymonds.com/blog/2013/11/03/what-makes-a-good-programmer-good/

## The Best Programming Language (or How to Stop Worrying and Love the Code)

I've read [this article][best-pro-lang] by Álvaro Castro-Castilla analysing different programming languages and what to choose each of them.

Tags: alvaro-castro-castilla, programming-language, language, analysis, comparison

[best-pro-lang]: http://blog.fourthbit.com/2014/03/01/the-best-programming-language-or-how-to-stop-worrying-and-love-the-code

## Tomates en el campo

I've read [this article][tomates-en-campo] by Ángel Medinilla, about how to cultivate teams, instead of creating or building them. Talks about the mandatory conditions, necessary factors and how to enable it, not guaranteeing success.

Tags: angel-medinilla, team-management, spanish, team, analogy

[tomates-en-campo]: http://www.presionblogosferica.com/2011/02/20/tomates-en-el-campo/

## Default constructors in Java

I've read [this answer][java-private-constructor] in stackoverflow about extending a java class that has a private constructor.

Tags: stackoverflow, answer, java, constructor, syntax

[java-private-constructor]: http://stackoverflow.com/questions/17068389/default-constructors-in-java

## What's So Great About Reducers?

I've read [this article][intro-reducers] by Guillermo Winkler explaining reducers, a type of divide and conquer strategy clojure.

Tags: guillermo-winkler, reducer, clojure, parallelism, concurrency

[intro-reducers]: http://blog.guillermowinkler.com/blog/2013/12/01/whats-so-great-about-reducers/

## Don’t use Slack?

I've read [this article][open-sw-slack] by Christian Heilmann about the relation between open / closed software and accessibility.

Tags: slack, christian-heilmann, accessibility, open-source, propietary-software, closed-source

[open-sw-slack]: https://medium.com/hacker-daily/don-t-use-slack-8e70452f3eed

