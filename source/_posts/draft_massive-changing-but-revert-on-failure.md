---
published: false
categories:
  - sample
  - tip
  - git
  - bash
  - regex
---

I was changing a massive amount of files (>1000) for a repeated code. The search and replace query was not too exact and it broke many tests in the system. For that, I reverted all test-breaking changes in the system.

regex:

(tested in Sublime 3, build 3083, Windows 64)

find what: ``^[^(]+\([a-Z.]*\.(.*)\)``
replace with: ``$1``


