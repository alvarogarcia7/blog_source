---
categories:
- poodr
- sandi-metz
- true-code
- change-code
- quote
- easy-change
- transparent
- reasonable
- usable
- exemplary
- design
- ood
- oo
- object-oriented-design
- object-oriented
comments: true
date: 2015-07-08T02:41:54Z
title: 'Quote: Organizing Code to Allow for Easy Changes'
url: /2015/07/08/quote-organizing-code-to-allow-for-easy-changes/
---

## Organizing Code to Allow for Easy Changes

>Asserting that code should be easy to change is akin to stating that children should be polite; the statement is impossible to disagree with yet it in no way helps a parent raise an agreeable child. The idea of easy is too broad; you need concrete definitions of easiness and specific criteria by which to judge code.
>If you define easy to change as
>
>  * Changes have no unexpected side effects
>* Small changes in requirements require correspondingly small changes in code
>* Existing code is easy to reuse
>* The easiest way to make a change is to add code that in itself is easy to change
>
>Then the code you write should have the following qualities. Code should be:
>
>  * **Transparent** The consequences of change should be obvious in the code that is changing and in distant code that relies upon it
>* **Reasonable** The cost of any change should be proportional to the benefits the change achieves
>* **Usable** Existing code should be usable in new and unexpected contexts
>* **Exemplary** The code itself should encourage those who change it to perpetuate
>these qualities
>
>Code that is Transparent, Reasonable, Usable, and Exemplary (TRUE) not only meets today’s needs but can also be changed to meet the needs of the future. The first step in creating code that is TRUE is to ensure that each class has a single, well-defined responsibility.
>
> Practical Object Oriented Design in Ruby, by Sandi Metz

This can be found the in POODR > Chapter 2. Designing Classes with a Single Responsibility > Organizing Code to Allow for Easy Changes

Note: Bold is mine
