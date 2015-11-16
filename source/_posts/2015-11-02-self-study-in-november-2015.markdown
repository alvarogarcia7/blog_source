---
layout: post
title: "Self-Study in November 2015"
date: 2015-11-02 15:25:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - November
  - 2015
  - read
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}


## Call me maybe: RabbitMQ

I've read [this article][rabbit-mq-as-lock-service] by Kyle Kingsbury on using RabbitMQ as a lock service. It investigates and gives a counterexample of using it for this purpose.

Uses Knossos to do the testing and surfaces a problem with it. Explains specific problems on locking: at-most-once and at-least-once message delivery

Note: References Jepsen (I guess an inside joke to the song "Call me maybe" by Carly Rae Jepsen) for at-most-once and at-least-once message delivery.

Tags: rabbitmq, kyle-kingsbury, lock, cap-theorem, distributed-system, jepsen, knossos, at-most-once-delivery, at-least-once-delivery, counterexample, mutex

[rabbit-mq-as-lock-service]: https://aphyr.com/posts/315-call-me-maybe-rabbitmq

## Everyone is potentially a teacher

I've read [this article][everyone-a-teacher] by Carlos Blé where he explains that everyone can have ideas worth spreading and that the knowledge not only comes from others but also from the relationships that tie you to other people.

Tags: carlos-ble, teaching, pedagogy, idea, teacher, relationship 

[everyone-a-teacher]: http://www.carlosble.com/2015/09/everyone-is-potentially-a-teacher

## Ragel State Machine Compiler

I've read [this article][ragel-fsm] explaining what the Ragel project is about: a code generator from regex to code in languages such as C#, Java, etc. It is limited to finite state machines (FSM), with determinism. It can also handle some indeterminism. Written by Adrian D. Thurston

Tags: adrian-thurston, fsm, state-machine, finite-state-machine, code-generation, ragel

[ragel-fsm]: http://www.colm.net/open-source/ragel/

## HTTP is obsolete. It's time for the distributed, permanent web

I've read [this article][permanent-web] by Kyle Drake explaining the need for a permanent, distributed web archive.

Using a distributed file system (IPFS) and software similar to Bitcoin, they can host parts of the web locally, making it immutable and distributed

Tags: kyle-drake, web-archive, centralization, decentralization, distribution, permanent-web, ipfs, federation, 

[permanent-web]: https://ipfs.io/ipfs/QmNhFJjGcMPqpuYfxL62VVB9528NXqDNMFXiqN5bgFYiZ1/its-time-for-the-permanent-web.html

## Recovering From the Integrated Tests Scam

I've read [this article][recovering-from-int-test-scam] from J. B. Rainsberger on the integrated test scam and how to solve it: refactoring.

Tags: jbrains, tdd, integrated-test, integration-test, j-rainsberger

[recovering-from-int-test-scam]: http://us2.campaign-archive1.com/?u=80ca60ec48ef77dfaa1f38943&id=42e61e203e&e=4a925444f9

## Broken windows theory

I've read [this wikipedia article][broken-windows-theory] that talks about the broken windows theory, that states that controlling and monitoring public spaces leads to lowering the serious crimes.

Cites three causes for this:

  * Social norms and conformity
  * Lack of routing monitoring
  * Social signaling and signal crime

Also discusses examples in the US and in the Netherlands, as well as criticisms.

I've read it to better understand how to apply this theory to software development, on a day-to-day basis.

Tags: wikipedia, theory, broken-window

[broken-windows-theory]: https://en.wikipedia.org/wiki/Broken_windows_theory

## Scsh

I've read [the wikipedia page][wiki-scsh] for Scsh, the Scheme shell.

[wiki-scsh]: https://en.wikipedia.org/wiki/Scsh

## Why is Scala's type inference not as powerful as Haskell's?

I've read the reasoning why Haskell supports other type inferences that are not present in Scala, in [this StackOverflow question][scala-vs-haskell-type-inference]

Tags: scala, haskell, type-inference, hindley-milner, type-inference-algorithm

[scala-vs-haskell-type-inference]: http://stackoverflow.com/questions/7234095/why-is-scalas-type-inference-not-as-powerful-as-haskells

## The Future of the LispM

I've read [this article][future-lispm] explaining the past and current situation in the Lisp world: from Lisp, to LispM, to the MIT and Symbolics Inc., to Clojure and Scheme.

Also talks about integration with the operating system and its execution in the microprocessor. Written by Reid McKenzie

Tags: reid-mckenzie, lisp, lispm, clojure, scheme, symbolics

[future-lispm]: http://arrdem.com/2014/11/28/the_future_of_the_lispm/

## The Lisp Curse

I've read [this essay][lisp-curse] by Rudolf Winestock, where he explains the low barrier (or low cost) for people in powerful languages (such as Lisp) to not accept the status quo in their project and fork / start their own.

It also compares languages and the people attracted to them. Cites Mark Tarver's essays several times, including the Brilliant Bipolar Mind (BBM) in [this other][bipolar-lisp-programmer] essay (from WebArchive). Compares the BBM and the normal worker in usefulness to companies.

Cites the Pareto principle (80-20 rule): a single hacker will port 80% the library from another language, leaving it buggy, undocumented and only understandable by the original author (assuming this is only 20% of the work). The rest (e.g., documentation, bugfixing, maintenance) are dropped and never taken care of.

Cites that this could be somewhat based on the facility of creating new features for the language. A small effort implies small implementation time, leaving no margin for thinking it through and seeing other corner cases. Also, a single person working on the project means no code review. The style might be coherent (always the same one), but might not be idiomatic, understandable by others, maintainable, etc.

Closes the essay with this quote:

> The expressive power of Lisp has drawbacks. There is no such thing as a free lunch.

Tags: rudolf-winestock, essay, pareto-principle, hacking, one-man-band, lisp, no-free-lunch, quote

[lisp-curse]: http://www.winestockwebdesign.com/Essays/Lisp_Curse.html
[bipolar-lisp-programmer]: https://web.archive.org/web/20150308085419/http://www.lambdassociates.org/blog/bipolar.htm

## The Bipolar Lisp Programmer

I've read [this essay][bipolar-lisp-programmer] by Mark Tarver on the Bipolar Lisp programmmer or the koan of Lisp.

It explains the history of the Brilliant Bipolar Mind (BBM) when they attend high school and college. The freedom they're given, exactly the same as in Lisp, as you don't need to mix and socialize with others to create a good-enough solution.

In this fashion, he says, most of the projects are 80% finished, not documented, not maintained. The same problems that worry enterprises.

Cites the article "Lisp: Good News, Bad News, How to Win Big"

Tags: essay, mark-tarver, bipolar-lisp-programmer, lisp-programmer, programmer, brillian-bipolar-mind, blp, bbm, koan

Note: this article was no longer present on its original site. Fetched it from the Web Archive (WayBack Machine).

[bipolar-lisp-programmer]: https://web.archive.org/web/20150308085419/http://www.lambdassociates.org/blog/bipolar.htm

## Writing readable Clojure code

I've read [these slides][readable-clojure-code] by Jiří Knesl, that explains how to write better clojure code:

  * Macros
  * HOFs
  * left-to-right vs right-to-left code

Tags: clojure, jiri-knesl, macro, hof, thread, slide

[readable-clojure-code]: http://www.slideshare.net/jiriknesl/writing-readable-clojure-code

## How can I get a reference to a method?

I've read [this question][get-a-reference-to-a-method], [another question][reference-a-function] from StackOverflow

Tags: stackoverflow, question, ruby, functional-programming, method-reference

[get-a-reference-to-a-method]: http://stackoverflow.com/questions/485151/how-can-i-get-a-reference-to-a-method
[reference-a-function]: http://stackoverflow.com/questions/4294485/how-do-i-reference-a-function-in-ruby


## Implicit and Explicit Blocks

I've read [this lesson from rubyMonk][rubymonk-block-lesson]

Tags: rubymonk, lesson, block, ruby

[rubymonk-block-lesson]: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/55-new-lesson

## What's Point-free Programing?

I've read [this article][point-free-programming] by Xah Lee explaining point-free programming, which requires a glance at function decomposition (currying)

> [...] “point-free programing” is:
>
> * It is about a particular **syntax** for **function definition**.
> * When **defining a function**, no symbol is used for function parameter.

[point-free-programming]: http://xahlee.info/comp/point-free_programing.html

## Oracle’s “planned obsolescence” for Java

I've read [this article][planned-obs-java] by Coman Hamilton on the possible Java's planned obsolescence by Oracle.

Discusses features pushed to future releases, comparing it to other legacy languages.

Tags: obsolescence, legacy-language, planned-obsolescence, java, java-ee, oracle, fortran, cobol, coman-hamilton

[planned-obs-java]: https://jaxenter.com/oracle-and-javas-planned-obsolescence-121144.html

## Your first Ruby native extension: C
I've read [this article][native-extension-ruby] about writing a native extension for ruby. Written by James Coglan

Tags: james-coglan, ruby, c, native-extension

[native-extension-ruby]: https://blog.jcoglan.com/2012/07/29/your-first-ruby-native-extension-c/
