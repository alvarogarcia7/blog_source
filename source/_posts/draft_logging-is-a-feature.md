---
published: false
categories:
  - logging
---

if we use logging as described in GOOS chapter 19 and 20, some of the problems are reduced:

  * multiple levels of abstraction
  * indirect control over logging. decide in a single place whether to log exceptions of each kind or not
  * remove "implementation details" such as "log.isDebugEnabled"
  * remove performance issues: no need to build strings for logging everytime, only need to pass objects. inside the logging layer, if the logger is enabled for that level, then spend the time building strings and print them
  
We should remember that:
  * Whenever logging becames useful data (for the stakeholders) it no longer is a debug information and needs to be tested (automatically). In my opinion, it is not enough to test it daily when debugging, as these stakeholders rely on the data. Also, humans are not good detecting small differences, while machines excel at it.
  
At a client, we're facing this challenge: we cannot access production logs, as we don't have access to production environments. The solution we've chose is to implement the logging component as a layer on top of [Splunk](http://www.splunk.com/)

This formatter layer --per component-- accesses a generic layer --for the whole company-- that accesses splunk. In this manner, it is very easy to reuse the splunk connection and configuration and inject mocks. Also helps with the local environment: you always log to console (even if in production you don't have access to it) and can disable this in local, not needing a local splunk installation

Strategies for dealing with this:

 * functional logger: no shared state
 * stateful logger: information is added to the threadContext and logged whenever necessary
 * mixed: mix and match the best of both worlds.
