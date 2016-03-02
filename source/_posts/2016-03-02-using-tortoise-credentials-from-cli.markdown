---
layout: post
title: "Tip: using tortoise credentials in git CLI"
date: 2016-03-02 12:41:28 +0100
comments: true
categories: 
 - git
 - how-to
 - tip
 - cli
 - tortoisegit
---

## TortoiseGit part

  * Go to a repo
  * right button, Settings
  * Git -> Credential
  * Add a creadential
  * Config type: global
  * Helper: wincred


Sync once using your HTTPS password

## CLI part

Open the ``$REPO/.git/config`` and add

```
[credential]
	helper = wincred
```

Remote git operations should not ask for credentials anymore