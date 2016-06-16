---
categories:
- self-study-aggregation
- February
- 2016
- read
- 60fps
- ability
- acceptance-testing
- accidental-complexity
- aggregate
- agile
- alberto-brandolini
- alexander-demin
- amazon-s3
- analogy
- analysis
- angular
- angular-2
- answer
- api
- app
- application
- architecture
- backend
- backend-for-frontend
- bff
- blog
- book
- bot
- bounded-context
- brandon-annaday
- bus-factor
- business-need
- cdn
- charles-wetherell
- chris-allen
- chris-hart
- clean-code
- client
- cloudant
- communication
- company
- company-value
- comparison
- container
- continuous-delivery
- continuous-investment
- conway-law
- crawler
- creativity
- cross-pollination
- css
- culture
- david-bonilla
- dba
- ddd
- design
- difference
- docker
- drew-hamlett
- dreyfus-model
- drucker
- edward-kmett
- empathy
- enterprise
- entity
- erlang
- essential-complexity
- etude
- etudes-for-programmers
- event
- explanation
- fat-client
- fat-server
- federico-carrone
- feedback-loops
- flip-technique
- framework
- freelancer
- frontend
- functional-language
- functional-programming
- go
- hanlon-razor
- hapi
- haskell
- hide
- hugo
- idris
- ignorance
- image
- integration
- interface
- interview
- introduction
- isomorphic-javascript
- isomorphism
- j-b-rainsberger
- j-brains
- james-higginbotham
- james-kyle
- javascript
- javascript-7
- jekyll
- jesper-andersen
- jesper-louis-andersen
- kent-beck
- kurt-rohlandt
- lambda-conf
- land-of-lisp
- language
- learn-to-learn
- learning-to-learn
- list
- localforage
- malice
- matt-hernandez
- meta
- meta-learning
- microservice
- migration
- mikael-cho
- mikko-ohtamaa
- mobile
- model
- module-testing
- modulus
- monad
- motivation
- mvc
- mythical-man-month
- nagdd
- nathan-leclaire
- nodejs
- nolan-lawson
- northern-war
- object-oriented-language
- ocaml
- octopress
- offline
- offline-first
- oop
- open-ource
- open-question
- open-source
- oredev
- pattern
- pokedex
- pokemon
- pouchdb
- practice
- programmer
- programming
- progressive
- protocol
- protocol-design
- quora
- rainsberger
- realtime
- refactor
- rest-api
- ria-spike-brehm
- right-thing
- robot
- ror
- ruby
- ruby-on-rails
- rule
- russ-ackoff
- sailsjs
- scrum
- sebastian-ferrari
- seo
- shared-infrastructure
- silo
- skill
- skype
- slack
- slide
- soa
- software
- software-design
- software-development
- spanish
- stack-overflow
- stakeholder
- startup
- static-site-generator
- strategy
- style-guide
- sublime
- svgomg
- system-thinking
- talk
- tdd
- team-management
- technical-debt
- ted
- the-jvm
- thin-client
- thin-server
- thing-right
- tim-nash
- time-management
- tip
- triple-check
- ubiquitous-language
- value
- video
- web-worker
- wordpress
- xp
comments: true
date: 2016-02-01T02:55:19Z
title: Self-Study in February 2016
---

## Software and all that comes with it

I've read [these slides][software-and-what-comes] about creating software and asking questions to deliver value, by Alberto Brandolini

Tags: alberto-brandolini, software, slide, team-management, agile

[software-and-what-comes]: http://lanyrd.com/2011/fromthefront/sgfgw/

## Driving your DBA crazy in 3 easy steps

I've read [these slides][ddd-in-the-db] about dealing with the knowledge that is present in the database, not expressed in ubiquitous language and cause of the low bus factor, by Alberto Brandolini

Analogy between the movie The Shining and a model / entities / aggregates.

Tags: ddd, model, entity, aggregate, team-management, dba, agile, ubiquitous-language, alberto-brandolini, bus-factor, slide

[ddd-in-the-db]: http://lanyrd.com/2011/ddd-day-it/shzym

## Shorter Feedback is not Always Bett

I've read [this note][feedback-loop-bett] from Kent Beck on why shorter feedback loops might not always be better. I.e., why some processes take time to set in and results are not observable until that time.

Tags:  kent-beck, feedback-loops, open-question, analogy

[feedback-loop-bett]: https://facebook.com/notes/kent-beck/shorter-feedback-is-not-always-bett/1097086386990891

## La Regla del Triple Check para ir a eventos

I've read [this article][triple-check-rule] by David Bonilla about a rule to help you decide attendance to events, in Spanish

Tags: rule, time-management, david-bonilla, event, spanish, triple-check

[triple-check-rule]: http://www.bonillaware.com/regla-triple-check-para-ir-a-eventos

## An interview with Charles Wetherell

I've read [this interview][interview-charles-wetherell] by Alexander Demin about the interviewee's book "Etudes for Programmers". In it, they talk about the origin of the études, the author's research interests and activities. Also about the book (written in 1978) and how computer science has changed since then.

When asked about three things a programmer should know:

> Some ability to do formal mathematics. The level necessary to understand Hopcroft and Ullman combined with a little graph theory is enough. Discrete mathematics is essential; calculus is only necessary for folks working in special application areas.
>
> Some ability to write clearly in their native language. Dijkstra said that if a person couldn’t write their own language, they couldn’t write a correct program. (Well, that’s what I hope Dijkstra said!). Writing programs is essentially the same as writing a non-fiction essay. If you can’t make the step-by-step connections clearly in your own language, why would we think you could in C, for example?
>
> Remember that a program is primarily for communication with humans, not computers. When you write a program, the computer will do whatever you say. You must convince the humans who read the program that what you have asked the computer to do is the correct thing to do. Remember, the computer doesn’t care about correctness.
>
>  The answer to the last question means that programs should always have the form of paragraphs of comments that describe the intention of the program followed by paragraphs of code that implement that intention. All of the formatting should be designed to make readers as able as possible to read the code easily; the compiler doesn’t care. In particular, follow conventions of mathematics and your native language, not those you found in some random language manual. Write the comments first and then write the code, not the other way around. If you don’t know what you want to achieve and why, any code you write is, by definition, incorrect.

Tags: charles-wetherell, alexander-demin, interview, book, etude, etudes-for-programmers, practice, ability, skill, list

[interview-charles-wetherell]: http://demin.ws/blog/english/2012/08/25/interview-with-charles-wetherell/

## How to fix Javascript… maybe

I've read [this article][fixing-javascript] by Drew Hamlett about the lack of style guide for javascript and how this affects the adoption of the language and the sprout of similar libraries.

Suggests the creation of a standard style guide for javascript.

Tags: drew-hamlett, javascript, style-guide, analysis

[fixing-javascript]: https://medium.com/@wob/how-to-fix-javascript-maybe-8857819bfa16

## Isomorphic JavaScript: #DevBeat Master Class

I've read [these slides][isomorphic-js-brehm] by Spike Brehm on Isomorphic JavaScript and why it's important: initial pageload and speed, reducing effort and duplication, SEO (crawlability).

Tags: isomorphic-javascript, isomorphism, javascript, seo, crawler, frontend, app, application, fat-client, fat-server, thin-client, thin-server, ria-spike-brehm, slide

[isomorphic-js-brehm]: http://www.slideshare.net/spikebrehm/a-28174727

## Open-sourcing our docker images

I've read [this article][open-source-docker-images] by Brandon Cannaday about the Docker images that they have.

Tags: docker, brandon-annaday, open-ource, image, container, modulus

[open-source-docker-images]: http://blog.modulus.io/open-sourcing-our-docker-images

## growing up in an open source world

I've read [this article][growing-up-based-on-style-guide] by Matt Hernandez where he explains that fixing the style guide can limit your creativity and how the software is written in enterprise and open-source environments.

Also about how developers grow when exposed to different style guides.

Tags: style-guide, matt-hernandez, creativity, dreyfus-model, enterprise, open-source, programming

[growing-up-based-on-style-guide]: http://fiveisprime.me/2015/02/18/growing-up-in-open-source/

## Hanlon's Razor and working with young engineers

I've read [this article][hanlons-razor-and-understanding] by Matt Hernandez on the importance of understanding (and empathising) towards others' positions and worries.

Cites the Hanlon Razor:

 > Never attribute to malice that which is adequately explained by ignorance.

 Tags:  hanlon-razor, empathy, team-management, ignorance, malice, matt-hernandez

[hanlons-razor-and-understanding]: http://fiveisprime.me/2013/07/27/young-engineers/

## Intro to sails.js

I've watched [this video][intro-to-sails], an introduction to the sails.js framework: a realtime nodejs server for creating REST APIs, inspired by Ruby on Rails.

Tags: sailsjs, ruby-on-rails, ror, framework, video, introduction, mvc, rest-api, realtime, nodejs, 

[intro-to-sails]: https://youtu.be/GK-tFvpIR7c

## Node.js and hapi - creating a rest api

I've read [this article][nodejs-and-hapi] about creating a REST API using [Hapi][hapijs], a nodejs framework. Written by Matt Hernandez

Tags: matt-hernandez, rest-api, nodejs, hapi, framework

[hapijs]: http://hapijs.com/
[nodejs-and-hapi]: http://blog.modulus.io/nodejs-and-hapi-create-rest-api

## Introducing Pokedex.org: a progressive webapp for Pokémon fans

I've read [this article][progressive-app-mobile] by Nolan Lawson about the challenge of having a 60 fps application on a mobile device, making it offline.

Uses Angular 2, javascript 7, PouchDB as well as LocalForage for storage. All processing on WebWorkers, except for DOM manipulation.

Tags: angular-2, javascript-7, angular, javascript, pouchdb, localforage, cloudant, 60fps, mobile, app, offline-first, offline, pokemon, api, nolan-lawson, web-worker, flip-technique, css, progressive, pokedex, svgomg, frontend

[progressive-app-mobile]: http://www.pocketjavascript.com/blog/2015/11/23/introducing-pokedex-org

## LambdaConf 2015 - How to Learn Haskell in Less Than 5 Years Chris Allen

I've watched [this video][how-to-learn-haskell-allen] by Chris Allen on how to learn haskell, what are some common pitfalls while learning it and how learning and teaching (it) are different.

Talks about his (with a coauthor) book, focused on not reducing the readers that make it to the end and, finally, increasing the amount of haskell users.

References [this talk][treading-water] by Kmett.

Tags: chris-allen, haskell, learning-to-learn, meta-learning, lambda-conf, talk

[how-to-learn-haskell-allen]: https://www.youtube.com/watch?v=Bg9ccYzMbxc
[treading-water]: https://yow.eventer.com/yow-2014-1222/stop-treading-water-learning-to-learn-by-edward-kmett-1750

## Extreme Continuous Delivery - at Unruly

I've read [these slides][ecd] about how the company Unruly does continuous delivery (CD), maximizing business value, minimizing time to market (TTM). Also describes how they do deployments and how to organize teams.

References: Extreme Programming Explained (Beck), Continuous Delivery (Humble & Farley)

Tags: silo, team-management, culture, continuous-delivery, tdd, nagdd, shared-infrastructure, acceptance-testing, module-testing, conway-law, cross-pollination, continuous-investment, slide

[ecd]: http://www.xpdays.de/2014/downloads/002-extreme-continuous-delivery-at-unruly/cd_javaone.pdf

## Building chat applications and robots for Skype

I've read [this article][bots-for-skype] on building robots for skype. By Mikko Ohtamaa

Tags: skype, robot, bot, mikko-ohtamaa, slack, integration, api

[bots-for-skype]: https://opensourcehacker.com/2013/03/28/building-chat-applications-and-robots-for-skype/

## Why I never wrote down our company values

I've read [this article][writing-down-company-values] by Mikael Cho on the subject of having company values, preaching or writing them down. Also, what happens when hard times come, regarding your values.

Tags: mikael-cho, value, company-value, analogy

[writing-down-company-values]: https://medium.com/swlh/why-i-never-wrote-down-our-company-values-8143520497e8

## Interview with Jesper Louis Andersen about Erlang, Haskell, OCaml, Go, Idris, the JVM, software and protocol design 

I've read this interview ([part 1][andersen-interview-1], [part 2][andersen-interview-2]) to Jesper Louis Andersen, interviewed by Federico Carrone. 

The first part is about a comparison of languages, what/why he uses them, and protocol design. The second is more about the Erlang language, the BEAM VM, and some experiences.

Tags: federico-carrone, erlang, interview, jesper-andersen, jesper-louis-andersen, haskell, ocaml, go, idris, the-jvm, protocol-design, software-design, language, functional-programming, protocol, land-of-lisp, northern-war

[andersen-interview-1]: https://medium.com/this-is-not-a-monad-tutorial/interview-with-jesper-louis-andersen-about-erlang-haskell-ocaml-go-idris-the-jvm-software-and-b0de06440fbd
[andersen-interview-2]: https://medium.com/this-is-not-a-monad-tutorial/interview-with-jesper-louis-andersen-about-erlang-haskell-ocaml-go-idris-the-jvm-software-and-5628fe591295

## Migrating to Hugo From Octopress

I've read [this guide][migration-to-octopress] by Nathan LeClaire on migrating the blog from Octopress to Hugo

Tags: static-site-generator, hugo, go, octopress, ruby, jekyll, nathan-leclaire, migration, blog, meta

[migration-to-octopress]: http://nathanleclaire.com/blog/2014/12/22/migrating-to-hugo-from-octopress/

## Dynamic Static Site Generators strategies

I've read [this article][ssg-strategies] explaining what are static site generators, and an example with Jekyll. By Tim Nash

Tags: tim-nash, static-site-generator, jekyll, strategy, explanation, comparison

[ssg-strategies]: https://timnash.co.uk/dynamic-static-site-generators-strategies/

## Blog like a confused hacker

I've read [this article][blog-confused-hacker] by Tim Nash on what tools he recomends for static site generation.

Tags: tim-nash, static-site-generator, jekyll, hide, strategy, explanation, comparison, sublime, wordpress, amazon-s3, cdn

[blog-confused-hacker]: https://timnash.co.uk/using-wordpress-static-site-generator/

## Resolving the Frontend/Backend API Design Conflict

I've read [this article][bff-1] that explains the "Backend for Frontend" (BFF) pattern, for solving the different needs of data depending on each device / client. By James Higginbotham 

Tags: james-higginbotham, bff, pattern, backend-for-frontend, api, soa, microservice, frontend, backend, architecture

[bff-1]: http://launchany.com/resolving-the-frontendbackend-api-design-conflict/

## What If We Forget To Write The Tests?

I've read [this article][forget-to-write-tests] by J. B. Rainsberger on the trust issues related to starting to use a new methodology (TDD in this case) and how to see what impacts it might have in your day to day.

Tags: j-b-rainsberger, j-brains, rainsberger, tdd, motivation, team-management

[forget-to-write-tests]: http://us2.campaign-archive2.com/?u=80ca60ec48ef77dfaa1f38943&id=f70f14b644&e=4a925444f9

## API microservices, the Unix philosophy, and the Richardson Maturity Model - a practical perspective

I've read [this article][us-philosophy] by Chris Hart on why startups and companies alike should be careful when choosing th latest technology and how this applies to microservices.

Tags: microservice, chris-hart, startup, analysis, company, technical-debt, bounded-context, ddd, rest-api

[us-philosophy]: https://medium.com/@chrstphrhrt/microservices-the-unix-philosophy-and-the-richardson-maturity-model-425abed44826

## Effective programming

I've read [this article][effective-programming] by Sebastian Ferrari on the importance of clean code, systems thinking and functional programming.

Specifies the important difference between effectiveness and efficiency.

Links to this talk by [Russ Ackoff][ackoff-systems-thinking]. States the difference between "the right thing" and "the thing right", by Drucker.

Tags: drucker, thing-right, right-thing, sebastian-ferrari, system-thinking, russ-ackoff, video, ted, difference, clean-code, functional-programming

[effective-programming]: https://medium.com/@sebas5384/effective-programming-d7e5bb2f3b80
[ackoff-systems-thinking]: https://youtu.be/OqEeIG8aPPk

## Learning how to learn

I've read [this article][learning-to-learn-kyle] by James Kyle about the "how to learn" as one important skill for programmers and how having the solution at a few keystrokes limits / handicaps this ability.

Tags: programmer, learn-to-learn, james-kyle, stack-overflow, skill

[learning-to-learn-kyle]: https://medium.com/@thejameskyle/learning-how-to-learn-7f04d6f42c1e

## Why do some functional programmers criticize design patterns in OOP languages as a sign of language deficiency, while Monad is also a design pattern?

I've read [this answer][comparing-functional-to-oo-patterns] by Edward Kmett comparing the design patterns in OOP to the design patterns in functional languages.

Tags: functional-language, object-oriented-language, edward-kmett, oop, pattern, monad, interface, quora, answer

[comparing-functional-to-oo-patterns]: https://www.quora.com/Why-do-some-functional-programmers-criticize-design-patterns-in-OOP-languages-as-a-sign-of-language-deficiency-while-Monad-is-also-a-design-pattern/answer/Edward-Kmett?srid=hVnO&share=12410d1e

## Should We Even Debate Refactoring With Stakeholders?

I've read [this article][increase-decrease-trust] by J. B. Rainsberger on the power balance between stakeholders and programmers and how it can be inclined to a 'more trust' / 'less trust' by following some actions. The analogy is to a trade you cannot understand, therefore you have to hope that the taken decisions are in your best interest.

Tags: j-b-rainsberger, j-brains, rainsberger, refactor, business-need, communication, stakeholder

[increase-decrease-trust]: http://us2.campaign-archive2.com/?u=80ca60ec48ef77dfaa1f38943&id=215f7f649b&e=4a925444f9

## The Eternal Struggle Between Business and Programmers

I've read [this article][struggle-business-programmers] by J. B. Rainsberger on the discussion between business ('we want more features, now') and the programmers ('we want more refactoring, now'). Concludes that both players need each other, in a symbiotic fashion, to keep their jobs at the company.

He suggests that Scrum cannot work without the XP practices and that we need to refactor aggressively after having finished our initial design, to keep the costs down. In fact, agreeing with both parts in this discussion.

References one of his own videos, at Oredev'13, "Fundamental Theorem of Agile Software Development", where he describes the relationship between accidental / essential complexity in the cost of a feature, attributing most of it to accidental ('we're not good at our jobs') and describing the need for more design / refactor after the initial design.

Tags: j-b-rainsberger, j-brains, rainsberger, refactor, business-need, design, oredev, talk, agile, xp, scrum, software-development, accidental-complexity, essential-complexity, mythical-man-month

[struggle-business-programmers]: http://blog.thecodewhisperer.com/permalink/the-eternal-struggle-between-business-and-programmers

## Turning code to cash — How to make money as a Web Developer and live to tell the tale.

I've read [this article][code-into-cash] by Kurt Rohlandt with a list of items to check while dealing with clients as a freelancer:

  * Nothing is simple
  * Know your skill set — and let your client know it
  * Be clear about what they are buying
  * Learn to use the best tool for the job
  * To your client you’re more than just a developer
  * Sign off your jobs

Tags: freelancer, kurt-rohlandt, list, tip, client

[code-into-cash]: https://medium.com/@kurtrohlandt/turning-code-to-cash-how-to-make-money-as-a-web-developer-and-live-to-tell-the-tale-f5eedc557b3e

