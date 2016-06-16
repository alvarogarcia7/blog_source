---
categories:
- agile
- code-review
- troll-review
- craftsmanship
- notes
- experience-report
- team
- barcelona-software-craftsmanship
comments: true
date: 2015-03-16T22:44:42Z
title: 'Open Space: Code reviews'
---

Today we've discussed about code reviews on [this open space][eventpage]

## Notes

These are my notes, in no particular order:

  * reduce information silos all around the company, as everyone [technical] can participate in these events
  * raise the "just arrived" people's knowledge [Difficult to hit the ground up and running, but these code review sessions can help]
  * invest one person as 'sheriff' for the sprint: they will take care of static analysis tools (such as sonar) and continuous integration (CI; such as jenkins). They will make sure others follow the working agreements
  * In the academic environment, some teams do share their patches via mailing lists and this makes it much slower to adapt and review changes [As compared to an on-line sharing system - like web-based interfaces to distributed version control systems] As this team doesn't have a CI tool, they must test it / try it manually before reviewing the code.
  * Pair programming does not remove the need for code review [This has been surfaced twice]
  * Your work is not more important than your team members' one. [Related to not having time to code review]
  * Do code reviews include architecture? [We've agreed that the architecture to some degree should be discussed before code reviews]
  * "Troll review"
  * Anyone can veto pull requests [By opening a question; do not allow for pull requests to be closed with open questions]
  * A 15-minute time slot everyday to code review [As code hygiene; Done right after lunch,  breakfast or just before leaving, when you're tired]
  * Code review tasks have higher priority than other tasks [Do not take other tasks if there are code reviews to do]
  * Code reviews put a lot of pressure so people learn and the knowledge level equalizes across the team


## Conclusions


 My conclusions, even though some of them were not shared by everyone:

  * Most of the people approve of code review practices: either they are doing them or are trying to apply them at their clients. (Warning: this was a code review meetup, so there's a bias: people not interested in them won't come). No one was against doing them.
  * Code reviews have a cost, although it is beneficial to do them
  * Should your teammates not want to participate in the code review after agreeing on doing them, appeal to their professionalism / accountability, then to their time (stated before), then troll them: after a few (healthy) trolling code review sessions, people will feel more comfortable reviewing and being reviewed. Special mention to Miguel who coined (?)[^1] the term: troll review.
  * Great way of equalizing the (technical) knowledge level within the team
  * Great way of reduce information silos across the whole company
  * They can be fun if you do them properly
  * The need for code reviews do not disappear when pair programming: as long as you have a personal attachment to the code, you might not see its defects.


## Your own

Should you have any conclusions to share, please add a pull request to this [repository][blog_source] or do it as a comment.


[eventpage]: http://www.meetup.com/Barcelona-Software-Craftsmanship/events/220293683/
[blog_source]: https://github.com/alvarogarcia7/blog_source
[^1]: after searching some ten minutes on the internet, there are only a couple of questions on meta.codereview stackoverflow, but not related to this. **Update**: In [here](https://twitter.com/mallyvai/status/314260072798752768), Vaibhav Mallya talks about a #trollReview, related to code. So, unfortunately, Miguel, you're not the first one. But there are fewer than 10 results on twitter.



