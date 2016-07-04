---
categories:
- growing-software
- trimming
- agriculture
- gardening
- software
- refactor
- refactoring
- goos
comments: true
date: 2015-04-02T23:13:45Z
title: Trimming your plants
url: /blog/2015/04/02/trimming-your-plants/
---

This post belongs to the [growing-software series](/{{< category "growing-software" >}}/)

Imagine this situation: the code works. You are at [this stage][initial-phase]

Disregarding the tests, the production code is complete. Could be better, but it is ready if you are in a hurry.

Now, picture your test as a plant in a plant pot: it might be healthy on the outside (external quality) but how are their roots (internal quality)?

Do you imagine them in an ordered fashion or in a jungle of roots? Everything on the outside is connected to one or several roots? In case it is several, what / how much do they share?

## Trimming the roots

Now, let's imagine you want to put the plant in a different plant pot. You don't want the plant to be altered in any way: keep producing fruits as it was before, as green and shiny, etc. Just alter the container for business reasons.

The more tidy and organized the roots are related to the outside plant itself, the easier it is to reshape (or refactor) it.

So this is exactly what refactoring is about: "keeping the same external behaviour, modifying the internal structure". I like to explain as "modify how it is done but not what it does".

When you trim the roots but leave unaltered the top, you are making it cheaper to modify the internal shape without affecting the rest. The plant will continue to grow, requiring more and more nutrients from the ground. Small increases that do not warrant a bigger plant pot, as the current one can withstand the new requirements.

This is where the analogy is no longer useful: when writing software, you're also making it easier to reuse, modify and maintain.

### Conclusion

The more tidied up you have your plants, the cheaper to maintain and modify.

Software implementation details are like roots: they expand to find any small hole where to expand. Even to scaffold expected behaviour

Trim your plants early and often, always with the help of a test suite

[initial-phase]: https://github.com/alvarogarcia7/refactoring_a-first-example/commit/1ff7df4d45ee1ac5bc483b90da7ed1b68f27aef9
