---
layout: post
title: "Self-Study in October 2015"
date: 2015-10-01 15:25:19 +0200
comments: true
categories: 
  - self-study-aggregation
  - october
  - 2015
  - read
---

{% comment %}  

Authors as categories: https://github.com/alvarogarcia7/blog_source/blob/source/README.markdown#authors-as-categories

{% endcomment %}

## Blazing Fast HTML: Virtual DOM in Elm

I've read [this article][elm-blazing-fast-html] explaining how Elm works in relation to the virtual DOM. By Evan Czaplicki.

Tags: elm, dom, virtual-dom, comparison, speed, haskell, evan-czaplicki

[elm-blazing-fast-html]: http://elm-lang.org/blog/blazing-fast-html

## Why you should never, ever, ever use MongoDB

I've read [this article][never-use-mongodb] stating the downsides of using MongoDB. Written by Sven Slootweg

Tags: mongodb, downside, sven-slootweg, json, document-store, postgresql, acid

[never-use-mongodb]: http://cryto.net/~joepie91/blog/2015/07/19/why-you-should-never-ever-ever-use-mongodb/
[design-by-contract-unam]: http://www.revista.unam.mx/vol.4/num5/art11/sep_art11.pdf

## Do you really get classloaders?

I've watched [this video][really-get-classloaders] by Jevgeny Kabanov on classloaders: what they are, how they work nad some tips to solve common issues.

My notes:

  * the classloading is lazy: the resources are not loaded until they are mentioned
  * every classloader has a parent
  * every class has a classloader associated with it
  * every object has a class associated with it
  * classloading delegation: the parent is consulted before loading a class. if it has it, it will load it. If not, I will delegate it

There is also [this article][comments-on-classloaders] on the same video

Tags: jevgeny-kabanov, classloader, java, 

[really-get-classloaders]: http://zeroturnaround.com/rebellabs/rebel-labs-tutorial-do-you-really-get-classloaders/
[comments-on-classloaders]: http://www.javaworld.com/article/2074396/core-java/javaone-2011--do-you-really-get-classloaders-.html
