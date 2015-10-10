---
layout: post
title: "Tool: Building a local pipeline"
date: 2015-10-10 11:06:58 +0100
comments: true
categories:
  - polish-your-tool
  - tool
  - pipeline
  - automation
---

## Motivation

At a client, one of the projects has a long building process and the tests are mostly slow, so I use a local building [pipeline][wiki-pipeline], an example of the [Pipes and Filters][pipes-and-filters] pattern.

## Implementation

This requires two git repositories:

  * ``local`` or working copy. Configure it so it has a remote called ``pipeline`` and the ``origin``, the repository you cloned from.
  * ``pipeline``, used for building

In the ``local`` you can do the development and local commits.

When you're done, instead of

```bash
git push origin $branch
```
do

```bash
git push pipeline $branch
```

This will trigger the pipeline execution.

----

### Git hook

In the pipeline, in the ``.git/hooks/post-receive``:

```bash
#!/bin/bash
chmod +x pipeline.sh
while read oldrev newrev ref
do
  # whatever you want to execute
  ./pipeline.sh $newrev
done
```

In the above script, we're telling git to execute the ``pipeline.sh`` with the received branch as argument.

### Pipeline executor

In the pipeline, in ``.git`` folder:

```bash
#!/bin/bash

set -e
set -o pipefail

# upon failure, tell the user

function cleanup {
  git checkout develop
  git pull develop
}

function err {
  cleanup
  growlnotify "pipeline fails"
}

trap "err" ERR

branch=$1

if [[ -z $branch ]]; then
    echo "need to specify a branch"
    exit -1
fi

git checkout $branch
mvn clean install | tee output.log
git push --set-upstream origin $branch
cleanup
```

#### Pipeline executor explanation

* We prepare the bash environment:

    * ``-e``: fail the script when a command fails
    * ``-o pipefail``: fail the script when some command fails in a pipe
    * ``err`` and ``trap``: create a hook to be executed when the signal is trapped

* We require a branch to execute this script.
* Checkout to that branch
* Clean, compile & execute tests 
* Push to origin
* Clean up
* In case this fails, the script will stop and notify the user with ``growl`` and clean up.

Clean up: checkout to develop (or any other branch that always exists), leaving the system prepared to execute again.

The program ``growlnotify`` is a [CLI notifier][growlnotify] to growl ([windows][growl-for-windows], [linux][growl-for-linux])

In the pipeline, in the ``.git/hooks/post-receive`` file:

```bash
#!/bin/sh

while read oldrev newrev refname
do
    branch=$(git rev-parse --symbolic --abbrev-ref $refname)
    ./pipeline.sh $branch
done
```

## Reference

  * [Trap](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html)
  * [Set Builtin](https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html#The-Set-Builtin)
  * [Sample bash error handling](http://idolinux.blogspot.com/2008/08/bash-script-error-handling.html)

## Appendix

This script will push to the pipeline:

```bash
#!/bin/bash

git push pipeline  2>&1 > /dev/null &
```


[growl-for-windows]: http://www.growlforwindows.com/gfw/default.aspx
[growl-for-linux]: http://mattn.github.io/growl-for-linux/
[growlnotify]: http://www.growlforwindows.com/gfw/help/growlnotify.aspx
[wiki-pipeline]: https://en.wikipedia.org/wiki/Pipeline_(software)
[pipes-and-filters]: https://msdn.microsoft.com/library/dn568100.aspx