---
layout: post
title: "Book: Diseño Ágil con TDD (Spanish)"
date: 2015-02-02 21:32:21 +0100
comments: true
categories:
  - book
  - tdd
  - book-review
  - spanish
---

I've read this book [Diseño Ágil con TDD](http://www.carlosble.com/libro-tdd/) (Spanish) by
[Carlos Blé](https://twitter.com/carlosble) from cover to cover,
when previously I had only read the theoretical parts (Part I and Chapter 12 in Part II).

It's worth noting that this is the first TDD book in Spanish (I haven't found any book in Spanish predating this one - also backed by the author; published in January 2010) and, as such, there are some translations that could be improved. Not that it makes it more difficult to read. Sometimes it's a good idea to roughly translate concepts into English and then you'll understand the point.

## First part

The first part is very interesting, a theoretical introduction into TDD, ATDD and Agile methodologies. Points to some good books as a reference (e.g., Growing Object Oriented Software, Guided by Tests; Working Effectively with Legacy Code; Refactoring; etc)

He explains the TDD algorithm (chapter 2) and the ATDD one (chapter 3). These two are maybe the two most important ones on the book. Should you read only a part of this book, I'd recommend to read the motivational intro (the fable on the preface) and these two.

He gives excellent pieces of advice who, correctly applied, would set the basis for good software development, such as SOLID, Object Oriented Design (OOD), Inversion of Control (IoC), etc. (See chapter 7, "Diseño orientado a objetos").

There's a chapter (number 6) on "Mocks and other test doubles" (translation is mine)

## Second part

The second part, as many other books where the source code is printed, was dense for me. Other books, such as [GOOS](http://www.growing-object-oriented-software.com/), show differences in content with bold typeface, to ease the reader's task.  In my opinion, it would be useful to color the diffs, show them on the left and right, or even show the raw diff (e.g., ```+++``` ```---```). I'm envisioning a typing program as LaTeX where you could specify a commit with its parent and a range of lines to output.

The second part is written in C# and python, to show a TDD session with him. Warning: it's much better in person than reading his book!

The chapter 12 is a set of antipatterns you might find after starting with TDD. Even after you keep practicing TDD for a while, you will not get rid of these smells. Highly recommended.

There's also an appendix on Continuous Integration, although there are better books for this.

## Conclusion

Recommend this book if you are starting with TDD, or you are more advanced but it's difficult for you to read in English.

Always good as a refresher to read the theoretical part and the antipatterns

PS: This book is free to read, published under a Creative Commons license (don't know exactly which one)