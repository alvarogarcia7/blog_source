----
published: false
categories:
  - power-tools
  - apprenticeship-patterns
  - choose-your-own-adventure
  - big-o-notation
  - algorithm
  - protip
----

I'm currently reading the Apprenticeship patterns book, out of order (explained here: TODO).

I'm writing down the read chapters in a text file, to measure progress and also be able to backtrack if necessary. This also makes reading the book a "choose your own adventure"

After reading approximately half the chapters, the navigation wasn't so easy using only the "see also" part. So I decided to break free from that constraint and start reading other chapters. But how do you know which chapters you have left to read? Knowing the whole set (``all``) and the read set (``read``) this is just the ``all - read``.

Coming to a more practical way, how to know this is an automated (non-manual) way? There are ``m`` in ``read`` and n in ``all``, where m <= n.

The simplest approach would be:

````
for each current in read:
  remove current from all
````

as read is is no particular order, that would yield some ``O(m*n)``, worst case scenario (``m==n``), ``O(n^2)``.

That is quite expensive, especially if you have to do it manually

If we use the same algorithm but sort the ``read`` set (no longer a set, as sets have no order). Also, converting it to a ``O(1)`` lookup table (e.g., a map), that would yield some ``O(n log2 n + m)`` that is already better. Taking into account that the sorting can be automated by the computer, it would yield a "manual O notation cost" of ``O(1 + m)``. So, relative to the amount of chapters you have read.

But we can even do better in terms of this "manual big o notation":

````
read <- sort read into a map ; cost O(1)
all <- sort all into a map ; cost O(1)

unread <- all - intersection(all, read) ; cost O(1)
````

And this is where the power tools come into place: if we use ``comm`` or ``diff``, the computer will create  the ````unread```` set for us, in "manual" cost of ``O(1)``
