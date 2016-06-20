---
categories:
- logging
- log
- feature
- hypothesis
- client
- challenge
- splunk
comments: true
date: 2015-04-19T23:43:10Z
title: Logging is a feature
---

At a client, we're facing this challenge: we cannot access production logs, as we don't have access to production environments. The solution we've chose is to implement the logging component as a layer on top of [Splunk](http://www.splunk.com/).

This formatter layer --per component-- accesses a generic layer --for the whole company-- that accesses splunk. In this manner, it is very easy to reuse the splunk connection and configuration and inject mocks. Also helps with the local environment: you always log to console (even if in production you don't have access to it) and can disable this in local, not needing a local splunk installation.

Strategies for dealing with this:

 * functional logger: no shared state
   * can only log information available in this scope: parameters, attributes, static information
 * stateful logger: information is added to the threadContext and logged whenever necessary
   * can log information in this scope plus any of the previous invokings.
   * the problem is precisely sharing state: you have to control all the possible parents to know where this data comes from. A piece of information may come from any source. 
   * Lose the reference of who is invoking you, as there is no customization for this. (only using implementation)
   * Speak two different languages: one for logging and one for business logic
 * mixed: mix and match the best of both worlds.
   * The problem with the shared state can be solved if no data is overwritten and any information is stored in a map where the key is the fully qualified (FQ) method name (or FQ class name + FQ method name)



The GOOS book explains this very well on the 20th chapter, first half "logging is a feature". If we log as described in chapters 19 and 20, some of the problems are reduced:

  * multiple levels of abstraction
  * indirect control over logging. decide in a single place whether to log exceptions of each kind or not
  * remove "implementation details" such as "log.isDebugEnabled"
  * remove performance issues: no need to build strings for logging every time, only need to pass objects. inside the logging layer, if the logger is enabled for that level, then spend the time building strings and print them
  
We should remember that:

  * Whenever logging becomes useful data (for the stakeholders) it no longer is a debug information and needs to be tested (automatically). In my opinion, it is not enough to test it daily when debugging, as these stakeholders rely on the data. Also, humans are not good detecting small differences, while machines excel at it.
  * Why treat the logging feature different from any other? It is an investment, like any other, and as such should work properly