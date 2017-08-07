---
categories:
- bash
comments: true
date: 2017-08-07T06:32:19Z
title: Finding all pending work in progress (WIP) in your workspace
url: /blog/2017/08/07/find-all-pending-work/
---

It is a good practice to push your local work at the end of the day. Be it for increasing the bus factor (more people have the code), be it for reducing the lifespan of the branches (less time without integrating) or just enabling visibility (your teammates to see what has been developed). If you're using Continuous Integration (CI) or Continuous Delivery (CD), this is even more often

You can even do it more often: for example before going to lunch, before a meeting, before a demo, etc.

Working with many repositories (e.g. a microservices environment/architecture), it is often the case where you will have multiple folders with work, possibly work in progress (WIP).

This is why we have created a small tool to detect git repositories that have local changes that haven't been pushed yet.

Feedback is more than welcome.

