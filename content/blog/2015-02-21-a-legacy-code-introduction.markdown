---
categories:
- quote
- hypothesis
- clean-code
- uncle-bob
- robert-c-martin
- legacy-code
- tiger-team
comments: true
date: 2015-02-21T20:05:46Z
title: A legacy code introduction
---

This is one of the best legacy code introductions I've seen:

> The Grand Redesign in the Sky
>
>Eventually the team rebels. They inform management that they cannot continue to develop in this odious code base. They demand a redesign. Management does not want to expend the resources on a whole new redesign of the project, but they cannot deny that productivity is terrible. Eventually they bend to the demands of the developers and authorize the grand redesign in the sky.
>
> A new tiger team is selected. Everyone wants to be on this team because it's a greenfield project. They get to start over and create something truly beautiful. But only the best and brightest are chosen for the tiger team. Everyone else must continue to maintain the current system.
>
> Now the two teams are in a race. The tiger team must build a new system that does everything that the old system does. Not only that, they have to keep up with the changes that are continuously being made to the old system. Management will not replace the old system until the new system can do everything that the old system does.
>
> This race can go on for a very long time. I've seen it take 10 years. And by the time it's done, the original members of the tiger team are long gone, and the current members are demanding that the new system be redesigned because it's such a mess.
>
> <cite> Robert C. Martin </cite> in the chapter 1: Clean Code from the book by [the same name](http://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882/)

Also, why should you estimate the new tiger team abilities better than the old tiger team? Is it because the language, tools, or just because they are "plain better"?

What guarantees that the resulting software is going to be better than the old one?

Another interesting definition of legacy code is Michael Feather's one (code without tests).