---
categories:
- bash
date: 2018-07-13T07:03:19Z
published: false
title: Writing safe bash scripts
url: /blog/2018/07/13/writing-safe-bash-scripts/
---


After writing more and more bash scripts for a client, I've decided to write down my thoughts about it.

This assumes you have some knowledge about bash, as it is not intended as a beginner's tutorial.

## Why bash scripts?

  * Bash is present in almost every unix/linux-based stack, now some Windows as well. An exception is the 'alpine' docker images, which have a smaller, lighter shell (more on that later)
  * Everything that you can automate, you can do from bash. Bash forces you to create a (first?) client for your application and see how the integration is from the user's perspective
  * Testing your application from bash forces you to treat your application as a black-box (e.g., different technology, no shared state, no access to internals)


### Using a safe bash subset: sh

This is useful for 'alpine' docker images, as some alpine do not include bash.

The more general you need your script to be, the more you should prefer sh rather than bash. A source of generality can be making your script public (publish it), executing it under multiple environments, making it the installer for other tools, etc.


## Tips

### Do not hardcode the shell location

This is more common with perl than with bash, as most bash installs are placed at `/bin/bash`.

You can use `/usr/bin/env bash` / `/usr/bin/env sh` to spawn a shell.

Usage
```
#!/usr/bin/env bash

#rest of commands
```

### Options for executing / Header

set -euxo pipefail

### Debugging

bash -x

Dry run

Quiet ('-q') / Force ('-f')

### Using quotes

### SOLID

### Single Responsibility Principle (SRP)

### Hot-swap / reload

## Limitations

### When is bash enough

### When it is too much for bash

## Other resources
