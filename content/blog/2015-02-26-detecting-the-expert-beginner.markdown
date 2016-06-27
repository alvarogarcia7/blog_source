---
categories:
- expert-beginner
- manual
- rtfm
- spiel-spiel
- clean-code
- clojure
comments: true
date: 2015-02-26T06:54:13Z
draft: true
title: Detecting the expert beginner
url: /blog/2015/02/26/detecting-the-expert-beginner/
---

the rise of the expert beginner: http://www.daedtech.com/how-developers-stop-learning-rise-of-the-expert-beginner

Learning clojure is so much fun coming from an OOP approach.

I've written one pet project and a few katas in Scala but I didn't get to the point of writing idiomatic Scala. I wrote idiomatic Java with a dash of Scala.

One of the great ideas (TODO) to switch to Scala is that you can keep writing OOP code then adding functional / declarative style as you progress. This is great for business environments but not for deliberate practice or deliberate learning.

So I'm currently learning clojure. And this is fun coming from the OOP ways. I've decided I only want to use a language in its idiomatic way in non-business (i.e., for fun) projects. This will allow me to understand the consequences and implications and not "find a way that works". TODO being more / less pragmatic?

Back to the point: I assumed that knowing already to program OOP (Java style) I could start teaching myself some clojure. It has been this way until I've reached the expert beginner state. TODO add link.

I can do basic computing in clojure: collections, maps, destructuring, functions, composition, etc. But I've already reached a point where I can no longer teach myself more. Because the Java ways are no longer effective here: Where I would do a ``foreach`` and create side effects, I would try to do ``reduce or map``. But this doesn't always solve the problem. Sometimes I'm tempted by the siren call of introducing side effects, but I'm trying to resist it as much as I can.

Quoting the article:

> There's nothing you can do to improve as long as you keep bowling like that. You've maxed out. If you want to get better, you're going to have to learn to bowl properly.
> [...]
> And the worst part is that you're going to get way worse before you get better, and it will be a good bit of time before you get back to and surpass your current average.
>
> TODO add quote.

In my opinion, I've detected an expert beginner in myself, while learning clojure: I cannot improve my expertise level while writing / learning clojure this way. I've maxed out. Should I want to get better (i.e., start producing "clean code" in clojure), I'm going to need to write proper clojure. etc. And I won't perceive the improvement until a few time units later[^1], even though I will be learning the foundations of a new coding paradigm.

[^1]: cannot currently predict this
