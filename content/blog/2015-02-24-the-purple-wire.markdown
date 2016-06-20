---
categories:
- debugging
- defect
- purple-wire
- mythical-man-month
- quote
- fred-brooks
comments: true
date: 2015-02-24T20:57:43Z
title: The purple wire
---

A quote from the [Mythical Man-Month][mythical-man-month]:

> Chapter 13: The Whole and the Parts
>
> [...] In System/360 engineering models, one saw occasional strands of purple wire among the routine yellow wires. When a bug was found, two things were done. A quick fix was devised and installed on the system, so testing could proceed. This change was put on in purple wire, so it stuck out like a sore thumb. It was entered in the log. Meanwhile, an official change document was prepared and started into the design automation mill. Eventually this resulted in updated drawings and wire lists, and a new back panel in which the change was implemented in printed circuitry or yellow wire. Now the physical model and the paper were together again, and the purple wire was gone.
>
> Programming needs a purple-wire technique, and it badly needs tight control and deep respect for the paper that ultimately is the product. The vital ingredients of such technique are the logging of all changes in a journal and the distinction, carried conspicuously in source code, between quick patches and thought-through, tested, documented fixes.
>
> [...]
>
> <quote> Brooks, F. - The Mythical Man-Month</quote>

This purple-wire the author talks about is extremely important even in the current age as the whole team should not be blocked by a single defect.

What I usually do is a commit containing a quick fix (purple-wire, scaffold, hackish if, etc) on a bugfix branch, push the changes so jenkins can verify that this purple-wire didn't break any other case. Then integrate this bugfix into master if required[^1]. If this affects ``develop`` branch of other developers, also merge into develop and or feature branches.

On the other hand, in my opinion, fixing the defect should include an unit test so the defect does not reproduce again. If this is not reproducible through an unit one, escalate test levels (unit, integration, end to end, etc) until a suitable one is found.

Once that applying the purple-wire is done, I ``checkout`` the last version where the defect is to be found (usually right before the bugfix branch) and create this test necessary to reproduce behavior. Only after this defect is found I fix it. Otherwise, I think the root cause might be in a different place and, therefore, fix a non-existing defect, effectively introducing a regression.

This test also serves to reproduce that the corrected behavior is not introduced anymore into the system.

As an ending phase for the defect, replace the purple wire with the new code and, after passing all tests, merge to master, develop and feature branches.

[^1]: If the found defect is not business critical, I try not to merge to master the purple wire, just leave master pointing to the defect and the bugfix branch with the solution. This bugfix branch will be deleted when a more stable fix is found.

[mythical-man-month]: http://www.amazon.com/The-Mythical-Man-Month-Engineering-Anniversary/dp/0201835959