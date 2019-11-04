---
categories:
- git
- example
- sensitive-information
- codename
- uuid
- toolbox
- tool
- stealth-mode
- non-disclosure-agreement
- security-clearance
date: 2019-11-04T10:22:19Z
title: On private but leaked information in a SaaS
url: /blog/2019/11/04/private-leaked-information-saas/
---

This is another tool for your toolbox: how to uncorrelate public and private information.

## Context

Context: there are clients who have sensitive information. Some is just 'companies being stealth' (e.g., don't want to make public until launching), some is just protected by a Non-Disclosure Agreement (NDA), some are protected by security clearance. The more sensitive, the greater protection needed. This tool applies to all sensitive information, regardless of where it's stored or how it is used.

More context: there are applications (i.e., SaaS) better installed in the cloud (e.g., expensive or impossible to install on-premise).

## Solution

Having sensitive information on the cloud is delicate. There is a fine balance needed to achieve the perfect equilibrium between security, confort, data privacy, cost (among others). Even when using private resources, there is information leaking to the public (i.e., people not included in the designated circle). 

Let's take an example: we create a git repository in an organization, on an online git vendor. For that, we choose the strictest security measures available (e.g. private repositories; private organization details [^1]). Even then, there's an overlooked piece of information that many times cannot be hidden: the URL.

See:

```
https://gitvendor.com/organization/repository
```

Both `organization` and `repository` can be leaked to the public. Even if they're not published (i.e., only available with a link), you can check whether this has been registered or not. Should you have a exposed-enough profile, when there are rumours that your company will launch a new product, people can investigate whether this domain/repo/organization has been registered.

This is one reason why, in the past, project are using a codename. Also, because the final project name has not been decided (e.g., removes choosing the project name from the critical path to start a project).

We can use --at least-- two techniques for using project [codenames](https://en.wikipedia.org/wiki/List_of_Microsoft_codenames):

  - Alias: choose a catchy name as a codename. Such as Utopia for Microsoft Bob, Longhorn for Windows Vista
  - Random data: choose a randomly-generated id (e.g., UUID), that is sufficiently random not to be guessed by chance, that does not relate in any way to the project. The downside to this is that it actually bears no relation to the thing, therefore difficult to remember.

Note: *nix-like systems can generate uuid with `uuidgen` ([man page](http://man7.org/linux/man-pages/man1/uuidgen.1.html))

## Conclusion

Make a wise choice of where to put your sensitive information.

When you can choose a SaaS solution, keep information private as needed. Be careful with the information you leak. When you are forced to use something public, you can use a codename or random data.


[^1]: This is not available in all git vendors that I've reviewed.
