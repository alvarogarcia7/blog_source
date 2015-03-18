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
  
  
