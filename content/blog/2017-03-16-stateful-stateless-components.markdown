---
categories:
- lessons-learned
- client
- stateful
- stateful-component
- stateless
- stateless-component
- separation
- resource-management
- make-buy-rent
- phil-simon
comments: true
date: 2017-03-16T07:39:19Z
title: "On the Make, Buy or Rent decision: Stateful vs Stateless components"
---

From the [Make, Buy or Rent][mbr] article:

> [...] [T]he three main system options for organizations seeking to upgrade their systems and the pros and cons of each

  * Make
  * Buy
  * Rent

IT managers have different criteria for deciding which components to assign in each category.

## Another criteria for deciding

At a client, they have taken the decision to split their core IT systems in to the three options: make, buy, rent.

  * The business logic to handle the core business is 'make'. These systems are completely stateless
  * The persistance (or storage) for the core business is 'rent'. These systems, by definition, are stateful
  * Other parts of the system are 'buy'. Not important for this article

The key concept for this separation is moving the responsibility for uptime and complex data management to a provider. They can take better care of those procedures and use economies of scale to provide high availability, reliability and SLAs. This idea simplifies our components (e.g., services), making them stateless. Even if they cache any internal information, it is a 'Read Through Cache', meaning that in case the data is not available in the cache, the service will transparently fetch it from the underlying storage system.

This idea for separating components simplifies both development, testing and maintainance, therefore reducing the Total Cost of Ownership (TCO) of our services.

[mbr]: http://www.ittoday.info/Articles/Make_Buy_or_Rent.htm

