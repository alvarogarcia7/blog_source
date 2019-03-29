---
categories:
- self-study-aggregation
- march
- 2019
- abstraction
- advice
- agile
- agile-development
- analogy
- android
- anti-architecture
- architecture
- ask-hn
- australia
- bootstrap
- burtonator
- career-change
- career-management
- change
- chasm
- chesterton-fence
- client
- closed
- closed-standard
- cls
- communication
- comparison
- consulting
- continuation-local-storage
- creativity
- critical-path
- design
- dev-tools
- economic-perspective
- end-user-programming
- engineer
- extensibility
- extension
- fashionable
- finance
- flexibility
- for-profit
- founder
- freelance
- google
- gotify
- gps-drift
- grid-layout
- hackernews
- healthy-eating
- healthy-testing
- hiring
- history
- hook
- i18n
- integration-test
- job-offer
- joe-marshall
- kent-c-dodds
- leader
- leadership
- lean-testing
- leapfrog-solution
- learning
- legacy-code
- logging
- long-term
- maintenance
- management
- marketing
- mentality
- metaphor
- michael-feathers
- michael-pollan
- mofication
- money-management
- money-wealth
- mr-money-mustache
- myth
- nodejs
- notification
- notification-service
- ocp
- old-technology
- open
- open-closed-principle
- open-source
- open-standard
- paint-the-picture
- pattern
- people-management
- personal-knowledge-base
- pete-adeney
- polarized
- print-design
- professional-growth
- programming
- programming-as-theory-building
- progression
- project-management
- protocol
- proxy
- public-speaking
- quote
- recruiting
- reflection
- repl
- resource
- return-on-investment
- revenue
- review
- roi
- rule
- self-hosted
- short-term
- side-business
- side-hustle
- solo-founder
- speak
- speaking
- spreadsheet
- sql
- startup
- technique
- test-pyramid
- testing
- testing-pyramid
- testing-trophy
- theory
- theory-building
- thread-local
- thread-local-storage
- time-management
- time-wealth
- tls
- tool
- trace-id
- tracing
- unit-test
- unix
- user
- w3w
- warc
- warch
- web-2.0
- web-3.0
- web-archive
- web-builder
- web-design
- web-design-3.0
- wewlc
- what-three-words
- working-effectively-with-legacy-code
- yc
date: 2019-03-01T10:32:19Z
title: Self-Study in March 2019
url: /blog/2019/03/01/self-study-march-2019/
---

## [How to Create Reality](https://www.mrmoneymustache.com/2019/02/27/how-to-create-reality/)

In this article, it is explained how to create a (different) reality in the mind of your target (users).

> Begin with the End in Mind – and Start by Painting a Beautiful Picture of that end  destination.

> It’s the technique at the core of the world’s best marketing and negotiation strategies, and it works so well because it short circuits the human brain into making everyone – including you – see things in the desired way.

>It was a simple picture of a very clear end destination that automatically got people’s imagination running and filling in their own details.

There are some examples as well.

Tags: communication, people-management, leadership, marketing, pete-adeney, mr-money-mustache, paint-the-picture, technique

Id: add12910-3b3f-11e9-8a1b-0242ac110003
Read: Thu, 28 Feb 2019 8:00:29 +0000

## [Red Flags in Software Developer Job Descriptions](https://joecmarshall.com/posts/job-description-red-flags/)

I've read this article that explains some red flags the author has detected while reading job offers:

  * Wordpress Developer - Degree + 10 years experience required: refers to the exageration of needed qualifications for jobs that do not require it, apparently.
  * PHP Contractor - 2 Months: refers to the short-term mentality of jobs, and the environment that it creates
  * Early Stage Emmployee / Technical Co-founder / Person to Make My Thing: refers to how cheap ideas are and how important (to developers) execution is.
  * Technologies: Coldfusion + jQuery: refers to old/out of fashion technologies

Tags: job-offer, pattern, joe-marshall, old-technology, fashionable, short-term, long-term, mentality, hiring, recruiting

Id: 3841f764-3b40-11e9-9d75-0242ac110003
Read: Thu, 28 Feb 2019 8:04:21 +0000

## [Ask HN: How to be productive with big existing code base](https://news.ycombinator.com/item?id=19254008)

In this HN discussion, there are some pearls regarding working with big, legacy codebases:

  * Just because you wouldn't have done it the way they did doesn't mean they did it wrong. A reference to [Chesterton's fence](https://en.wikipedia.org/wiki/Wikipedia:Chesterton%27s_fence)
  * A reference to Working Effectively With Legacy Code, by Feathers
  * > 1. Assess how much of the code is actually understood. Is there any record of the > design decisions, the edge cases, the debugging process, the paths that weren't taken? Who knows the most about the codebase and how it got to be how it is?
  * > 2. What's the current specification? Don't look at the stack, look at input and output cases. How well does the code meet the spec? Where is it failing?
  * > 3. Before you change anything you need to know what the change process is. You > probably do already know this, but if you don't need to find out whether there are > any demarcations of responsibility, even if they're only informal and unstated areas of interest.
  * > 4. When you have all that, you can start working on the code with some knowledge of the context you - and the code - are operating in.
  * > 5. If code works, don't rewrite or refactor for style without a very very good > reason. And don't do it unless you can change all the "bad" code at once. Otherwise > you'll end up with a mess of incompatible idioms that make future changes hard to read.
  * > 6. Write your own docs as you go. Best case is other people will benefit from reading them, worst case is you'll remind yourself what you were doing six months from now - because you'll have forgotten by then.
  * A reference to flamegraphs
  * > The problem with the after-the-fact abstraction layer is that if the original team members are not available, you are likely not in possession of the whole theory of the software. Hence it is not likely you can in the beginning choose the right abstractions. Endquote. This is a reference to "Programming as theory building"
  * > Get it into a state that will support current business goals and roadmap while protecting current business value and users.


Note: the quotes are copied directly from the discussion page and are property of the original commentators.

Tags: wewlc, michael-feathers, hackernews, yc, legacy-code, theory-building, quote, chesterton-fence, working-effectively-with-legacy-code, programming-as-theory-building

Id: 0eb0ef62-3b41-11e9-863a-0242ac110003
Read: Thu, 28 Feb 2019 8:10:21 +0000

## [NodeJS logging made right](https://itnext.io/nodejs-logging-made-right-117a19e8b4ce)

Explains logging and tracing in nodejs.

Usage of thread-local storage, trace id, continuation local storage.

Tags: nodejs, logging, tracing, thread-local, thread-local-storage, trace-id, continuation-local-storage, cls, tls, proxy, hook

Id: 5bed4596-3f5b-11e9-83e1-0242ac110005
Read: Tue, 05 Mar 2019 15:28:42 +0000

## [Web Design 3.0: When Your Web Design Really Matters](https://nicepage.com/doc/article/20348/web-design-3-0-when-your-web-design-really-matters)

In Chapter 1, we will find out how Web Design is changing. Also, you will learn about the birth of the new generation of web designers, who are designing web pages in Web Design 3.0.

> In Chapter 2, we will talk about website builders that are lagging behind the trends and slowing down the Web Design evolution.

> In Chapter 3, you will learn how to create modern web designs quickly and easily in a new way.

Has walk through the different design phases, techniques; both in press (printed) design as in web design.

Explains some web builders.

Explains the concept of the web 3.0:

>  * Free positioning.
>  * Element overlapping.
>  * Breaking the limitations of Bootstrap-like Grids.

States the different needs for webmasters and designers:

> Web Designers need:
> 
>   * Free positioning
>   * Removing table constraints
>   * Layers
>   * Property Panel for elements
>   * Support for Windows and Mac OS
> 
> 
> Webmasters need:
> 
>   * Clean HTML and CSS
>   * Mobile device support
>   * WordPress and Joomla support
>   * Building websites online

Summary

> Website builders are lagging behind the rapidly changing Web Design world.
> 
> The history of web design tools has involved several transitions. However, progress has stopped. There are numerous signs that the new transition must happen.
> 
> There are separate markets for web designers and webmasters. Popular website builders do not support the main features of Web Design 3.0: free positioning, modern grids, and layers.

Tags: comparison, web-design, print-design, web-builder, creativity, metaphor, grid-layout, bootstrap, flexibility, design, web-3.0, web-design-3.0, web-2.0, progression

Id: 5101ce2e-3f5e-11e9-83d9-0242ac110005
Read: Tue, 05 Mar 2019 15:49:52 +0000

## [Gotify – a self-hosted push-notifications service](https://news.ycombinator.com/item?id=19347848)



Tags: gotify, self-hosted, notification, notification-service, android, open-source

Id: e839c82a-4367-11e9-b34d-0242ac110007
Read: Sun, 10 Mar 2019 19:08:36 +0000

## [Ask HN: How to speak like a leader, not like an engineer?](https://news.ycombinator.com/item?id=19349676)

Links and resources for speaking like a leader

Tags: leader, engineer, comparison, change, public-speaking, speak, speaking, career-management, career-change, professional-growth, resource:

Id: 1a478fc8-4368-11e9-b657-0242ac110007
Read: Sun, 10 Mar 2019 19:10:00 +0000

## [ArchiveBox: Open-source self-hosted web archive](https://news.ycombinator.com/item?id=19346985)

Tools for archiving purposes. Has links to other sites:

https://github.com/machawk1/warcreate
https://getpolarized.io/

Tags: burtonator, web-archive, polarized, warch, warc, personal-knowledge-base

Id: 4168161c-436e-11e9-aa0d-0242ac110007
Read: Sun, 10 Mar 2019 19:54:03 +0000

## [Ask HN: As a freelancer, what's the best app to track finances?](https://news.ycombinator.com/item?id=19450331)

Describes tools for finance for freelancers. Stresses the importance of time wealth

Tags: time-management, money-management, freelance, tool, ask-hn, hackernews, finance, time-wealth, money-wealth

Id: b74a6696-4c83-11e9-99bd-0242ac110005
Read: Fri, 22 Mar 2019 09:20:21 +0000

## [What I Learned in My First Year as a Solo Founder](https://tik.dev/lessons-learned)

Learnings by a solo founder.

Benefits of having a side project or side hustle


Tags: side-hustle, side-business, learning, reflection, solo-founder, founder, revenue

Id: f0dee42c-5142-11e9-9444-0242ac110006
Read: Thu, 28 Mar 2019 10:19:16 +0000

## [Write tests. Not too many. Mostly integration.](https://kentcdodds.com/blog/write-tests)

This is a paraphrasing of some advice for healthy eating: 'Eat food, not too much, mostly plants.' (Pollan)

> Write tests.

> Often I find myself saving time when I put time in to write tests

> Not too many: you get diminishing returns on your tests as the coverage increases [...]

> Mostly integration: as you move up the pyramid, the confidence quotient of each form of testing increases

> Integration tests strike a great balance on the trade-offs between confidence and speed/expense

Tags: unit-test, testing, test-pyramid, healthy-testing, advice, integration-test, quote, kent-c-dodds, analogy

Id: d148d774-5144-11e9-94d8-0242ac110006
Read: Thu, 28 Mar 2019 10:32:42 +0000

## [7 Rules for Eating](https://www.webmd.com/food-recipes/news/20090323/7-rules-for-eating)

In this reference article, Michael Pollan explains his seven rules for eating:

  1. Don't eat anything your great grandmother wouldn't recognize as food. "When you pick up that box of portable yogurt tubes, or eat something with 15 ingredients you can't pronounce, ask yourself, "What are those things doing there?" Pollan says.
  1. Don’t eat anything with more than five ingredients, or ingredients you can't pronounce.
  1. Stay out of the middle of the supermarket; shop on the perimeter of the store. Real food tends to be on the outer edge of the store near the loading docks, where it can be replaced with fresh foods when it goes bad.
  1. Don't eat anything that won't eventually rot. "There are exceptions -- honey -- but as a rule, things like Twinkies that never go bad aren't food," Pollan says.
  1. It is not just what you eat but how you eat. "Always leave the table a little hungry," Pollan says. "Many cultures have rules that you stop eating before you are full. In Japan, they say eat until you are four-fifths full. Islamic culture has a similar rule, and in German culture they say, 'Tie off the sack before it's full.'"
  1. Families traditionally ate together, around a table and not a TV, at regular meal times. It's a good tradition. Enjoy meals with the people you love. "Remember when eating between meals felt wrong?" Pollan asks.
  1. Don't buy food where you buy your gasoline. In the U.S., 20% of food is eaten in the car.


Also, four myths:

  1. Food is a delivery vehicle for nutrients. What really matters isn't broccoli but its fiber and antioxidants. If we get that right, we get our diet right. Foods kind of get in the way.
  1. We need experts to tell us how to eat. Nutrients are invisible and mysterious. "It is a little like religion," Pollan said. "If a powerful entity is invisible, you need a priesthood to mediate your relation with food."
  1. The whole point of eating is to maintain and promote bodily health. "You are either improving or ruining your health when you eat -- that is a very American idea," Pollan says. "But there are many other reasons to eat food: pleasure, social community, identity, and ritual. Health is not the only thing going on on our plates."
  1. There are evil foods and good foods. "At any given time there is an evil nutrient we try to drive like Satan from the food supply -- first it was saturated fats, then it was trans fat," Pollan says. "Then there is the evil nutrient's doppelganger, the blessed nutrient. If we get enough of that we, will be healthy and maybe live forever. It's funny through history how the good and bad guys keep changing."

This can all be summarized as "Eat food, not too much, mostly plants."

Tags: healthy-eating, michael-pollan, rule, advice, myth, analogy

Id: 30ece1fc-5145-11e9-87de-0242ac110006
Read: Thu, 28 Mar 2019 10:35:22 +0000

## [Lean Testing or Why Unit Tests are Worse than You Think](https://blog.usejournal.com/lean-testing-or-why-unit-tests-are-worse-than-you-think-b6500139a009)

This article puts testing in an economic perspective. Calls it lean testing

Also references/paraphrases Michael Pollan's Rules for eating ().

Creates a testing trophy, a figure to explain the best testing pattern, replacing the testing pyramid

Explains return on investment (ROI) on tests

> integration tests provide the best balance of cost, speed and confidence

> Integration tests lie somewhere between unit tests and end-to-end tests so they provide the best balance. Therefore, they have the highest ROI.

> The main idea is to just not mock so much


Tags: economic-perspective, lean-testing, testing-trophy, testing-pyramid, return-on-investment, roi, critical-path, testing, unit-test, anti-architecture, architecture, maintenance

Id: efe85d00-5147-11e9-87ce-0242ac110006
Read: Thu, 28 Mar 2019 10:55:02 +0000

## [End-user programming](https://www.inkandswitch.com/end-user-programming.html)

In this article, the writer explains some of the end-user modifications to programs. Examples include: adding download capabilities to instagram, generating backups for files.

On the other hand, applications (especially mobile) are tightly sealed, not allowing modification or extension. Even FOSS (free, open source software), modification implies the learning curve / entry barrier of having to setup, compile, debug the original program and modifications.

Gives the example of the UNIX command line, as a programming environment. One that provides (one of) the best REPL examples.

Characterizes spreadsheets as ad-hoc databases, programs; mostly created by domain experts (aka subject matter experts), than professional software engineers. Take into account that these hats are non-exclusive: a domain expert can also be a professional software engineer.

The author tries to coin the term "end-user programming" to differentiate it from programming by professional software developers, who try to build general-purpose apps, to be used by thousands of people.

This also means, that a professional software developer can be an "end-user programmer", when creating solutions for themselves (limited user group), rather than for the general public. Maybe those one-off scripts that we create, are some kind of end-user programs. This is described in the article as well.

Talks of the chasm the user has to cross in order to customize the behaviour of their software. This is related to working in a framework or a library, in the sense of 'who keeps the control'. In an UNIX, filesystem environment, you keep the control.


References "citizen developers" (https://www.gartner.com/it-glossary/citizen-developer/) 

 Three qualities for end-user programming: embodiment, living systems, and in-place toolchains 

  Embodiment: it requires the programmer hold many abstractions in their mind. Related to abstract reasoning. Mentions that many end-users don't have these abstractions in their mind, but are capable of abstract reasoning in their own domains of expertise. Mentions that via visual representations onscreen, we can help the end-user. An example: preview formula results in a spreadsheet; highlight the cells in a spreadsheet.

Embodiment means, broadly, making elements of the programming experience more concrete and visual


Living systems: interaction with them. Refers to shortening the feedback cycle

> “Live programming gives the programmer immediate feedback on the behavior of a program as it is edited, replacing the edit compile-debug cycle with a fluid programming experience.“

But only short feedback loops, but also to change the system behaviour from within, such as the LISP compiler reading and compiling the source code from inside a program.

In-place tool chains

> The user should be able to edit their programs without installing additional tools or programs

> a Unix shell script is just a series of commands saved into a text file

Meaning that the user is already accustomed to issuing those commands. A script is just grouping those commands.

Gives examples of end-user programming success stories: spreadsheets, SQL, browser dev tools, 

Tags: end-user-programming, programming, extensibility, open-closed-principle, ocp, mofication, user, extension, unix, repl, spreadsheet, reflection, theory, history, review, sql, dev-tools, chasm, abstraction

Id: 4490792a-514b-11e9-9861-0242ac110006
Read: Thu, 28 Mar 2019 11:18:52 +0000

## [Why developers consider Agile development to be nonsense](https://medium.com/@web.development/why-developers-consider-agile-development-to-be-nonsense-1eaf28715e66)

This article explains how Agile development is apt and indicated for short-term software development, especially for contracting or consulting companies, where the client is external to the team.

Why it does not make as much sense in products/services where there is a leapfrog solution.

> Don’t give the customer what they ask for; understand them, and revolutionize their world.

Tags: leapfrog-solution, google, agile, agile-development, comparison, project-management, client, consulting, management

Id: 9035ea3c-514f-11e9-9676-0242ac110006
Read: Thu, 28 Mar 2019 11:49:37 +0000

## [Why bother with What Three Words?](https://shkspr.mobi/blog/2019/03/why-bother-with-what-three-words/)

In this article, the author questions why using a closed protocol for translating geo-coordinates to words.

The author complains that it is masquerading a for-profit, closed algorithm as an open standard.

Also, that the GPS locations are drifting very quickly in some places, therefore the translated address changes, but the local address (e.g., 1 Wall Street), does not.

Tags: gps-drift, australia, open-standard, closed-standard, for-profit, protocol, open, closed, what-three-words, w3w, i18n, startup

Id: 960e6750-5202-11e9-bb40-0242ac110008
Read: Fri, 29 Mar 2019 09:11:07 +0000

