---
categories:
- git
- pair-programming
- github
- how-to
- tip
- committer
- author
comments: true
date: 2016-02-14T17:12:28Z
title: Two persons involved in a git commit, in github
---

## On git

You can have multiple persons involved in a single git commit: an author and a committer.

The difference is explained by [Manuel Doninger][explanation-roles] [^1]: 

> The author is the one who did the code change.
> The committer is the person who committed that change to a repository.

an example, by the same author:

> Example: I'm not a committer in the EGit project, so i have no rights
to push directly to the EGit repository at Eclipse. But i contribute
to EGit, so my changes have the author set to my name and email. If my
change gets reviewed by the EGit team, and submitted, the committer
field contains the name and email of the person who submitted the
change

## On github

This is represented in github with this format:

![two persons involved](/{{site.category_dir}}/../uploads/commit-with-two-persons.png)

One of them is "sharplet" and the other one is "gfontenot". Both are github users that match a github-registered mail.

On a shallow inspection, the commit does not reveal anything special:

```bash
$ g log 17a96dba38479de78cdb3b3aae1c802f4d54f485 -n1 --full-diff
commit 17a96dba38479de78cdb3b3aae1c802f4d54f485
Author: XXXX <xxxx@example.com>
Date:   Wed Dec 2 14:44:52 2015 +1100

    Clarify specs by defining • as the composition operator
```

but looking a bit closer[^2],

```bash
$ g log 17a96dba38479de78cdb3b3aae1c802f4d54f485 -n1 --dense --full-diff --format="%H, %h, %T, %t, %P, %p, %an, %aN, %ae, %aE, %ad, %aD, %ar, %at, %ai, %cn, %cN, %ce, %cE, %cd, %cD, %cr, %ct, %ci, %cI, %d, %D, %e, %s, %f, %b, %B" | less
17a96dba38479de78cdb3b3aae1c802f4d54f485, 17a96db, 6bc2a33e3a069b78b9fd36124f5ed039a125303e, 6bc2a33, 29488bc0be27c5c03b6af7d115c7d45645382a7a, 29488bc, XXXX, XXXX, xxxx@example.com, xxxx@example.com, Wed Dec 2 14:44:52 2015 +1100, Wed, 2 Dec 2015 14:44:52 +1100, 3 months ago, 1449027892, 2015-12-02 14:44:52 +1100, YYYY, YYYY, yyyy@example.com, yyyy@example.com, Tue Dec 15 09:30:28 2015 -0800, Tue, 15 Dec 2015 09:30:28 -0800, 9 weeks ago, 1450200628, 2015-12-15 09:30:28 -0800, %cI, , %D, , Clarify specs by defining • as the composition operator, Clarify-specs-by-defining-as-the-composition-operator, , Clarify specs by defining • as the composition operator
```

or, just the emails:

```bash
$ g log 17a96dba38479de78cdb3b3aae1c802f4d54f485 -n1 --dense --full-diff --format='%ae %ce'
xxxx@example.com yyyy@example.com
```

## Usage

For a single commit: 

```bash
$ GIT_COMMITTER_NAME='John Doe' GIT_COMMITTER_EMAIL='john@example.com' git commit -m "..."
```

For a session:
```
export GIT_COMMITTER_NAME='John Doe'
export GIT_COMMITTER_EMAIL='john@example.com'
```

Taken from [this StackOverflow answer][how-to-use-it]

This can be useful for a pairing session or for some kinds of git history rewrite.

[explanation-roles]: https://groups.google.com/forum/#!topic/repo-discuss/6aH9rH8nUdo
[^1]: also explained in [this StackOverflow post](http://stackoverflow.com/questions/6755824/what-is-the-difference-between-author-and-committer-in-git)
[^2]: this list has been generated from the available arguments at the ["pretty formats" at the git-log page](https://git-scm.com/docs/git-log)
[how-to-use-it]: http://stackoverflow.com/a/23108169/1181094