---
categories:
- tool
- toolbox
- git
- documentation
- spike
- automation
- marker
- marker-interface
- flow
- problem
- solution
date: 2019-05-29T22:32:19Z
title: Automatically keeping the intermediate history of your work using git
url: /blog/2019/05/29/keeping-intermediate-history-work-git/
---

This is another tool for your toolbox: using git to automatically document your development process (special cases only.)

## Context

When I'm spiking a feature, I usually get in the zone (e.g., Csikszentmihalyi's Flow), and I can forget my good engineering practices, searching for that desired answer. After a few of those bouts of coding, you realize you're wandering. You circle around, get lost, get back on track, then get lost again. You might or might not reach your goal.

I sometimes lose the path that took me to the solution. This is helpful when you want to get back on your tracks (e.g., you broke something along the way). But I forget to commit as often as I should.

## Solution

To document, I came up with a (very) simple tool to document the path:

```bash
while [ true ]; do
  date
  git add .
  git commit -am "Automatic: Save progress"
  sleep 10
done
```

This will create automatic (i.e., meaningless) commits every 10 seconds. It covers the need of "not forgetting to save the progress". This script is so small, that there is no point in creating a tool around it. Type it as a one-liner when you need it.

When you create meaningful increments (e.g., a milestone), when you decide that you should save your progress, you can commit as well. The downside is that the automatic commits will pollute your log, and the diff will not represent the full delta. For that, you can create a marker (i.e., one that does not have any diff - use the `allow-empty` parameter). That kind of commit is like a [Marker Interface Pattern](https://en.wikipedia.org/wiki/Marker_interface_pattern), to pinpoint a specific delta:

```bash
git commit -am "Marker: Completed the ...." --allow-empty
```

When you want to see all the changes, `git diff` between two commits (e.g., Markers) or you can rebase with squash (`git rebase --interactive`) into another branch (so you keep this history).

## Alternative

(Updated 2022-07-27) Another alternative for this kind of work is to rely on JetBrains' 'Local History' feature. This is some kind of internal backlog of changes, that keeps what has changed, when. Imagine a git repo, in which you can select changes in a specific folder, file, etc. The system also registers when you executed the tests (red or green), as noted [here](https://www.jetbrains.com/help/idea/local-history.html#label-local-history-revisions).

JetBrains publishes a site for Local History [here](https://www.jetbrains.com/help/idea/local-history.html).

## Summary

Summary:

  * Automatic commits to save your progress. To save the progress.
  * Manual commits to pinpoint milestones. To document.
  * Tools help you be more productive

