---
categories:
- mob-programming
- training
- tdd
- kata
- string-calculator
- pair-programming
comments: true
date: 2015-03-03T04:46:48Z
title: Mob programming String calculator kata
url: /2015/03/03/mob-programming-string-calculator-kata/
---

Last Friday we did a kata[^1] using a projector the string calculator [^2] using pair programming, TDD and some mob-programming for the last refactoring.

We used a projector (beamer) so everyone could see it. I tried to take really small baby steps but the adding part was done in ~6 cycles[^4]

We've all learnt about shotcuts, live user templates for the IDE [^3], TDD methodology, other ways of tackling the problem, how to refactor as a group, clean code, etc

These sessions are necessary to share some knowledge among the teammates and have another chance of doing code review, releasing some pressure from daily practices or bad abstractions / designs (that will be taken care of in the future)

We've had such a great time, learning together, that would be a candidate for a weekly interaction.

[Mob programming][mob-programming] is such an eye opening practice. It forces you to reconsider your previous dogma and to understand the others' positions. Wikipedia reads "early use of phrase [...] was made in 'Extreme Programming Perspectives'" but this practice is practiced by some, such as [Carlos Blé][carlosble], [Sandro Mancuso][mancuso] among others; also at the [Software Craftsmanship Barcelona][socrabcn] [2013][scbcn2013] and [2014][scbcn2014] and the [SoCra Canaries 2015][socracan]

## One goal

Our goal for this session was to practice TDD and baby steps, so the team can improve its ability on these skills.

In any case, my objective for the katas (or deliberate practice) is not to get there as fast as we can but to improve our automated routines. This can affect our daily performance, as it becomes natural. It is not about the getting to the destination but enjoying the path along the way. In this manner, you are not so hurried up about a slow train but enjoy the views across the window.

It was good that QA people in the team came to the session. He even participated with some tips / implementations during the refactors. Always fruitful to discuss (and learn) mixed skills (QA / dev) from the other side of the wall

## Conclusion

I still haven't mastered the recipe (algorithm) for knowing when it is a scaffold and when it's time to refactor using "replace algorithm". For know, I just use the three (3) rule and a bit of gut feeling on the side. The bad thing is that this can not be easily taught to someone else. Just learnt by osmosis and practice.

[^1]: matching none of the styles explained in [here](http://johannesbrodwall.com/2011/12/18/how-to-start-a-coding-dojo/)
[^2]: This is a very good beginner's kata, created by [Roy Osherove](https://twitter.com/royosherove). Can be found [here](http://osherove.com/tdd-kata-1/)
[^3]: There are some for [IntelliJ IDEA](https://www.jetbrains.com/idea/help/live-templates.html), [Eclipse](http://stackoverflow.com/questions/4022367/what-is-the-eclipse-equivalent-of-intellij-live-templates) too
[^4]: One piece of feedback I received is that I talk too much while coding, as these 6 cycles took us about 45 minutes, total

[mob-programming]: http://en.wikipedia.org/wiki/Mob_programming 
[carlosble]: https://twitter.com/carlosble
[mancuso]: https://twitter.com/sandromancuso
[scbcn2014]: https://twitter.com/hashtag/SCBCN14?src=hash
[scbcn2013]: https://twitter.com/hashtag/scbcn2013?src=hash
[socracan]: https://twitter.com/hashtag/socracan?src=hash
[socrabcn]: http://www.softwarecraftsmanshipbarcelona.org/
