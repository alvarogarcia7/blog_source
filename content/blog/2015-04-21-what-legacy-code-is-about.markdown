---
categories:
- legacy-code
- trust
- clean-code
- michael-feathers
- quote
- definition
- update-definition
- tests
- unit-test
- working-effectively-with-legacy-code
- welc
- wewlc
comments: true
date: 2015-04-21T22:09:54Z
title: What legacy code is about
url: /blog/2015/04/21/what-legacy-code-is-about/
---

In his book [Working effectively with legacy code][book], [Michael Feathers][mfeathers] describes:

> [...] legacy code as code without tests. It is a good working definition, and it points to a solution [...]
>
> M Feathers, in the preface of Working effectively with legacy code

I really like this definition. It is objective and measurable. But this is also a downside. Let's take any concurrent code, for example: you can achieve 100% coverage on a single thread and the program could have defects when executed in parallel. But this might be an outlier, as concurrency is difficult to test. Let's take another example.

Let's a imagine a non-concurrent (i.e., single thread) code composed by a single class (no collaborators; just one responsibility; it is "Clean Code", as defined per R.C. Martin's book) that has some happy paths as well as some error-handling cases. As usual. The original code writer has decided to test only the happy paths. They deployed it to production, as the product was ready. You inherit this code.

After the system is deployed to production, you start receiving defect reports on the happy paths (the tested part). The first one, you cross it off as an one-time thing. Then the second and third come. You take a deeper look and start seeing some inconsistencies in the tests, some tests that actually do not test anything interesting:

  * some test the test framework
  * some the language
  * some test a happy path that works by pure luck
  * some functionalities are tested (not all happy paths)
  * there's actually a defect converted into a specification (test) (??)

Now, I ask myself this question: when did I start considering this code as legacy? When I saw the bug reports in production (several in a row) or when I saw the poor suite of tests?

I do think this codebase is legacy, no matter when I realized about it. But my first instinct would be to consider it legacy from the moment I received the bug reports, as I lost the trust in that code.

Because for me, **legacy code is about trust, not tests**. You can have tests but no trust; you can have trust but no tests (the latter is more difficult in non-trivial codebases.)

This is why I would like to update the definition:

> Legacy code is code without tests that provide trust to all your stakeholders

The last part is very important, because the definition is no longer objective but depends from person to person. If the codebase doesn't have tests, it is definitely legacy. But even if it has them, would you consider the given example a legacy or non-legacy code?

These stakeholders include everyone affected or affecting the product: owners, developer team (in the scrum, wide sense), users, clients, ...

Full disclosure: I've written plenty of legacy code. Code which I thought was good but really wasn't. Even with tests, even with TDD, even with Clean Code. This has made me change my mind about what legacy code is all about.



[book]: http://www.amazon.com/Working-Effectively-Legacy-Michael-Feathers/dp/0131177052/ref=sr_1_1?ie=UTF8&qid=1429647115&sr=8-1&keywords=legacy+code+feathers
[mfeathers]: https://twitter.com/mfeathers
