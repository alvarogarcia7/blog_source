---
title: "Building private tools in the open"
categories:
  - tool
  - private-tool
  - separation
date: 2024-08-31T18:04:28+0400
published: false
url: /articles/2024/08/31/building-private-tools-open/
---

## Introduction
It is very common to develop private tools in private: private git repositories, private servers, private data, private everything.

But what if you want to obtain the benefits of developing in the open while keeping your privacy?

## Context and Applicability
We have been developing tools like this. It works well, you just have to be careful on what gets committed where.
## How to
### Data
#### Repository pattern to access data
#### Same repository to access both data
### Behavior
#### common interface to access both
#### Import by name (from CLI)
## Tips and tricks
### Keep the tool in one folder
### Keep the data in another folder
### Each folder is a different repo
## Pros and Cons
### Advantages
#### Take advantage of develiping in the open, while keeping your information private
#### Testing in the open
#### Collaboration
#### Open source
### Downsides
#### Leaking about having such a tool
#### Leaking about using that technology
#### Risk of committing private data to a public repository
## Examples
### tariochtools
## Conclusion
### Separate the public and private information
### Take advantage of develiping in the open, while keeping your information private
