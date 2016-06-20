---
categories:
- retrospective
- experience-report
- meetup
- tdd
- training
comments: true
date: 2015-03-16T05:42:44Z
title: TDD Meetup Retrospective
---

Yesterday we organized a TDD meetup at the [FIB - Barcelona School of Informatics UPC][upc], within [Barcelona Software Craftsmanship][BCNSCweb] sponsored by the [Junior Empresa d'Informàtica][jedi]. The meetup started at 9:00 until 18:00, with a one-hour pause in the middle.

## Where

 * Please make sure the meetup space (e.g., classroom, meeting room) is available and ready to be used at least 15 minutes before the meetup starts
 * The organizer and the event host should be there in advance to prepare the physical environment (chairs, wifi, beamer, etc) as well as mentally: getting comfortable with the space, loading the presentation, prepare the speaker notes, etc.
 * Plan for the worse and hope for the best: in this particular meetup, the beamer was not available, so the host gracefully lent us some 23 inch screen as a second monitor.

## What

 * The speaker should have had already decided what they are going to cover on the meetup and not deviate much from this. Leave some empty buffer space at the end because you will cumulate some deviation during the day.
 * Of course, have the slides ready if you plan on using them 
 * I prefer having more conversations during the meetup rather than a masterclass-style one. The organizer(s) should act as conversation moderators, often guiding the conversation where (they think) it is most useful. Sometimes, it is a good idea to interrupt the conversation when someone is getting bored or losing focus[^1].
 * Be prepared to ask to your attendees what do they want: they are your target
 * Please ask to your attendees to bring their laptop with git, dependency manager, IDE / editor, test double framework installed. Otherwise, most of the first session is invested in downloading / configuring these.
 * Please try to be communicative / funny in some way. This makes the slides easier to understand

## Meetup details


 * We did two sessions of slides:
   * Introduction to TDD
   * TDD on a daily basis: learn TDD for a greater good


 * We did three katas:
   * LinkedList: [source][linkedlist]. Originally by [Dave "Pragmatic Dave" Thomas][pragdave]
   * Password: [source][password]. Taken from [Manuel Rivero][trikitrok], also seen on a [Carlos Blé][ble] workshop
   * Bank Kata: [source][bank]. Originally from [Sandro Mancuso][mancuso]



 * The format was this: the first set of slides, the two first katas, some discussion, then lunch; coffee (mandatory); the second set of slides, the third kata (done by them), later done by me at the beamer, explaining the situation and my mental process.

## Useful feedback

* About the event:
    * One 8-hour event is much more effective / efficient that 4 2-hour ones
    * No one complained about the lack of beamer. So don't worry too much if your host doesn't have one, as long as everybody can get close to the (big) screen.

* About the LinkedList kata:
    * This, as a first TDD example was too complex. Getting into TDD with classes, and serveral functions at the same time might be difficult.
    * Too academic. This is an example you will usually never implement yourself, as there are libraries who provide it. Therefore, not applicable.

* About the Password kata:
    * They graded this kata easier than the linkedList
    * Start with this as it is only a function
    * This has didactic value as there are some gotchas with this kata
    * More likely to be implemented by yourself, as most systems require some kind of user authentication

* About the Bank kata:
    * More resembling of a day-to-day problem
    * This is a difficult kata if you haven't learned about mocks / test doubles
    * Interesting interactions between objects

* For me: 
    * They liked both the format and the speaker (a.k.a., me)
    * They thought this meetup was well prepared in advance


* My own feedback:
    * It is difficult to ask the attendees to rate their own level or for you to rate it. I thought the linkedlist example would be so easy they would finish it in half the allowed time[^2], but it wasn't this way
    * The productivity level varies hugely from person to person. There were some pairs that dug thoroughly on the problem and others who got stuck (sometimes with the language). Even though both types of pairs were working hard on the proposed problem
    * We still haven't solved the problem with reservations: many people book a seat on the event but later won't come. This makes other (interested) attendees to not have a seat.



Should you want to, please share your feedback / comments via the comments section below or sending a pull request to this [repository][blog_source]



[upc]: http://www.fib.upc.edu/fib.html
[BCNSCweb]: http://www.meetup.com/Barcelona-Software-Craftsmanship/
[jedi]: http://jediupc.com/
[linkedlist]: http://codekata.com/kata/kata21-simple-lists/
[password]: https://gist.github.com/trikitrok/c031d6b621f28b85ce0d
[bank]: https://github.com/sandromancuso/Bank-kata
[trikitrok]: http://twitter.com/@trikitrok
[mancuso]: http://twitter.com/@sandromancuso
[pragdave]: http://twitter.com/@pragdave
[ble]: http://twitter.com/@carlosble
[blog_source]: https://github.com/alvarogarcia7/blog_source
[^1]: a good indicator of this is body language or position and whether they are doodling on a paper sheet.
[^2]: I did prepare against this adding more possible requirements to the kata, although we finally didn't use them