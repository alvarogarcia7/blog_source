---
categories:
- tip
- protip
- git
- bash
- polish-your-tools
- automation
comments: true
date: 2015-07-08T02:37:08Z
title: 'Tip: committing to the repo file by file'
url: /2015/07/08/tip-committing-to-the-repo-file-by-file/
---

I was prefer committing to the repo with commits that are as small as possible as long as it makes sense. It makes it much easier to rever the changes.

This is why I have some scripts to commit all the changes, even with the same message. This is one of them:

```bash
for f in $(git status -s |grep "^M"|awk '{print $2}'); do
  git add $f
  git commit -m "generic commit for all files"
done
```
