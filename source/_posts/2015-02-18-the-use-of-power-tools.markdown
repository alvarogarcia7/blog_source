---
layout: post
title: "The use of power tools"
date: 2015-02-18 23:25:25 +0100
comments: true
categories:
  - power-tools
  - apprenticeship-patterns
  - choose-your-own-adventure
  - big-o-notation
  - algorithm
  - protip
  - the-right-tool-for-the-right-job
  - unix-tools
---

I'm currently reading the Apprenticeship patterns book, out of order (explained here: TODO).

I'm writing down the read chapters in a text file, to measure progress and also be able to backtrack if necessary. This also makes reading the book a "choose your own adventure"

After reading approximately half the chapters, the navigation wasn't so easy using only the "see also" part. So I decided to break free from that constraint and start reading other chapters. But how do you know which chapters you have left to read? Knowing the whole set (``all``) and the read set (``read``) this is just the ``all - read``.

Coming to a more practical way, how to know this is an automated (non-manual) way? There are ``m`` in ``read`` and n in ``all``, where m <= n.

The simplest approach would be:

```
for each current in read:
  remove current from all
```

as read is is no particular order, that would yield some ``O(m*n)``, worst case scenario (``m==n``), ``O(n^2)``.

That is quite expensive, especially if you have to do it manually

If we use the same algorithm but sort the ``read`` set (no longer a set, as sets have no order). Also, converting it to a ``O(1)`` lookup table (e.g., a map), that would yield some ``O(n log2 n + m)`` that is already better. Taking into account that the sorting can be automated by the computer, it would yield a "manual O notation cost" of ``O(1 + m)``. So, relative to the amount of chapters you have read.

But we can even do better in terms of this "manual big o notation":

```
read <- sort read into a map ; cost O(1)
all <- sort all into a map ; cost O(1)

unread <- all - intersection(all, read) ; cost O(1)
```

And this is where the power tools come into place: if we use ``comm`` or ``diff``, the computer will create  the ````unread```` set for us, in "manual" cost of ``O(1)``

## Example using vim, sort and diff

This is the ``read`` set (for the moment):
```
the long road
draw your own map
find mentors
the deep end
create feedback loops
the white belt
practice, practice, practice
concrete skills
your first language
use the source
reflect as you work
record what you learn
kindred spirits
nurture your passion
study the classics
expose your ignorance
dig deeper
be the worst
rubbing elbows
unleash your enthusiasm
```

and this is the all set (copy-paste from the book):

```
INTRODUCTION 1 What Is Software Craftsmanship? 3 What Is Apprenticeship? 8 What Is an Apprenticeship Pattern? 9 Where Did the Patterns Come From? 9 Where Do We Go from Here? 10
2 EMPTYING THE CUP 11 Your First Language 13 The White Belt 18 Unleash Your Enthusiasm 22 Concrete Skills 24 Expose Your Ignorance 25 Confront Your Ignorance 28 The Deep End 30 Retreat into Competence 32 Wrapping Up 34
3 WALKING THE LONG ROAD 37 The Long Road 38 Craft over Art 40 Sustainable Motivations 43 Nurture Your Passion 45 Draw Your Own Map 47 Use Your Title 50 Stay in the Trenches 52 A Different Road 53 Wrapping Up 55
4 ACCURATE SELF-ASSESSMENT 57 Be the Worst 58 Find Mentors 61 Kindred Spirits 64 Rubbing Elbows 66 Sweep the Floor 68 Wrapping Up 71
5 PERPETUAL LEARNING 73 Expand Your Bandwidth 74 Practice, Practice, Practice 77 Breakable Toys 79 Use the Source 82 Reflect As You Work 85 Record What You Learn 87 Share What You Learn 89 Create Feedback Loops 91 Learn How You Fail 94 Wrapping Up 95
6 CONSTRUCT YOUR CURRICULUM 99 Reading List 100 Read Constantly 102 Study the Classics 104 Dig Deeper 105 Familiar Tools 109 Wrapping Up 111
```
The first line is not interesting to our purposes, so delete it with:

go to first line (``1G``), then delete (``dd``)

After a quick inspection, there's a number at the end of the desired line, so replace it with newline:

``%s/\d\+/\r/g`` (a snippet below):

```
EMPTYING THE CUP 
 Your First Language
 The White Belt 
 Unleash Your Enthusiasm 
 Concrete Skills 
 Expose Your Ignorance
 Confront Your Ignorance 
 The Deep End 
 Retreat into Competence 
 Wrapping Up 


 WALKING THE LONG ROAD 
```

The title lines are all uppercase, so delete them with ``:%g/^\s*\u\u/d``:

```
 Your First Language 
 The White Belt 
 Unleash Your Enthusiasm
 Concrete Skills 
 Expose Your Ignorance
 Confront Your Ignorance
 The Deep End
 Retreat into Competence
 Wrapping Up 
 
 
 The Long Road 
```

explanation:

  * ``:`` : command
  * ``%`` : in all the file
  * ``g`` : do (I remember it as 'go')
  * ``^`` : starting at the beginning
  * ``\s*``: whitsepace, as much a possible
  * ``\u\u``: exactly to uppercase letters. Can also be expressed as ``\u\{2}``
  * ``d`` : delete

for more information on vim's regex, go [here](http://vimregex.com/)

but there are empty lines. Delete them with: ``%g/^$/d``:

```
 Your First Language
 The White Belt
 Unleash Your Enthusiasm
 Concrete Skills
 Expose Your Ignorance 
 Confront Your Ignorance
 The Deep End 
 Retreat into Competence
 The Long Road
```

there is a space at the beginning of the line, delete it with ``:%s/^ //``:

```
Your First Language 
The White Belt 
Unleash Your Enthusiasm 
Concrete Skills 
Expose Your Ignorance  
Confront Your Ignorance 
The Deep End  
Retreat into Competence 
Wrapping Up  
The Long Road  
```

there are upper and lowercase letters. You could find a way of doing it with vi, but I prefer something that I can remember: save the document, then process it with ``awk`` and ``sort``

```bash
cat all.txt | awk '{print tolower($0)'}| sort > all_sorted.txt
```

(snippet):

```
a different road 
be the worst 
breakable toys 
concrete skills 
confront your ignorance 
```

If needed, sort and downcase the read.txt too.

```bash
cat read.txt | awk '{print tolower($0)'}| sort > read_sorted.txt
```

I tried using ``comm``, but it wasn't so useful (because of whitespace).

Tried ``diff``:

```
diff read_sorted.txt all_sorted.txt  -bBw > to_read.txt

0a1
> a different road 
1a3
> breakable toys 
2a5,6
> confront your ignorance 
> craft over art 
5a10
> expand your bandwidth 
6a12
> familiar tools 
8a15
```

to know which are the remain chapters:

```bash
cat to_read.txt | grep ">"
```

to count the number of remaining chapters:

```bash
cat to_read.txt | grep ">" | wc -l
```

The lesson learned here is to master your tools. This would have cost me a few minutes if done manually as the list was short, too much time if long (>1000 lines).

On a funny note, it has taken me approximately 2 min to do this processing but ~45 minutes to write this blog post. So I don't recommend you write as many posts as processings you do.

To quote Apprenticeship patterns, [A different road](http://chimera.labs.oreilly.com/books/1234000001813/ch03.html#solution_id16):

> If you walk away from software development, you will find that the habit of rigorous thinking and automating tasks involving large volumes of data will still be useful wherever you go
>
> D Hoover, A Oshineye