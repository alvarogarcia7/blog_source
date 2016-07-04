## Source for my blog

Written using Hugo

## Internal help - [Flight Rules](https://github.com/k88hudson/git-flight-rules#what-are-flight-rules)

### Categories

See an example in "Open discussion: on code reviews"

````
[code reviews](/{{< category "code-review" >}})
````

### Direct link to another post

See an example in "Your first language":

````
[here](../../../../2015/04/25/how-i-read-apprenticeship-patterns/) 
````

### Upload

%TODO: needs update%

the "uploads" folder is at 

```
/{{site.category_dir}}/../uploads/
```

The file ``source/blog/uploads/commit-with-two-persons.png`` is uploaded to:

```
/{{site.category_dir}}/../uploads/commit-with-two-persons.png
```

See an example at 2016-02-14-two-persons-involved-in-a-git-commit.markdown

### Footnotes

See an example in "The purple wire"

````
bugfix into master if required[^1].

----

[^1]: If the found defect is not business critical, I try not to merge
to master the purple wire, just leave master pointing to the defect and
the bugfix branch with the solution. This bugfix branch will be deleted
when a more stable fix is found.
````


### Comments

Warning: these comments are available in the generated html page

````html
<!-- 
(See more on this topic [here][tdd-is-not-a-good-name])
-->
````

### Authors as categories

#### using an external service

Get the clojure REPL (e.g., Light Table or [TryCLJ](http://www.tryclj.com/)) and 

````
((comp println clojure.string/lower-case #(clojure.string/replace % " " "-")) "Rich Hickey")
; rich-hickey
; nil
````

In this version the argument that changes all the time (the author or URL keywords) are at the end and it is simpler to edit.

#### using an internal service

1. lowercase:

  select, control+k, l (lowercase)

2. replace spaces

```
([a-z]) ([a-z])
$1-$2
```

simplified:

```
([\w]) ()
$1-
```

Note: the second set of parenthesis can be removed; they are left in-place for easing the copy-paste


### Get all the categories from a Self-Study aggregation

(Note: in mac os x, the ``sed`` command works differently. You can start an ubuntu with this:

```bash
docker run -v $(pwd):/app -it ubuntu /bin/bash
```

The usual stacktrace is this:

```bash
sed: 1: "{s/,/\n/g}": bad flag in substitute command: '}'
sed: 1: "{s/^/  - /}": bad flag in substitute command: '}'
```
)

from all the markdown files:

```bash
find -iname "*markdown"|xargs grep Tags|cut -d":" -f3 > tags.txt
```

from a single file:
```bash
cat $file |grep Tags|cut -d":" -f2 > tags.txt
```

then process tags and delete the temporary file:
```bash
cat tags.txt |tr -d " " | sed '{s/,/\n/g}'|sort|uniq| sed '{s/^/  - /}' > tags2.txt
rm -f tags.txt tags2.txt
```

e.g.:

```
  - stack-builders
  - strange-loop
  - talk
  - technical-debt
  - test
  - testing
  - thoreau
  - thoughtworks
  - time-lapse
```

## Workflow

### Using the local environment

```dos
λ cd blog_source
λ hugo new post/name
λ make run
...
λ t cc "..."
...
λ make generate
```

