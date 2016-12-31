---
categories:
- self-study-aggregation
- december
- 2016
- read
comments: true
date: 2016-12-01T11:32:19Z
title: Self-Study in December 2016
---

## A Docker Fork: Talk of a Split Is Now on the Table

I've read [this article][docker-fork] by Alex Williams and Joab Jackson about the possible split in the Docker environment following Docker's and other providers' product roadmaps. Each own has their policies and priorities and they collide in this case

Tags: docker, alex-williams, joab-jackson, container, oci, kubernetes, devops, tool

[docker-fork]: http://thenewstack.io/docker-fork-talk-split-now-table/

## An Ode to Boring: Creating Open and Stable Container World

I've read this article by Bob Wise, in which he describes the state of the Docker tool and the Docker Engine. Asks for some kind of Docker long-time support (LTS - like Ubuntu does, for example) and to create a boring environment so applications on top of the containers itself can thrive.

The difference here is that application creators want some boring infrastructure because their product is the application on top, not the container themselves. Docker's product, on the other hand, is the containers and the Engine.

Tags: ode, bob-wise, devops, tool, request, kubernetes, docker-swarm

[boring-container-world]: https://medium.com/@bob_48171/an-ode-to-boring-creating-open-and-stable-container-world-4a7a39971443

## How to use 'npm link'

I've read [this article][npm-link] by Toby Retallick about using npm link.

Tags: npm, tool, npm-link, toby-retallick

[npm-link]: http://tobyret.github.io/NPM-Link/

## Valve's flat management structure 'like high school'

I've read [this article][flat-management] by Philippa Warr on the flat management hierarchy at Valve (a company cited as having some Teal practices) and its shortcomings.

Tags:  philippa-warr, teal, teal-organization, valve, management, flat-hierarchy

[flat-management]: http://www.wired.co.uk/article/valve-management-jeri-ellsworth

## The hazards of going on autopilot

i've read [this article][danger-autopilot] by Maria Konnikova on how pilots get distracted (their minds drift off) when not stimulated.

The article introduces the idea of human-centric automation and letting the computer check what the human is doing (to tell when it is wrong), rather than the human what the computer is doing wrong.

Tags: maria-konnikova, automation, autopilot, complacency

[danger-autopilot]: http://www.newyorker.com/science/maria-konnikova/hazards-automation

## The “Cobra Effect” that is disabling paste on password fields

I've read [this article][cobra-on-password-paste] on disabling paste on password fields, how that forces using a weaker password. Also names the 'Cobra Effect'. By Troy Hunt

Tags: troy-hunt, copy-paste, paste, password-field, cobra-effect, disable-paste, usability, ux

[cobra-on-password-paste]: https://www.troyhunt.com/the-cobra-effect-that-is-disabling/

## Of course smart homes are targets for hackers

I've read [this article][smart-homes-hackers] by Matthew Garrett on how the security of Internet of Things devices is as important as traditional devices and what rules should a consumer follow to decide whether a device is secure or not.

Tags: matthew-garrett, security, internet-of-things, iot, hacker

[smart-homes-hackers]: http://mjg59.dreamwidth.org/45483.html

## Open Salaries: Outcomes

I've read [this article][lunar-open-salaries] by Paweł Brodziński on how the open salaries has affected them in their company (Lunar Logic): 

  * removing the bottleneck for salary reviews
  * making more often and better the feedback process
  * people more involved in running the company

Tags: teal, company, salary, teal-organization, company-practice, open-salary, pawel-brodzinski

[lunar-open-salaries]: http://blog.lunarlogic.io/2016/open-salaries-outcomes

## One more vote for functional languages

I've read [this article][watch-expressions] by Simeon Simeonov in which he describes how setting a watch expression can cause a side effect (e.g. VBA, Ruby).

Tags: immutability, simeon-simeonov, watch-expression

[watch-expressions]: https://blog.simeonov.com/2013/03/04/one-more-vote-for-functional-languages/

## The fastest way to learn a new programming language

I've read [this article][learning-new-pl] the ways the author (Simeon Simeonov) goes while learning a new language:

> * Curious George. During this phase, which usually lasts only a few hours and involves semi-random exploration of tutorials, reference manuals, blog posts and StackOverflow posts, I get my bearings straight, find analogies between the new language and ones I’m more familiar with and choose my initial tooling.
> * Mario Bros. -> Super Mario Bros. In this phase, which usually lasts several days, I try to bring the meta-patterns I’m comfortable working with from familiar environments (the sewers of New York) to the new environment (the Mushroom Kingdom). It involves diving head first into advanced language features and building various utilities that I find lacking in the environment, e.g., debugging tools, all in the context of early prototypes of whatever it is that I need to work on.
> * Bull in a china shop. This is the phase where my noble goal of bending the language to the way I solve problems meets the harsh reality of me being a neophyte in its intricacies. The observable attributes of this phase are lower velocity, increased use of expletives and more time on StackOverflow. The amount of time in this phase varies. The “Eureka!” moments are fun but overall it’s a dip in the experience curve.
> * Singin’ in the Rain. With newly acquired knowledge and improved language-specific testing/debugging skills, the bull gently transforms into Fred Astaire. Coding is a lot of fun again. It’s time to go to production.
> * Obi-Wan Kenobi. Over time, the interaction with the new language improves the meta-patterns I use for problem solving. I tend to use less and simpler code using natural language idioms as opposed to generalized utilities & abstractions. It’s like changing from using the Force to allowing the Force to do things through you. It takes a long time to get here. More often than not, I never do.

He also describes several (advanced) techniques that helped him better understand programming:

> * In C++ template, meta-programming [...]
> * In Java, dynamic bytecode generation [...]
> * In Python [...] stateful decorators [...]
> * In Ruby, metaprogramming  [...]

Tags: simon-simeonov, metaprogramming, ruby, decorator, python, bytecode-generation, java, cpp, learning-programming-language, programming-language, curious-georde, mario-bros, bull-in-a-china-shop, singing-in-the-rain, obi-wan-kenobi, eureka, learning

[learning-new-pl]: https://blog.simeonov.com/2013/02/11/the-fastest-way-to-learn-a-new-programming-language/

## The marvellously mysterious javascript Maybe monad

I've read [this article][js-maybe-monad] by James Sinclair in which he tries to explain monads in javascript, explaining how promises work, then establishing the parallellism between a promise and a type of monad.

Tags: monad, javascript, promise, james-sinclair, analogy, functional-programming, monad-explanation

[js-maybe-monad]: http://jrsinclair.com/articles/2016/marvellously-mysterious-javascript-maybe-monad/



## Debug.Trace

I've read both [the documentation][debug-trace-haskell] and the source code for `Debug.Trace`, a haskell module that contains functions to trace a program execution. It is interesting to see how a function performs side effects and its signature seems to be pure.

The main trick is to use `unsafePerformIO`, which points to `unsafeDupablePerformIO`, which performs a side effect on the Real World (`runRW#`).

Tags: haskell, debug, monitoring, source-code, real-world

[debug-trace-haskell]: https://hackage.haskell.org/package/base-4.9.0.0/docs/Debug-Trace.html


