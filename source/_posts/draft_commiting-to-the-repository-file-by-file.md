---
published: false
categories:
  - sample
  - tip
  - git
  - bash
---

I was prefer committing to the repo with commits that are as small as possible as long as it makes sense. It makes it much easier to rever the changes.

This is why I have my scripts to commit all the changes, even with the same message. This is one of them:

```bash
for f in $(git status -s |grep "^M"); do
  git add $f
  git commit -m "generic commit for all files"
done
```

