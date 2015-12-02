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

  * https://harimenon.com/blog/2013/01/27/auto-deploying-to-my-octopress-blog/
  * https://disqus.com/home/discussion/codez/octopressprosegithubtravis_ci_coders_blog_human_not_octopus/
  * http://darvin.github.io/2013/01/13/Prose_Octopress_TravisIO/
  * http://blog.yasuoza.com/2014/01/13/octopress-plus-github-pages-plus-travis/

[An example](https://github.com/floydpink?tab=repositories) of the resulting repository, by [Hari Menon](https://github.com/floydpink).

[travis-ci]: https://travis-ci.org/