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

