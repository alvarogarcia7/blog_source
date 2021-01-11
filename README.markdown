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
{{< upload "file.pdf" >}}
```

The file ``source/blog/uploads/commit-with-two-persons.png`` is uploaded to:

```
{{< upload "commit-with-two-persons.png" >}}
```

See an example at 2016-02-14-two-persons-involved-in-a-git-commit.markdown

### Inlining Images

![State diagram of the operations]({{< upload "state-diagram-loop-map-split-map-equivalence.png" >}})

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

### Get all the categories from a Self-Study aggregation

This unit of work has been moved to the [link-collection](https://github.com/alvarogarcia7/link-collection#exporting-eg-for-markdown)


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

The blog is easily published using the CI hook.

### Using the CI environment

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

### Local preview of changes


```bash
> cd blog_source
> cp $ARTICLE_1 $ARTICLE_2
> make run-server-in-docker
# Navigate to localhost:8090 for checking results
...
> f cc "..."
...
> f push
```
