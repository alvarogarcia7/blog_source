---
layout: post
title: "Brownish Greenfield Gilded Rose Kata"
date: 2016-04-18 00:44:19 +0300
comments: true
categories:
  - formulation
  - kata-formulation
  - kata
  - gilded-rose
  - trikitrok
  - greenfield
  - legacy-code
---

(This formulation has been copied and adapted from [Bobby Johnson](https://twitter.com/NotMyself) and [Terry Hughes](https://twitter.com/TerryHughes)'s [repository](https://github.com/NotMyself/GildedRose))

#Brownish Greenfield Gilded Rose Kata

Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods. 

Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We have a system in place that updates our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures. 

Your task is to rewrite the system using an old class, that already exists.
First an introduction to our system:

- All items have a ``SellIn`` value which denotes the number of days we have to sell the item
- All items have a ``Quality`` value which denotes how valuable the item is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

- Once the sell by date has passed, ``Quality`` degrades twice as fast
- The ``Quality`` of an item is never negative
- "Aged Brie" actually increases in ``Quality`` the older it gets
- "Sulfuras", being a legendary item, never has to be sold or decreases in ``Quality``
- The ``Quality`` of an item is never more than 50, however "Sulfuras" is a legendary item and as such its ``Quality`` is 80 and it never alters.
- "Backstage passes", like aged brie, increases in ``Quality`` as it's ``SellIn`` value approaches; ``Quality`` increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but ``Quality`` drops to 0 after the concert
- "Conjured" items degrade in ``Quality`` twice as fast as normal items

Your task is to create the system from scratch, with only a restriction: you must use the class ``Item`` that Leeroy developed. This class is:

  * unmodifiable, if you do, a goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership. This prohibition applies to modifying it, deleting it, adding new methods, deleting methodts, changing visibility of stuff, etc
  * cannot be inherited, if you do, a goblin in the corner who will insta-rage and one-shot you as he doesn't believe in code inheritance

The ``Item`` class can be found in many programming languages in [Emily Bache's repository][emilys-repo]. You are looking for the class / type ``Item``

Happy katas and happy koding. Please be careful with the goblin!

## How to start

  * Create a new repo
  * Find the class ``Item`` in [this repo][emilys-repo]
  * Use TDD to develop the functionality. Remember, ``Item`` will stay as it is.
  * Have fun

[emilys-repo]: https://github.com/emilybache/GildedRose-Refactoring-Kata