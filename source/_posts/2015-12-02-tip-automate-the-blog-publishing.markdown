---
layout: post
title: "Tip: automate the blog publishing"
date: 2015-12-02 19:10:40 +0100
comments: true
categories: 
  - meta
  - automation
  - blog
  - travis
  - ci
---

I've automated the generation of the blog using [Travis CI][travis-ci]. Using this new way, each commit generates a new version of the pages.

These resources have been very useful:

  * [Prose.io + Octopress + Travis-CI + GitHub Pages = ♥](http://darvin.github.io/2013/01/13/Prose_Octopress_TravisIO). First post (in this set) that explains how this automation is possible
  * [Auto-deploying to My Octopress Blog With Travis-CI](https://harimenon.com/blog/2013/01/27/auto-deploying-to-my-octopress-blog/). Explains how to generate your key, encript it with travis
  * [Octopress + GitHub Pages + Travis](http://blog.yasuoza.com/2014/01/13/octopress-plus-github-pages-plus-travis/): The most useful page, explains step by step what to do for mac and linux.
  * [Octopress+Prose+Github+Travis CI = coders' blog - Human, not octopus](https://disqus.com/home/discussion/codez/octopressprosegithubtravis_ci_coders_blog_human_not_octopus/).Altough the page is not available anymore, this discussion explains why it is safe to store your private key in the file ``.travis.yaml``.

[An example](https://github.com/floydpink?tab=repositories) of the resulting repository, by [Hari Menon](https://github.com/floydpink).

[travis-ci]: https://travis-ci.org/