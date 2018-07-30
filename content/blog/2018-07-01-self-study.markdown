---
categories:
- self-study-aggregation
- july
- 2018
- analogy
- aws
- bar
- bonilista
- burn-out
- burnout
- career
- career-management
- chesterton-fence
- client
- cloud-scale
- collaborator
- consulting
- contractor
- database
- david-bonilla
- delivery
- dependency
- development
- discovery
- dummy
- exactly-once-delivery
- facebook
- fix
- gerard-meszaros
- go
- golang
- goos
- growing-object-oriented-software
- hacker-news
- haskell
- health
- history
- hype
- kafka
- keith-lee
- ksuid
- learning
- lewis-menelaws
- listicle
- lucas-di-cioccio
- management
- message
- message-delivery
- mock
- monad
- notification
- oaoo
- onboarding
- once-and-only-once
- part
- people
- policy
- process
- productive-haskell-bar
- productivity
- project-management
- psychology
- pyramid
- relationship
- rick-branson
- rocksdb
- sabbatical
- segment
- slack-time
- steve-freeman
- stub
- test-double
- time-management
- tip
- tool
- topic
- uuid
- vertical-slice
- xunit
- xunit-pattern
- xunitpatterns
date: 2018-07-01T10:32:19Z
title: Self-Study in July 2018
url: /blog/2018/07/01/self-study-july-2018/
---

## [The Haskell Pyramid](https://patrickmn.com/software/the-haskell-pyramid/)

I've read this article on how the productivity for Haskell is achieved: not using the topics discussed on social networks (monads, functors, laws, lenses, etc) but using more basic tools

Tags: haskell, productivity, lucas-di-cioccio, learning, development, tool, monad, hype, pyramid, productive-haskell-bar, bar

Id: 454f53fc-7dd6-11e8-8208-0242ac110003
Read: Mon, 02 Jul 2018 08:59:47 +0000

## [El verde más verde](https://mailchi.mp/bonillaware/verde-mas-verde?e=68e22b460d)

I've read this article on how to structure creative projects (e.g., UX, programming) by professionals, as told by David Bonilla.

Tags: david-bonilla, bonilista, project-management, slack-time, sabbatical, vertical-slice

Id: ef00176e-7ddc-11e8-a33b-0242ac110003
Read: Mon, 02 Jul 2018 09:47:29 +0000

## [How to Fix Burnout as a Developer](https://dev.to/lewismenelaws/how-to-fix-burnout-as-a-developer--4opl)

I've read this article on burnout and how to fix it:
Stop working so much.
Prioritize your health.
Try something new.
Patience is key.
Talk to your loved ones.

Tags: lewis-menelaws, burnout, burn-out, productivity, listicle, career, psychology, management, time-management, career-management, health

Id: 40d68542-7dff-11e8-89f2-0242ac110003
Read: Mon, 02 Jul 2018 13:53:09 +0000

## [Ask HN: What is the first thing you implement at a new company?](https://news.ycombinator.com/item?id=17353854)

I've read this article on the first things that people do when joining a new client.
Mentions the Chesterton's fence: You don’t want to change something until you understand why it’s there in the first place.

Tags: chesterton-fence, hacker-news, contractor, client, onboarding, fix

Id: 9003a91a-7dff-11e8-a366-0242ac110003
Read: Mon, 02 Jul 2018 13:55:22 +0000

## [The Fallacy Of Chesterton's Fence](https://abovethelaw.com/2014/01/the-fallacy-of-chestertons-fence/)

I've read this article on the Chesterton's fence.
> don’t ever take a fence down until you know the reason why it was put up

The author explains that the walls (or contracts, or clauses, or practices) were put in place to cover for a specific need. Do not assume that this need does not exist now, before understanding what the need was in the first place.

Tags: chesterton-fence, keith-lee, consulting, tip, analogy, discovery, process, people

Id: 736e269e-7e00-11e8-ac4a-0242ac110003
Read: Mon, 02 Jul 2018 14:01:43 +0000

## [A brief history of the UUID](https://segment.com/blog/a-brief-history-of-the-uuid/)

A brief history of UUID: of how it was developed, why, and a new library in go called ksuid
Explains the origins of networked computers (as opposed to personal computers without any networking) in the 1980s.
Also explains the origins of the UUID, some algorithms for generating them.

Tags: ksuid, uuid, golang, go, rick-branson, history

Id: c20e6ac4-8fe5-11e8-b54e-0242ac110003
Read: Wed, 25 Jul 2018 08:36:00 +0000

## [Delivering billions of messages exactly once](https://segment.com/blog/exactly-once-delivery/)

Explains how this company (segment) has solved the problem of delivering the messages once and only once (OAOO), using RocksDB, Kafka, UUIDs. Deployed to AWS, lowers the cost of the previous system (memcached-based).
Impressive numbers: 1.5 TB worth of keys stored on disk in RocksDB
a 4-week window of de-duplication before aging out old keys
approximately 60B keys stored inside our RocksDB instances
200B messages passed through the dedupe system
Also explains in depth how RocksDB works

Tags: rocksdb, facebook, database, once-and-only-once, oaoo, message, exactly-once-delivery, delivery, message-delivery, kafka, uuid, client, aws, segment, topic, cloud-scale

Id: 962c0c26-8fe6-11e8-bf2c-0242ac110003
Read: Wed, 25 Jul 2018 08:41:55 +0000

## [Object Collaboration Stereotypes](http://www.mockobjects.com/2006/10/different-kinds-of-collaborators.html)

This post describes the relationships between two objects:
Dependencies are services that the object needs from its environment so that it can fulfil its responsibilities.
Notifications are other parts of the system that need to know when the object changes state or performs an action.
Policies are objects that tweak or adapt the object's behaviour to the needs of the system.
Parts are components in the implementation that are not controlled from outside the object after being set.

Tags: dependency, notification, policy, part, collaborator, relationship, steve-freeman, goos, growing-object-oriented-software

Id: f7e738c8-8fe6-11e8-89be-0242ac110003
Read: Wed, 25 Jul 2018 08:44:39 +0000

## [Mocks, Fakes, Stubs and Dummies](http://xunitpatterns.com/Mocks,%20Fakes,%20Stubs%20and%20Dummies.html)

Bibliography for mocks, stubs, fakes, dummies, spies.

Tags: mock, stub, test-double, dummy, xunit, xunit-pattern, gerard-meszaros, xunitpatterns

Id: ea7281ee-9012-11e8-bd95-0242ac110003
Read: Wed, 25 Jul 2018 13:59:15 +0000

