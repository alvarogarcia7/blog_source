---
categories:
- self-study-aggregation
- august
- 2016
- read
- 2fa
- aaron-krauss
- agile
- amazon
- bill-sourour
- binding
- career
- conf
- conference
- const
- degree
- devin-coldewey
- devops
- es2015
- eventual-consistency
- experience
- full-stack-developer
- function
- hand-signals
- holberton-school
- interview-process
- javascript
- josip-franjkovic
- juan-hernandez
- kyle-young
- lead-dev
- lessons-learned
- lifecycle
- maryam-labib
- nist
- occupy-movement
- on-call
- opinion
- pair-programming
- pivotal
- professional-career
- race-condition
- regulation
- rest
- rest-api
- ryan-alexander
- security
- semicolon
- sms
- spanish
- style
- sylvain-kalache
- syntax
- tdd
- tdz
- team
- temporal-dead-zone
- title
- university
- us-nist
- var
- web
comments: true
date: 2016-08-01T19:56:19Z
title: Self-Study in August 2016
---

## Lessons in Agile: Six Months at Pivotal

I've read [this article][six-months-pivotal-labib] by Maryam Labib where she explains what she has learned in the last 6 months at Pivotal: how to pair program, how to TDD and some good practices to be a better developer.

Tags: maryam-labib, pivotal, career, professional-career, tdd, pair-programming, team, lessons-learned, experience

[six-months-pivotal-labib]: https://medium.com/built-to-adapt/lessons-in-agile-six-months-at-pivotal-66b4c57386a4

## Hacking verbal communication systems

I've watched [this talk][comm-systems] by Ryan Alexander on what kind of systems humans use to communicate and how to improve them. Explains the hand signals at Occupy movement (called (Occupy movement hand signals)[https://en.wikipedia.org/wiki/Occupy_movement_hand_signals]) 

Tags: conference, ryan-alexander, lead-dev, conf, hand-signals, occupy-movement

[comm-systems]: https://vimeo.com/album/4045988/video/173255458

## Ni titulitis, ni cuñadismo (Spanish)

 I've read [this article][titulitis] about the regulation or no regulation of the programmer trade, by Juan María Hernández

 Tags: regulation, opinion, title, degree, university, juan-hernandez, spanish

[titulitis]: http://blog.koalite.com/2016/06/ni-titulitis-ni-cunadismo

## Are Semicolons Necessary in JavaScript?

I've watched [this video][semicolons-in-js] by Kyle Robinson Young on whether semicolons are necessary in javascript and why he purposely does not use them, to teach people how to do it. Suggests going for a month with the opposite way (write / don't write) to see how it feels and take an informed decision.

Tags: javascript, semicolon, style, syntax, kyle-young

[semicolons-in-js]: https://www.youtube.com/watch?v=gsfbh17Ax9I

## Race conditions on the web

I've read [this article][race-condition-web] by Josip Franjković on the race conditions that can happen using REST APIs, related to eventual consistency matters.

Tags: eventual-consistency, josip-franjkovic, race-condition, rest-api, rest, web

[race-condition-web]: https://www.josipfranjkovic.com/blog/race-conditions-on-web

## NIST declares the age of SMS-based 2-factor authentication over

 I've read [this article][changes-in-2fa] by Devin Coldewey, where he explains that the US NIST has published a draft that suggests using SMS for two-factor authentication in a different way: check that they are real phones and not VoIP to reduce the tampering with.

 Tags:  devin-coldewey, 2fa, sms, nist, us-nist, security

[changes-in-2fa]: https://techcrunch.com/2016/07/25/nist-declares-the-age-of-sms-based-2-factor-authentication-over/

## My Interviews with Amazon

I've read [this article][interview-at-amazon] by Aaron Krauss, where he explains his experience interviewing with Amazon at Seattle. Explains the whole process and insights from some phases.

Tags: aaron-krauss, amazon, interview-process

[interview-at-amazon]: https://thesocietea.org/2016/07/my-interviews-with-amazon/

## DevOps Students Learn the Value of Uptime With 3 a.m. Calls

I've read [this article][devops-at-holberton] about the practices related to "on call" at Holberton School and their students.

Tags: sylvain-kalache, holberton-school, on-call, full-stack-developer, devops, agile

[devops-at-holberton]: https://www.linux.com/news/devops-students-learn-value-uptime-3-am-calls

## Constant confusion: why I still use JavaScript function statements

I've read [this article][constant-confusion] that explains the comparison of declaring functions in javascript (ES2015 and above), with the short notation for a function. By Bill Sourour.

Cites the temporal dead zone (TDZ):

> [...] JavaScript binds the declaration of “sayHelloTo” — reads it first, puts it at the top, and creates a space in memory to hold its value — but it doesn’t set “sayHelloTo” to anything until it reaches it during execution.
>
>The time between “sayHelloTo” being bound and “sayHelloTo” being initialized is called the temporal dead zone (TDZ).

Tags: tdz, temporal-dead-zone, bill-sourour, javascript, es2015, function, const, var, binding, lifecycle

[constant-confusion]: https://medium.freecodecamp.com/constant-confusion-why-i-still-use-javascript-function-statements-984ece0b72fd
