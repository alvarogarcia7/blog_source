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
set -o pipefail

branch=$1

if [[ -z $branch ]]; then
    echo "need to specify a branch"
    exit -1
fi

git checkout $branch
mvn clean install | tee output.log
git push --set-upstream origin $branch
git checkout develop
```

In the pipeline, in the ``.git/hooks/post-receive`` file:

```bash
#!/bin/sh

while read oldrev newrev refname
do
    branch=$(git rev-parse --symbolic --abbrev-ref $refname)
    ./pipeline.sh $branch
done
```


