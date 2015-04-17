---
layout: post
title: "The Guardian of the Source"
date: 2015-04-17 22:01:48 +0200
comments: true
categories: 
  - craftsmanship
  - guardian
  - source
  - value
  - added-value
---

Overheard today at the office, while they were discussing the approval of a pull request: 

> [Pull request reviewer] - I'm sorry, can't approve this: I don't really agree with this design. Isn't there an alternative for this?
>
> [Pull request author] - [redacted], of course you don't, you're the guardian of the source
>
> [PR reviewer] - Well, sometimes I'm a bit picky about introducing bad code into our codebase.

This has made me think about Gandalf blocking the path of Balrog Demon, shouting "[you shall not pass][you-shall-not-pass-meme]" while on top of the bridge.

This is part of the objectives of doing a pull request before merging code: stop the bad code[^1] before it is merged to the codebase.

Later, as you start having [broken windows][broken-window-theory] in your codebase, it is easier that you start introducing more. Exactly about this is the [broken windows theory][broken-window-theory].

On the other hand, if you try to block that bad code before it is merged, it is cheaper to remove it: nothing depends on it, you introduce no repetition, etc[^2]

This also connects with the idea present in [Software Craftsmanship, now called The Software Craftsman][socra], about preserving value for investors and treat software as an investment (with positive ROI) rather than a sunk cost.

It is being picky and, to the most of our possibilities, do not letting any defects nor bad code into the codebase. A hedge fund manager would not let any toxic or dubious asset into the managed funds. This would be counterproductive in the long run (maybe even in the short one) and would be not doing their job correctly. Why is it that some developers suggest or accept these toxic assets?

So, at least for me, would be an honor to be called the "Guardian of the Source" by someone I respect, as long as this is a serious proposition (i.e., not a joke of some kind).

[^1]: Bad code can be expressed in many ways: long methods, bad naming, breaking design principles (e.g., SOLID, KISS, DRY - OAOO), code with defects, no tests or no coverage, etc.
[^2]: Some source is [Discover defects early](http://c2.com/cgi/wiki?DiscoverDefectsEarly). Another is [this paper](http://developers.slashdot.org/story/03/10/21/0141215/software-defects---do-late-bugs-really-cost-more) that cites the ratio of fixing it later to 5:1 (five times more expensive).
[broken-window-theory]: http://en.wikipedia.org/wiki/Broken_windows_theory
[socra]: http://www.amazon.com/The-Software-Craftsman-Professionalism-Pragmatism/dp/0134052501
[you-shall-not-pass-meme]: http://knowyourmeme.com/memes/you-shall-not-pass