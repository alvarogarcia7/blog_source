---
categories:
- self-study-aggregation
- february 
- 2017
- read
comments: true
date: 2017-02-01T11:32:19Z
title: Self-Study in February 2017 
---

## WhatsApp Security Vulnerability

I've read [this article][whatsapp-vulnerability] by Bruce Schneier on a security defect in whatsapp, where an 'unconfirmed' message can be re-encrypted (with a new key) and resent. This is a vector for some attacks.

Tags: bruce-schneier, security, whatsapp, encryption, attack-vector

[whatsapp-vulnerability]: https://www.schneier.com/blog/archives/2017/01/whatsapp_securi.html


## Encrypted email service once used by Edward Snowden relaunches

I've read [this article][lavabit-restablishing], by Kim Zetter, on Lavabit restablishing its service. Explains the company's past and the new services they are offering

Tags: lavabit, kim-zetter, privacy, encryption, email, mail

[lavabit-restablishing]: https://theintercept.com/2017/01/20/encrypted-email-service-once-used-by-edward-snowden-to-relaunch/

## What Happens When You Mix Java with a 1960 IBM Mainframe

I've read [this article][api-mainframe] by David Cassel about the legacy infrastructure of hardware that the U.S. government agencies have. How old mainframes are still useful to web applications and how these mainframes can communicate with more modern systems, through APIs

Tags: mainframe, david-cassel, marianne-bellotti, legacy-hardware, legacy-software, legacy-system, legacy, api

[api-mainframe]: http://thenewstack.io/happens-use-java-1960-ibm-mainframe/

## Systems We Love: How the Past Informs Our Present

I've read [this experience report][systems-we-love] by David Cassel about the conference "Systems we love": a mix of papers we love and systems that happened at San Francisco in December 2016

Tags: david-cassel, systems-we-love, papers-we-love, system, conference, experience-report, joyent

[systems-we-love]: http://thenewstack.io/systems-we-love/

## The agonizing death of an astronaut

I've read [this article][monad-maybe-javaslang] by Daniel Dietrich on why the implementation of the ``Option`` in Javaslang seems to be broken but, in fact, follows the rules of the monads.

Explains why ``map`` should be used for non-changing contexts and ``flatmap`` should be used for changing it.

Tags: daniel-dietrich, monad, option, haskell, optional, maybe, scala, javaslang

[monad-maybe-javaslang]: http://blog.javaslang.io/the-agonizing-death-of-an-astronaut/

## We reverse engineered 16k apps, here’s what we found

I've read [this article][analysis-16k-apps] by Fallible team, in which they describe the analysis of apps. They discovered 2500 apps with key and secret on them.

> [...] whenever you hardcode any API key/token in the app, think hard if you really need to hardcode this, understand the API usage and the read/write scope of the tokens before putting it in the apps.

Tags: analysis, security, app, key, token, api, fallible

[analysis-16k-apps]: https://hackernoon.com/we-reverse-engineered-16k-apps-heres-what-we-found-51bdf3b456bb

## Oh, the emails you’ll get...

I've read [this article][management-performance-consulting] by Joel Spolsky, in which he explains how some companies focus on some metrics for measuring performance, how difficult it is to measure performance.

Tags: joel-spolsky, performance, management, consulting

[management-performance-consulting]: https://www.joelonsoftware.com/2006/11/09/oh-the-emails-youll-get/

## 2002/07/15 - Measurement

I've read [this article][measuring-performance-jos] by Joel Spolsky where he explains how measuring performance is difficult, according to  Robert D. Austin in his book Measuring and Managing Performance in Organizations. He gives some examples of that, mainly about paying out bonuses for performance reasons.

Tags: joel-spolsky, robert-austin, measuring-performance, managing-performance, book, knowledge-worker, bonus, pay, performance, organization

[measuring-performance-jos]: https://www.joelonsoftware.com/2002/07/15/20020715/

## The Purpose Of Life Is Not Happiness: It’s Usefulness

I've read [this article][purpose-usefulness] by Darius Foroux on what the purpose of life is about: making a difference (even if small) in what you leave behind.

Tags: psychology, purpose-of-life, usefulness, happiness, darius-foroux

[purpose-usefulness]: http://dariusforoux.com/happiness-usefulness/

## The Future of User Interfaces

I've read [this article][brandur-interfaces] by Brandur on how interfaces are becoming more and more bloated, slow and ridden with animations. All of that is targeted to the beginner user, rather than the proficient one. He suggests some ideas on finding inspiration from the terminal applications

Tags: brandur, interface, interface-design, ux, ui

[brandur-interfaces]: https://brandur.org/interfaces

## My Increasing Frustration With Clojure

I've read [this article][increasing-frustration-clojure] by Ashton Kemerling on the problems he has found working professionally with Clojure and some possible solutions.

Tags: clojure, language, ashton-kemerling, functional-programming, problem, frustration

[increasing-frustration-clojure]: http://ashtonkemerling.com/blog/2016/06/11/my-increasing-frustration-with-clojure/

## Java Without If

I've read [this article][java-no-if] by Ashton Kemerling on how he is using a library called 'lambda', which brings some of the functional programming features to Java.

Tags: lambda, library, ashton-kemerling, functional-programming, java, palatable, john-napier

[java-no-if]: http://ashtonkemerling.com/blog/2017/01/26/java-without-if/

## Top ten pull request review mistakes

I've read [this article][top-10-review-mistakes] by Scott Nonnenberg on the most common mistakes while doing a code review in the context of a pull request. 

Tags: scott-nonnenberg, pull-request, code-review, github, diff, listicle

[top-10-review-mistakes]: https://blog.scottnonnenberg.com/top-ten-pull-request-review-mistakes/

## Shutting down Simplicity Itself

I've read [this article][shutting-down-simplicity] by David Dawson on why he's shutting down his consultancy company, Simplicity Itself, which was mainly focused on microservices.

Tags: david-dawson, simplicity-itself, shut-down, company, consulting, post-mortem, postmortem

[shutting-down-simplicity]: http://daviddawson.me/blog/2017/02/04/simplicity-itself-shutdown.html

## Turn Off Your Cellphone

I've read [this article][turn-off-cellphone] by Brandur on how to get more done by unplugging the notifications

Tags: brandur, time-management, interruption, phone, notification

[turn-off-cellphone]: https://brandur.org/fragments/turn-off-your-cellphone

## The Dark Standup

I've read [this article][dark-standup] by Alan Brouilette on the steps they took to reduce the amount of hours worked. It started with a few extra questions during the daily standup:

> * What didn’t you do today because you stopped working on time?
> * What will the impact be on tomorrow because of it?
> * How much more time would you have needed to get everything done today?
> * What will you do with those hours tonight instead?

and what they realized after a two-week experiment:

> * The costs of context switching are much higher than we realized.
> * We were spending a lot of time doing things that were urgent but not important, or that didn’t need to have been urgent at all.
> * We needed to be a lot more ruthless about saying “No.”
> * Some Operations roles are legitimately shorthanded, some of us just needed to impose a little order.
> * FOMO WIP (unnecessary work one takes on because one fears missing something) is a real problem, especially as regards to Slack and meetings.
> * We worked better in the time we had to work, knowing it was finite.
> * Work-life balance improves both work and life. People literally slept better when limiting after-hours exposure to Slack and email. [...]

Tags: dark-standup, quote, limited-time, overtime, team-management, experiment, question, alan-brouilette

[dark-standup]: https://18f.gsa.gov/2017/01/19/the-dark-standup/
## What it Means to be a Remote-First Company

I've read [this article][remote-stack] by  Alyssa Mazzina on what Stack Overflow does to keep its remote employees happy, how they are a remote-first company and small practicalities like tools, holiday gifts and stipends.

Tags: alyssa-mazzina, team-management, remote, remote-work, stack-overflow, team

[remote-stack]: http://www.stackoverflow.blog/code-for-a-living/what-it-means-to-be-a-remote-first-company

## Google’s not-so-secret new OS

I've read [this article][andromeda-google] describing the state of Google's new operating system, Fuchsia or Andromeda (the final name is not final yet).

Tags: google, os, operating-system, daniel-matte, fuchsia, andromeda

[andromeda-google]: https://techspecs.blog/blog/2017/2/14/googles-not-so-secret-new-os

## Four Secrets Of People Who Finish Their Workweeks On Thursday

I've read [this article][finish-week-early] by Kat Boogaard that includes four tips to finish your week early:

  1. They Schedule Intentionally
  1. They Focus On Priorities
  1. They Tune Out Distractions
  1. They Find Shortcuts

Tags: kat-boogaard, time-management, eisenhower-productivity-matrix, urgent-vs-important, important-vs-urgent, urgent, important, productivity

[finish-week-early]: https://www.fastcompany.com/3068122/work-smart/four-secrets-of-people-who-finish-their-workweeks-on-thursday

## Reflecting On One Very, Very Strange Year At Uber

I've read [this article][sexism-at-uber] by Susan J Fowler on some bad HR practices at Uber and how they are part of the reason their low percentage of women (3%) in the engineering team.

Tags: sexism, uber, susan-fowler, hr, human-resources, women, work-environment, review

[sexism-at-uber]: https://www.susanjfowler.com/blog/2017/2/19/reflecting-on-one-very-strange-year-at-uber

## Ni dioses ni reyes. Sólo el hombre.

I've read [this bonilista][dioses-reyes-hombres] (in Spanish) by David Bonilla on which he talks about the God Mode and how that is implemented in different applications.

I've also liked this:

> Los desarrolladores sólo somos herreros que forjan ceros y unos. Construimos herramientas para satisfacer necesidades de nuestros usuarios, sin que eso nos haga mejores que ellos o nos dé el derecho de supervisar y juzgar sus actos. A la hora de diseñar nuevos sistemas y funcionalidades, lo único que nunca deberíamos olvidar es que no somos dioses ni reyes, sólo hombres.

Rough translation:

> We, developers, we are only blacksmiths of the digital era. We build tools to satisfy our user's need, without that fact making us better than they are or without the right to overview what they do or to judge their acts. When designing new systems and features, the only thing we must never forget is that we are neither gods nor kings, just humans.

[dioses-reyes-hombres]: http://us2.campaign-archive1.com/?u=374c664073e1a1fa3deca53b4&id=860ccae5e2

