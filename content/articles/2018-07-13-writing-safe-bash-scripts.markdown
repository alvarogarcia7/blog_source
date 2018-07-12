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

Usage:

```
#!/usr/bin/env bash

#rest of commands
```

### Options for executing / Header

add these options:

```
set -euxo pipefail
```

These can be added anywhere, but I usually add them after the shebang (the beginning of the script)

<!--TODO add link to options-->

a brief note:

  * `set -e` stops the execution if a command fails (this is the default behavior in `make`)
  * `set -u`: do not allow unglobbing (expansion of regexes) or unbound variables. <!--TODO find the exact thing-->
  * `set -x`: debug. Trace the commands on the console
  * `set -o pipefail`: make the pipe command fail if any of the commands in the pipe fail. 
    * Example: with this option disabled, `a|b|c` when `a` fails, b will execute, the return value will be the one of `b`
    * Example: with this option enabled, `a|b|c` when `a` fails, `b` will not execute, the return value will be the one of `a`

If you want to use a try...catch pattern, disable `-e` temporarily:

```
set +e # 1
ls NON_EXISTING_FILE #2
set -e # 3
```

  * 1: Disable error-checking
  * 2: a command that could fail. As the error checking is disabled, the execution continues even if 2 throws an error. Therefore, the exception is swallowed.
  * 3: Enable error-checking again

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
