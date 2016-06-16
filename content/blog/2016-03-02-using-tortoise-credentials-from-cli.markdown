---
categories:
- git
- how-to
- tip
- cli
- tortoisegit
comments: true
date: 2016-03-02T12:41:28Z
title: 'Tip: using tortoise credentials in git CLI'
url: /2016/03/02/using-tortoise-credentials-from-cli/
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