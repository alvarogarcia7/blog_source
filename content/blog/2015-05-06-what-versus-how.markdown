---
categories:
- book
- idea
- what-vs-how
- goos
comments: true
date: 2015-05-06T07:15:08Z
title: What versus How
url: /blog/2015/05/06/what-versus-how/
---

After reading the GOOS[^1], the more and more I get this feeling of what vs how:

  * Information hiding
  * The total simpler than the sum of the parts
  * Extracting a concept so you can think about this. Makes you find better names:
  	* test name
  	* variable name
  	* method name
  	* interface / protocol name


I also got this feeling when reading Clean Code. But with this other book the smell is much harder, stronger. This same concept is repeated all over the book. In our discussions about the book, this concept appears again and again. I'm thinking of adding a sub-title to the book:

```
Growing Object-Oriented Software, Guided by Tests
What and not How
```

## Applying this in your team

Now, there might be a problem if your team has a split opinion on 'what vs how' (i.e., part of the team prefers what and another prefers how)

Reasons I've heard to defend how:

  * The ones cited above
  * Concision / shortness
  * Code reusability
  * Easier to test, extracting to collaborators[^2]

Reasons I've heard to defend what:
 
  * Knowing exactly what the code is doing: i.e., do not have to think what the name means and to what this corresponds
  

[^1]: [Growing Object-Oriented Software Guided by Tests](http://www.growing-object-oriented-software.com/)
[^2]: Altough I believe you shouldn't do anything _just_ for the purpose of tests. If it also improves your design, OK, but only for the tests, no.