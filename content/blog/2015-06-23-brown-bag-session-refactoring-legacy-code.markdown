---
categories:
- refactor
- refactoring
- legacy-code
- training
- brown-bag-session
- client
- experience-report
comments: true
date: 2015-06-23T19:19:28Z
title: 'Brown-bag session: Refactoring legacy code'
url: /2015/06/23/brown-bag-session-refactoring-legacy-code/
---

Today I have facilitated a brown bag session about refactoring legacy code applications, as this is the case with one of the applications we maintain and add new features to.

The contents of the session:

  * Briefly exposing the problem to the team, me taking the role of the Product Owner (PO)
  * Ask the dev team to add an easy feature
  * Do it without tests, as it was so simple that they thought they could do it (using mob programming)
  * Ask if they were satisfied by the patch / fix. Answer was yes.
  * Point out that there are regressions in the few lines of the patch
  * Repeat the session, starting with adding tests to guarantee the behavior is preserved  (using mob programming)
  * Explain the technique of the golden master
  * Some more programming, until they start to see the light at the end of the tunnel
  * Small retrospective, including:
    * asking them their feelings when dealing with legacy code. The contents of this is pretty similar to the concepts that appear in the retrospectives, when talking about the legacy project / submodule.
    * what could I improve as facilitator or for the structure of the session
    
The repo can be found [here][repo-spike].

I prepared a small script:

```bash
while test true; do
  git add --all;
  git commit --all -m "save process - uknown state";
  sleep 120;
done;
```

that saves the process and the progress, without disturbing the attendees. This allows you to follow the progress without any distraction. This idea was taken from a similar one from  [Xavi Gost][xav1uzz] [^1]

This same idea was also cited by someone else, if I recall correctly by Sandro Mancuso, saying that it would be a good idea to have a background git repository while working. IntelliJ IDEA already does something similar (and saves the events, e.g., when the tests are run, either red or green)

[xav1uzz]: http://twitter.com/@xav1uzz
[repo-spike]: https://github.com/alvarogarcia7/trivia-kata-spike
[^1]: Cannot find the source, it was about having a script to commit automatically each time you run the tests; if it was red while refactoring, it would do git checkout (to revert); Was related to the noFlopSquad
