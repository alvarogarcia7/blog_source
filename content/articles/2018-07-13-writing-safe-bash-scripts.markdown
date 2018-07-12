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


### Using a safe bash subset: sh

Useful for 'alpine' docker images.

## Tips

### Do not hardcode the shell location

### Options for executing

set -euxo pipefail

### Debugging

bash -x

### Using quotes

### SOLID

### Single Responsibility Principle (SRP)

### Hot-swap / reload

## Limitations

### When is bash enough

### When it is too much for bash

## Other resources
