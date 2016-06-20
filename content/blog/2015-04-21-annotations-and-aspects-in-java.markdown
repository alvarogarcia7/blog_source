---
categories:
- java
- aspect
- aspectj
- spring
- annotation
- snippet
comments: true
date: 2015-04-21T07:23:23Z
title: Annotations and Aspects in Java
url: /blog/2015/04/21/annotations-and-aspects-in-java/
---

I've written a sample project with an annotation and an aspect to intercept it and decorate it.

The code provides a way of doing ``try|catch``, specifying an exception to be caught.

The source code is available [here](https://github.com/alvarogarcia7/annotation-aspect-java)

## In the process

This has taken me approximately one hour to prepare the spike and half more to refactor and massage a bit.

If you want to see the raw details, the refactor has been committed step by step (the spike hasn't). The unmassaged code can be found [here](https://github.com/alvarogarcia7/annotation-aspect-java/tree/d5e61ca56a38b1611c9acaa61a2e169b14d19d1e). The massaged version is at the [tip of the arrow](https://github.com/alvarogarcia7/annotation-aspect-java/)

## More information

Regarding ``annotations`` (like @Override):

  * [This official article](https://docs.oracle.com/javase/tutorial/java/annotations/) on annotations is useful.
  * [This article](http://www.vogella.com/tutorials/JavaAnnotations/article.html) by Lars Vogel guides you step by step.
  * [This article](http://tutorials.jenkov.com/java/annotations.html) by Jakov Jenkov is very nice.
  * [This article](http://crunchify.com/understanding-java-annotation-annotation-examples/) helps you to understand what an annotation is and what to use it for.

Regarding ``aspect`` (based on AspectJ):

  * [This question](http://stackoverflow.com/questions/14714092/spring-3-2-aop-intercepting-methods-by-annotation) has been my main source of information / inspiration for the spring + aspectj configuration
  
## Conclusions

One of the drawbacks that I find to common examples or tutorials is that they're not complete. They show you part of the information, but not the whole. While this helps most of the readers, there are library incompatibilities, defects, specific versions, etc. This is why I like to post the whole solution, including ``pom.xml`` (dependencies) and tests.

Having less documentation for developers can be acceptable if you have tests / more tests; of course, as long as other developers can follow your thought while developing.
