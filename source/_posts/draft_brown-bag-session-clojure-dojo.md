---
date: 2015-07-17 15:08:10 +0200
published: false
categories:
  - sample
  - brown-bag
  - training
  - client
---

Brown-bag session and Dojo in Clojure

At a client, today I've facilitated a brown-bag session introducing the Clojure language to a group of java programmers.

I've started hands-on, live coding on a REPL. To make things easier, I've created a maven project that imports the clojure jar and lets you obtain dependencies from clojars. The repo is [here][repo-project-clojure-for-java-devs]. This repo wouldn't have been possible without the [clojure maven plugin][clojure-maven-plugin], written by Mark Derricutt.

I've more or less followed [the guide][guide]

We've also practiced, using a dojo in clojure, the fizzbuzz kata.

There is a sample implementation in the same repo, [this folder][folder-fizzbuzz-implementation].

[repo-project-clojure-for-java-devs]: https://github.com/alvarogarcia7/clojure-for-java-devs
[clojure-maven-plugin]: https://github.com/talios/clojure-maven-plugin
[guide]: https://github.com/alvarogarcia7/clojure-for-java-devs/blob/master/guide.md
[folder-fizzbuzz-implementation]: https://github.com/alvarogarcia7/clojure-for-java-devs/tree/sample-implementation/src

TODO: tweet this, thanking him: @talios Thanks for your awesome https://github.com/talios/clojure-maven-plugin, we've successfully used it for this dojo: https://github.com/alvarogarcia7/clojure-for-java-devs