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

the "uploads" folder is at 

```
{{< upload "file.pdf" >} 
```

The file ``source/blog/uploads/commit-with-two-persons.png`` is uploaded to:

```
{{< upload "commit-with-two-persons.png" >} 
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

##### Using Sublime Text

1. lowercase:

  select, control+k, l (lowercase)

2. replace spaces in the `Tags`

```
([a-z]) ([a-z])
$1-$2
```

simplified:

```
([\w]) ()
$1-
```

Note: the second set of brackets can be removed; they are left in-place for easing the copy-paste

##### Using vim

###### manual

To make it lowercase:

  * Select in visual mode
  * Hit `u` for lowercase

Replace the `Tags`:

for a single line:

```
.s/\(\w\) /\1-/g
```

###### automated

snake case with dashes: (``a b`` -> ``a-b``)

```
%g/^Tags/s/\(\w\) /\1-/g
```

lowercase:

```
%s/^\(Tags:\)\(.*\)/\1\L\2/g
```

### Get all the categories from a Self-Study aggregation

#### A warning in MacOsX

Note: in mac os x, the ``sed`` command works differently. You can start a ubuntu with this:

```bash
docker run -v $(pwd):/app -it ubuntu /bin/bash
```

Or you can also try the debian image (in case you have it already downloaded)

```bash
docker run -v $(pwd):/app -it debian /bin/bash
```

The usual stacktrace is this:

```bash
sed: 1: "{s/,/\n/g}": bad flag in substitute command: '}'
sed: 1: "{s/^/  - /}": bad flag in substitute command: '}'
```

#### Step by step guide

from all the markdown files:

```bash
find -iname "*markdown"|xargs grep Tags|cut -d":" -f3 > tags.txt
```

from a single file:
```bash
export TAGS_file=$(./last_self-study.sh)
cat $TAGS_file |grep Tags|cut -d":" -f2 > tags.txt
cat tags.txt |tr -d " " | sed '{s/,/\n/g}'|sort|uniq| sed '{s/^/- /}' >> $TAGS_file
rm -f tags.txt
unset TAGS_file
echo "Now move the tags up"
./vim_last_self-study.sh
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

Then move the categories after the existing ones

#### Create a new Self-study guide

Tip: the command line will expand the contents of the command when pressing <TAB>:

```bash
cp $(./last_self-study.sh)<TAB>
```

will become

```bash
cp content/blog/2017-08-01-self-study.markdown
```

Then, use the `{}` syntax to copy the file:

```bash
cp content/blog/2017-{08,09}-01-self-study.markdown
```

### Generate a list of read books

The books are now stored in a [trello board](https://trello.com/b/LPT145PW/books).

#### Update them

  * Go to the trello board, export to JSON.
  * Use the [trello-board-converter] project to turn the JSON into a markdown (md) format.
  * Copy-paste the list below the marker
  * Archive the cards in the 'done' column
  * Commit the file. Usually a "[books]" tag in the commit message
  * [Undecided] Delete the cards in that column

[trello-board-converter]: https://github.com/alvarogarcia7/trello-board-converter

### Extraneous files

Adding file (such as a mindmap `.mm` file) to the `content` folder, makes it available at the `blog` folder, but does not crash the CI

## Workflow

### Using the local environment

```bash
> cd blog_source
> hugo new post/name
> make run
...
> f cc "..."
...
> make generate
```

### Using the TravisCI environment

```bash
> cd blog_source
> cd contents/blog 
> cp $ARTICLE_1 $ARTICLE_2
> vim $ARTICLE_2
...
> f cc "..."
...
> f push
```


