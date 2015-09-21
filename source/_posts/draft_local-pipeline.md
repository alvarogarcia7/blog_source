---
published: false
categories:
  - polish-your-tool
  - tool
  - pipeline
  - automation
---

In the working directory, in the top folder:

```bash
#!/bin/bash

git push pipeline  2>&1 > /dev/null &
```


In the pipeline, in ``.git`` folder:

```bash
#!/bin/bash

set -e

branch=$1

if [[ -z $branch ]]; then
    echo "need to specify a branch"
    exit -1
fi

git checkout $branch
mvn clean install
git push --set-upstream origin $branch
git checkout develop
```

