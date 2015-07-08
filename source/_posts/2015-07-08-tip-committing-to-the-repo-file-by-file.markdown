---
layout: post
title: "Tip: committing to the repo file by file"
date: 2015-07-08 02:37:08 +0200
comments: true
categories:
  - tip
  - protip
  - git
  - bash
  - polish-your-tools
  - automation
---

I was prefer committing to the repo with commits that are as small as possible as long as it makes sense. It makes it much easier to rever the changes.

This is why I have some scripts to commit all the changes, even with the same message. This is one of them:

```bash
for f in $(git status -s |grep "^M"|awk '{print $2}'); do
  git add $f
  git commit -m "generic commit for all files"
done
```
