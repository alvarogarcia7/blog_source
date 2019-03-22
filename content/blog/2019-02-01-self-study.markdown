---
categories:
- self-study-aggregation
- february
- 2019
- acid
- aerospike
- agile
- ap
- aphyr
- atul-adya
- availability
- awk
- aws
- bloat
- brad-appleton
- cap
- cap-theorem
- commit
- commit-conf
- comparison
- consistency
- consistency-level
- cp
- database
- dirty-read
- disenchantment
- documentation
- dynamodb
- executable-documentation
- extreme-programming
- feedback
- fuzzy-read
- good-feedback
- guide
- help
- honest-feedback
- isolation
- jepsen
- jesuslc
- laura-lacarra
- lean
- lean-software
- liskov
- makefile
- microsoft
- neil-green
- nikita-prokopov
- non-repeatable
- partitioning
- paxos
- people
- people-management
- personality-type
- phantom
- phantom-read
- practice
- principle
- quote
- rant
- read-committed
- read-uncommitted
- repeatable-read
- serializability
- serializable
- slide
- slideshare
- software
- spanish
- speed
- sql-database
- stronger-serializable
- tonsky
- transaction
- trick
- value
- xp
date: 2019-02-01T10:32:19Z
title: Self-Study in February 2019
url: /blog/2019/02/01/self-study-february-2019/
---

## [Amazon DynamoDB Transactions: How it Works](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html)

Explains how transactions work in DynamoDB

Tags: dynamodb, aws, help, transaction, serializable

Id: 7fb09cd4-2639-11e9-9377-0242ac110002
Read: Fri, 01 Feb 2019 15:53:20 +0000

## [Jepsen: Aerospike](https://aphyr.com/posts/324-call-me-maybe-aerospike)

I've read this analysis of Aerospike, that explains what kind of database it is, what CAP properties satisfies

Tags: cap, cap-theorem, jepsen, aphyr, aerospike, database, acid, ap, cp, consistency, availability, partitioning, paxos

Id: bd7151c6-2639-11e9-a38e-0242ac110002
Read: Fri, 01 Feb 2019 15:55:04 +0000

## [A Critique of ANSI SQL Isolation Levels](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/tr-95-51.pdf)

I've read this paper that explains the ANSI SQL isolation levels

Tags: non-repeatable, fuzzy-read, dirty-read, phantom, phantom-read, isolation, serializability, consistency, consistency, consistency-level, read-uncommitted, read-committed, repeatable-read, serializable, microsoft

Id: 01292b8c-263a-11e9-a7fe-0242ac110002
Read: Fri, 01 Feb 2019 15:56:58 +0000

## [Weak Consistency: A Generalized Theory and Optimistic Implementations for Distributed Transactions](http://pmg.csail.mit.edu/papers/adya-phd.pdf)

An extended paper on ACID properties for SQL databases

Tags: liskov, atul-adya, stronger-serializable, consistency, consistency-level, isolation, database, sql-database, acid, transaction

Id: 4a1c6f7a-263a-11e9-8e08-0242ac110002
Read: Fri, 01 Feb 2019 15:59:00 +0000

## [No todo el mundo sabe o debe dar feedback](https://softwareyotrasdesvirtudes.com/2018/11/26/no-todo-el-mundo-sabe-o-debe-dar-feedback/)

The author explains why some feedback is dangerous: either the way of giving it, or the message, or both.

In this case, she's talking about the Commit Conf, but this is applicable to any situation

Para dar un buen feedback es importante:

  * Primero: agradecer el esfuerzo por la charla.
  * Segundo: resaltar algo positivo de ella.  Seguro que algo cumple.
  * Tercero: decir cómo mejorarías un aspecto
  * Último: volver a dar las gracias o decir una frase buena que motive.



Dar un mal feedback es muy fácil:

  * Primero: no leerte la descripción ni el nivel de la charla
  * Segundo: te cabreas porque no es lo esperado y dudabas entre esa y otra charla
  * Tercero: dices lo que no te ha gustado sin rodeos.
  * Cuarto: además asumes cosas que no ha hecho y las escribes. Igual que yo he hecho en el Primero y Segundo.
  * Quinto: si además dices algo faltoso gana puntos.
  * Sexto: Utilizas esa tónica destructiva en todos.

Tags: laura-lacarra, commit, commit-conf, feedback, good-feedback, honest-feedback, spanish

Id: 20d8145e-3a92-11e9-8023-0242ac110003
Read: Wed, 27 Feb 2019 13:18:10 +0000

## [How to Deal with Difficult People on Software Projects](https://people.neilon.software/)

I've read this guide on dealing with difficult people.

There are many (48) personality types, including these types:

  * Product Managers
  * Designers
  * Project Managers
  * Development Managers
  * Developers
  * Quality Assurance

Tags: people, people-management, personality-type, guide, neil-green

Id: 95554892-3a92-11e9-9bbf-0242ac110003
Read: Wed, 27 Feb 2019 13:21:25 +0000

## [Software disenchantment](http://tonsky.me/blog/disenchantment/)

I've read this article about somebody disenchanted with the current state of the art of software: slow, bloated, not better than 10 years ago, or faster.

Tags: nikita-prokopov, bloat, rant, disenchantment, tonsky, comparison, speed, software

Id: 0078d58a-3a93-11e9-8f23-0242ac110003
Read: Wed, 27 Feb 2019 13:24:25 +0000

## [The Values and Principles of Agile Software Development](https://www.slideshare.net/bradapp/the-values-and-principles-of-agile-software-development)

I've read the slides of this presentation by Brad Appleton, on Values, Principles, and Practices in an Agile environment.

Plenty of good quotes

Tags: brad-appleton, slideshare, slide, agile, practice, principle, value, xp, extreme-programming, quote, lean-software, lean

Id: 42cdde80-3a93-11e9-814c-0242ac110003
Read: Wed, 27 Feb 2019 13:26:16 +0000

## [Makefiles como dejar de memorizar comandos en docker – Developer Vago](https://jesuslc.com/2018/04/21/makefiles-como-dejar-de-memorizar-comandos-en-docker-developer-vago/)

I've discovered a new technique for Makefiles:\n\nUsing a common format (a DSL, in fact) to document the goal, then a new goal 'help' to print that documentation.

```bash
.PHONY: help
help: ## Print this help.
  @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = \":.*?## \"}; {printf \"\033[36m%-20s\033[0m %s\n\", $$1, $$2}'
```

when you run `make help`, then

```
Print this help.
```

Tags: makefile, jesuslc, documentation, executable-documentation, awk, trick, help

Id: d6a4b78c-3a93-11e9-88d7-0242ac110003
Read: Wed, 27 Feb 2019 13:30:24 +0000

