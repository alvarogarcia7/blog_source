---
categories:
- client
- questioning
- choice
- pragmatism
- versioning
- git
- solution
- if-it-aint-broke-dont-fix-it
date: 2018-07-04T07:03:19Z
published: false
title: Questioning the existing choices
url: /blog/2018/07/04/questioning-existing-choices/
---

## Context

For a client, we have worked on a service that works with files (containing sensitive data) that get corrupted very often.

The use case is generally:

  * Two/Three file opens per day
  * One modification per 10 file opens
  * One corruption per 100 file opens

## Initial solution

The initial solution was just to copy the file (`file.txt`) before opening, after closing. This results in two files (`YYY-MM-DDTHH-mm-ss_before_file.txt`, `YYY-MM-DDTHH-mm-ss_after_file.txt`).

As this solution quickly became unmaintainable, the client developed a solution to hash the contents of the file and to remove the duplicated files.

The original cost for developing this was high, as in-house software was needed for comparing the hashes of the files, for comparing the files (remember this is sensitive data). Even if this was just a script, the possibility of deleting correct data is just too much risk.

Even if this was a pragmatic choice back then (as they did not realize about the cheaper solution), the danger of deleting data is still present as long as the old script is used. Maintainability wise, that script is simple enough but a defect could be potentially dangerous. (This is why the script for deleting the duplicated files does not actually delete files but generates a bash script for deleting them, which you can review before applying.)

## Another solution

When asked about this solution, the client mentioned that this was working well enough. Which is true.

Another solution could be to store this file in a git repository and only commit the changes when there actually are changes to commit.

The git repository solves both:
  
  * the problem of not having to delete data (as no duplicated data is generated)
  * the cost of writing in-house software, as a single script to commit files is enough

## Conclusion

This client was using "if ain't broken, don't touch it", with a good-enough solution.

Not questioning the existing choice is expensive, putting you in a worse place that they could be. Questioning all the existing choices is expensive, and time-consuming. Finding the sweet spot (whether to question or not), depends heavily on the context.

