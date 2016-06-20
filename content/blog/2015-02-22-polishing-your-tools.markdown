---
categories:
- toolsmith
- polish
- craftsmanship
- craftsman
- trade
- mythical-man-month
- surgical-team
- brooks
- career
- who-owns-your-career
- fred-brooks
comments: true
date: 2015-02-22T09:30:20Z
title: Polishing your tools
---

## The toolsmith

[Frederick P Brooks, Jr][fred-brooks] quoted / explained a theory explained by Mills and Baker[^1] around 1971-72:

> Chapter 3: The Surgical Team 
>
> [...] but the team be organized like a surgical team rather than a hog-butchering team. That is, instead of each member cutting away on the problem, one does the cutting and the others give him[her] every support that will enhance his[her] effectiveness and productivity.
>
> [...]
>
> <quote> Brooks, F. - The Mythical Man-Month, chapter 3: The Surgical Team </quote>

(Text between square brackets is mine)

The author goes on to explain the job descriptions for the surgeon, copilot, administrator, editor, secretaries, program clerk, toolsmith, tester and the language lawyer.

The one that will be covered in this post is the toolsmith:

> **The toolsmith**. File-editing, text-editing, and interactive debugging services are now readily available, so that a team will rarely need its own machine and machine-operating crew. But these services must be available with unquestionably satisfactory response and reliability; and the surgeon must be sole judge of the adequacy of the service available to him. He needs a toolsmith, responsible for ensuring this adequacy of the basic service and for constructing, maintaining, and upgrading special tools --mostly interactive computer services-- needed by his team. Each team will need its own toolsmith, regardless of the excellence and reliability of any centrally provided service, for his job is to see to the tools needed or wanted by his surgeon, without regard to any other team's needs. The tool-builder will often construct specialized utilities, cataloged procedures, macro libraries.
>
> <quote> Brooks, F. - The Mythical Man-Month, chapter 3: The Surgical Team </quote>

Even though the chapter reads a bit outdated, especially with the part about genders and methodologies (i.e., waterfall), the part about roles is interesting. The surgical team, as the author presents will be composed by 9 1/2 (nine and a half) as the language lawyer can be shared among two or three teams.

## Day to day practices

So, one full-time job is to build tools to service the surgeon and the copilot (1:8,5 ratio), or approximately 12% of a full-time position.

These tools can make the surgeon and the copilot more effective, ranging from a single digit percentage to orders of magnitude in other tasks.

As agile teams no longer have a toolsmith and the scrum master is not necessarily a technical expert who can build tools for the whole team, the tasks of creating tools must be taken care by everyone. No one better than yourself can know your needs and tailor solutions for them.

The only downside is you have to invest ~5h (for a full time position) per week into creating and polishing tools for your work: it is a need for achieving more productivity when working.

Nowadays that IDEs are configurable, this time might be invested on learning more advanced features as other shortcuts, refactoring techniques, other design patterns, etc. I like having my own live templates (see [description][live-templates]), especially for tests, as I saw on the [Crafting Code workshop][crafting-code] by [Sandro Mancuso][mancuso]

<!--
TODO: Add link to Sandro Mancuso's experience report, when I write it
-->

It may also include other activities as setting up your bash alias, cleaning your desk, trying a new UML diagram modeler, etc. Anything that improves the productivity of your main task.

If we consider our experience and knowledge part of our tools (as we are knowledge workers), training could be considered part of polishing our tools. Short, daily or weekly training sessions (even internal) can make a great impact on breadth (not depth) of knowledge among your teammates. This shallow knowledge can open doors for more knowledge to be gained outside of company time, or used to practice and test other methods.

This training is so useful for everyone ("when one teaches, two learn") that I recommend my clients to do it. This has helped them cope with changing technologies, knowledge transfer and even some team building.

## Company provided or not?

Should the company provide for this time to improve? Although I don't know the answer, it would greatly affect the programmers' productivity to do so. I would say, provide this time as long as what is produced is useful. How do you measure useful? This is a subjective opinion, so it depends on each one.

Some companies acknowledge that this is so important as to invest part of their resources (0-2 hours per week) into training.

Either way, should your company provide it for your or not, you are the one in charge of your career (from Mancuso, [Software Craftsmanship][socra] - now called [The Software Craftsman][software-craftsman]). If you are not allowed to invest company time for your own benefit, you could use some of your personal time to do so. It is not required, but you will soon enjoy its profits.

## Examples

  * Every sprint, one of my clients (as of 2015-05) wants to review the work done using some slides and a live demo. The 'sample' slides with the format, layout is useful. Everything that should be replaced (timestamp, contents, etc) is marked with a TODO
  * Every day, I commit plenty of times to the control version system (i.e., git). I have an alias for commit, diff, status, etc, that saves me some keystrokes on the most common commands
  * See the post "A basic working environment"
  * Deployment, even on local, is automated: a script for getting the latest ``branch``, ``develop`` or ``master`` code, build the Docker container, start the docker image, notify me the code is ready
  * Pipeline: I have a pipeline, in local, where I can push and the tests will be executed automatically. If the build fails (usually BDD tests), I can ``push -f`` without affecting to the repo history. 

----


[^1]: Original references in "The Mythical Man-Month" (Notes and References, page 294) point to these:

Mills, H., "Chief programmer teams, principles, and procedures," IBM Federal Systems Division Report FSC 715108, Gaithersburg, Md., 1971.

Baker, F. T., "Chief programmer team management of production programming," IBM Sys. J., 11, 1 (1972).


[mancuso]: https://twitter.com/sandromancuso
[crafting-code]: https://skillsmatter.com/courses/503-sandro-mancuso-s-crafting-code-course#programme
[live-templates]: https://www.jetbrains.com/idea/help/creating-and-editing-live-templates.html#d1333587e219
[fred-brooks]: http://en.wikipedia.org/wiki/Fred_Brooks
[socra]: https://leanpub.com/socra
[software-craftsman]: http://www.amazon.co.uk/Software-Craftsman-Professionalism-Pragmatism-Robert/dp/0134052501/ref=sr_1_1?ie=UTF8&qid=1416521895&sr=8-1&keywords=the+software+craftsman
