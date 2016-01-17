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

## Towards an understanding of technical debt

I've read [this article][understanding-tech-debt] by Kellan Elliott-McCrea about some definitions of technical debt and why taking care of it matters for the future.

Talks about the way of inheriting projects by other teams and the paradox of "investing more time to fix the problem than originally invested in coding it." Also about judgement.

I find it related to the "theory building" by Naur.

> There are at least 5 distinct things we mean we say “technical debt”.
>
>  1. Maintenance work: buying breathing room
>  2. Features of the codebase that resist change
>  3. Operability choices that resist change
>  4. Code choices that suck the will to live
>  5. Dependencies that resist upgrading

Tags: kellan-elliott-mccrea, kellan, technical-debt, list, definition, quote

[understanding-tech-debt]: https://medium.com/@kellan/towards-an-understanding-of-technical-debt-ae0f97cc0553

## Lifetimes of cryptographic hash functions

I've read [this article][crypto-hash] by Valerie Aurora where she explains the lifetimes of cryptographic hash functions up to 2012.

Tags: hash-function, valerie-aurora

[crypto-hash]: http://valerieaurora.org/hash.html

## Collisions for Hash Functions - MD4, MD5, HAVAL-128 and RIPEMD

I've read [this paper][collisions-hash-functions] that explains some collisions found for MD4, MD5, HAVAL-128 and RIPEMD. By Xiaoyun Wang, Dengguo Feng, Xuejia Lai, Hongbo Yu.

Tags: collision, hash-function, xiaoyun-wang, dengguo-feng, xuejia-lai, hongbo-yu, paper

[collisions-hash-functions]: https://eprint.iacr.org/2004/199.pdf

## The future is parallel: What's a programmer to do?

I've read [these slides][steele-parallel] by Guy Steele about the differences in linear vs parallel computing and about the old habits that we still have.

Some quotes:

### Motivation

> * Good sequential code minimizes total number of operations.
>   * Clever tricks to reuse previously computed results.
>   * Good parallel code often performs redundant operations to reduce communication.
> * Good sequential algorithms minimize space usage.
>   * Clever tricks to reuse storage.
>   * Good parallel code often requires extra space to permit temporal decoupling.
> * Sequential idioms stress linear problem decomposition.
>   * Process one thing at a time and accumulate results.
>   * Good parallel code usually requires multiway problem decomposition and multiway aggregation of results.

### A New Mindset

> * DO loops are so 1950s! (Literally: Fortran is now 50 years old.)
> * So are linear linked lists! (Literally: Lisp is now 50 years old.)
> * Java-style iterators are so last millennium!
> * Even arrays are suspect!  
> * As soon as you say ``first, SUM = 0`` you are hosed. Accumulators are BAD.
> * If you say, “process subproblems in order,” you lose.
> * The great tricks of the sequential past DON’T WORK.
> * The programming idioms that have become second nature to us as everyday tools DON’T WORK.

### The Parallel Future

> * We need new strategies for problem decomposition.
> * Data structure design/object relationships
> * Algorithmic organization
> * Don’t split a problem into “the first” and “the rest.”
> * Do split a problem into roughly equal pieces. Then figure out how to combine general subsolutions.
> * Often this makes combining the results a bit harder.
> * We need programming languages and runtime implementations that support parallel strategies and hybrid sequential/parallel strategies.
> * We must learn to manage new space-time tradeoffs

### Conclusion

> * A program organized according to linear problem decomposition principles can be really hard to parallelize.
> * A program organized according to parallel problem decomposition principles is easily run either in parallel or sequentially, according to available resources.
> * The new strategy has costs and overheads. They will be reduced over time but will not disappear.
> * In a world of parallel computers of wildly varying sizes, this is our only hope for program portability in the future.
> * Better language design can encourage better parallel programming.

Tags: representation, computation, catamorphism, list, associativity
commutativity, idempotency, abstract-data-type, slide, operator, mapreduce, mindset, comparison, parallel, guy-steele,  linear-computing, parallel-computing

[steele-parallel]: http://groups.csail.mit.edu/mac/users/gjs/6.945/readings/MITApril2009Steele.pdf

## Surviving being senior (tech) management.

I've read [this article][surviving-senior-mgmnt] by Kellan Elliott-McCrea about the basic things to do as management to retain the best performance:

  * exercise
  * someone to talk to
  * discuss with peers, in petit commité
  * personal mastery project

Tags: kellan-elliott-mccrea, kellan, list, management, tip, exercise, pet-project

[surviving-senior-mgmnt]: https://medium.com/@kellan/surviving-being-senior-tech-management-aa6654efd027

## You Don’t Need More Free Time

I've read [this article][more-free-time] about the quality of life, work-life balance by Cristobal Young on why the time where we have more fun is spent together, in company.

Tags: cristobal-young, time-management, work-life-balance

[more-free-time]: http://www.nytimes.com/2016/01/10/opinion/sunday/you-dont-need-more-free-time.html

## Taking Longer to Reach the Top Has Its Benefits

​I've read [this article][patience-career-benefits] that explains how having work life balance and preventing burn out syndrome, aided by a patient career, can help with reaching a higher destination on your career. By Karen Firestone

Tags: career-management, patience, burnout, burn-out, ceo, karen-firestone, professional-career, improvement

[patience-career-benefits]: https://hbr.org/2015/12/taking-longer-to-reach-the-top-has-its-benefits

## All bugs lead to Rome

I've read [this article][all-bugs-to-rome] that explains how the author tracks down a bug present in mail communication, just for a handful of client. By Nick Baum

Tags: track-down, bug, defect, mailgun, rot13, nick-baum

[all-bugs-to-rome]: https://medium.com/@nickbaum/all-bugs-lead-to-rome-505a1205bb9

## Design Patterns — Coming Full Circle

I've read [this article][design-patterns-flux-1] that explains what a design pattern is, where does it come from, the figure of Christopher Alexander and the architecture design patterns. By Jen Carlile

Tags: design-pattern, christopher-alexander, jen-carlile, comparison, example, proxy, command, observer

[design-patterns-flux-1]: https://medium.com/swlh/design-patterns-coming-full-circle-d8292e261dc6

## React + Performance = ?

I've read [this article][comparison-react-perf] by Paul Lewis comparing the performance and developer experience of react.js and vanilla js.

Conclusion: under his measurements, react is too slow once the amount of elements is big on mobile devices

Tags: paul-lewis, comparison, javascript, react, mobile, perfomance, jsperf, js-perf, vanilla-javascript

[comparison-react-perf]: https://aerotwist.com/blog/react-plus-performance-equals-what/

## Full speed, then stop, gracefully

I've read [this article][full-speed-then-stop] about how to end professional relationships with an employer or a team.

Makes an analogy to the hockey sport attitude: "full speed, then stop"

Tags: seth-godin, professional, employer, team-management, team, analogy

[full-speed-then-stop]: http://sethgodin.typepad.com/seths_blog/2015/12/full-speed-then-stop.html

## Por qué tendrás que facturar 55.000€ para cobrar una nómina de 26.000€ 

I've read [this bonilista][freelancer-vs-employee] by David Bonilla on why freelancers need to bill more to clients to achieve the same (economic) results as being hired by a company.

Tags: david-bonilla, bonilista, freelancer, contractor, employee

[freelancer-vs-employee]: http://us2.campaign-archive1.com/?u=374c664073e1a1fa3deca53b4&id=7e79a27689

