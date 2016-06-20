---
categories:
- sample
- theory
- analogy
- rust
- rot
- improve
- wine
- TODO
comments: true
date: 2015-05-04T00:09:54Z
published: false
title: Does software improve, rot or rust?
url: /blog/2015/05/04/does-software-improve-rot-or-rust/
aliases:
- /blog/2015/05/03/does-software-improve-rot-or-rust/
---

What effects does time produce on software, without any external interaction?

  * Does it improve, as wine?
  * Does it rot, as food?
  * Does it rust, as (some) metal?

## Bettering

While the first option should be the most usual case, as 

> [When doing DDD] software development is a learning process. Working code is a side effect
>
> Alberto Brandolini, [Model Storming Presentation, slide 38](http://slideshare.net/ziobrando/model-storming)

As your understanding of the domain, the technology, the company, the team, etc improves, the produced software should also improve. This is while actively developing the software solution. But what happens when it is no longer actively developed? And actively maintained?

It is difficult to introduce new features in software, without breaking old ones when you don't have executable specifications. Many feature requests (or even change requests [CR]) conflict with each other, therefore it is not possible to satisfy them all.

Some references on the return of investment in software:

<!--
> Knowledge is the most common return on investment expected from a job [^4]
-->


> Stretching the lifespan of an application means maximizing the return on investment of our clients [^1].
> 
> Are there any companies that don't care about getting a good return on their investment? [^2]
> 
> [...]  [the] main reason to change the whole process and adopting Agile was so that they could have a better return on the investment made on their software [^3]
> 
> [Software Craftsmanship: Professionalism, Pragmatism, Pride](https://leanpub.com/socra), by [Sandro Mancuso](https://twitter.com/sandromancuso)

[^1]: [Software Craftsmanship](https://leanpub.com/socra) Chapter 6, Working software > legacy code > Personal and client satisfaction
[^2]: [Software Craftsmanship](https://leanpub.com/socra) Chapter 7, Technical Practices > Context
[^3]: [Software Craftsmanship](https://leanpub.com/socra) Chapter 2, Agile > the agile hangover > a partial transformation
[^4]: Chapter 8, The long road > Autonomy, mastery and purpose

## Rotting

Before a carrot starts rotting, it goes through a phase of decreasing quality: it starts shrinking and getting wrinkled, as part of the water is getting out. After that process, the weakest link in the carrot skin will be pierced by external agents to start digging. The rot can also start from the inside, as any fruit or vegetable has some rotting agents inside. 

Think of it as a broken window: when several carrots are together and one of them starts rotting, the rest will accelerate in the same process. Even though it is a process that runs out of your control, you have to be actively looking for rotten carrots. Removing them on time is more beneficial than keeping them in the basket for the rest of the vegetables.

## Rusting

Let's take as an example a metal that actually rusts, like steel. Not stainless steel, though. The rusty layer is only on the outside, where the exposure to external elements happen. Below the rusty layer, there is the rest of the metal, not rusted (as still hasn't interacted with oxygen). So, in fact, the rust layer protects the rest of the metal. It is like someone "taking one for the team".

## Relationship with software

Wine gets better with time: it starts acquiring other notes, removing old negative traits, more rounded (depends on composition), etc.

Software should be affected in a similar way: users should start seeing improvement in known bugs, non-functional requirements (e.g., performance) start to improve, etc.

While wine can improving on its own, I don't think the same can be said for software can better by itself, without any external interaction. 

It is true that wine does not improve on every given situation, as it should be on a constant, stable environment: pressure, light, temperature, humidity, etc. So it is safe to assume that software should be under the same beneficial environment so it is possible to keep improving:

  * Kept in use and working knowledge spread among the users
  * Have its defects fixed

With software, on the other hand, you can always ask your users what is the general feeling about the software, what could be improved. Some of the requests won't be technically possible, some others might not offer a good enough return on investment (ROI) but others might be doable. It is in this aspect that software can improve with time.

TODO expand this: Continuous integration might act as oil / lubrication to make sure the tests are passing all the time: new features, avoiding external rust (databases, years (this 'year' is the same as a ticking bomb in the resign pattern), etc), patches, etc


Let's see what kind of comparison we can set between software an
While trying to create an analogy
