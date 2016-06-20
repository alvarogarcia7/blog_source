---
categories:
- ethos
- typos
- writos
- thinkos
- types-of-defects
- categorization
- slashdot
- quote
- leprechaun
comments: true
date: 2015-06-14T16:16:51Z
title: Types of defects
---

Some time ago, while researching types of defects and the cost of fixing them[^1], I stumbled upon this:

> Years ago I worked with a bunch of economists in the US Federal Government - they categorized 'bugs' in their memos into three types: 
>
>  * Typos: Simple misspellings of words. Infrequent, easy to detect, easy to fix. 
>
>  * Writos: Incoherent sentences. More frequent, hard to detect, harder to fix. 
>
>  * Thinkos: Conceptually bonkers. Very frequent, subtle and hard to detect; almost impossible to fix.
>
> Most 'late' bugs that I've seen in software projects belong in the last category - a lack of design or the failure to make a working mock-up leads to 'thinkos' which are only obvious when the application is nearly completed. These are expensive to fix.
>
> Source: http://developers.slashdot.org/story/03/10/21/0141215/software-defects---do-late-bugs-really-cost-more

I would also add a new category to this:

  * Ethos: Morally wrong, although possibly legal. These may take different forms: vary from a company to the next one,
  from society to society, etc. Even harder to fix than 'thinkos', 
  as there is a reason (mainly economic) to keep them in place. 
  
  On a technical note, 
  these are not usually well-known artifacts in the company, therefore not everyone 
  should know about them. Only a few developers know the correct reasons behind them and
  the rest might be sold a fake reason, so the latter cannot fix these 'ethos', as they 
  assume they are present for a good reason


[^1]: This is also a chapter in the book [The Leprechauns of Software Engineering](https://leanpub.com/leprechauns) by Laurent Bossavit: 'Chapter 10: The cost of defects: an illustrated history'
