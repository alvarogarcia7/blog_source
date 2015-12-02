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
  - octopress
---

I've automated the generation of the blog using [Travis CI][travis-ci]. Using this new way, each commit generates a new version of the pages.

These resources have been very useful:

  * [Prose.io + Octopress + Travis-CI + GitHub Pages = ♥][source1]. First post (in this set) that explains how this automation is possible
  * [Auto-deploying to My Octopress Blog With Travis-CI][source2]. Explains how to generate your key, encript it with travis
  * [Octopress + GitHub Pages + Travis][source3]: The most useful page, explains step by step what to do for mac and linux.
  * [Octopress+Prose+Github+Travis CI = coders' blog - Human, not octopus][source4].Altough the page is not available anymore, this discussion explains why it is safe to store your private key in the file ``.travis.yml``.

[An example](https://github.com/floydpink?tab=repositories) of the resulting repository, by [Hari Menon](https://github.com/floydpink).

[travis-ci]: https://travis-ci.org/
[source1]: http://darvin.github.io/2013/01/13/Prose_Octopress_TravisIO
[source2]: https://harimenon.com/blog/2013/01/27/auto-deploying-to-my-octopress-blog/
[source3]: http://blog.yasuoza.com/2014/01/13/octopress-plus-github-pages-plus-travis/
[source4]: https://disqus.com/home/discussion/codez/octopressprosegithubtravis_ci_coders_blog_human_not_octopus/


## My own modifications

The full diff for making this change is [here](https://github.com/alvarogarcia7/blog_source/compare/8414267a1e8e1f0ef588602121f32da3f6eb9f9e...9f60c76d6d9faca8cff8bce2f0a00bf8f2eafb30). Disregard the changes in:  

  * ``partial/1444939871_diff.txt``
  * ``partial/1444939871_msg.txt``
  * ``source/_posts/2015-12-02-self-study-in-december-2015.markdown``

