## What is Octopress?

Octopress is [Jekyll](https://github.com/mojombo/jekyll) blogging at its finest.

1. **Octopress sports a clean responsive theme** written in semantic HTML5, focused on readability and friendliness toward mobile devices.
2. **Code blogging is easy and beautiful.** Embed code (with [Solarized](http://ethanschoonover.com/solarized) styling) in your posts from gists, jsFiddle or from your filesystem.
3. **Third party integration is simple** with built-in support for Pinboard, Delicious, GitHub Repositories, Disqus Comments and Google Analytics.
4. **It's easy to use.** A collection of rake tasks simplifies development and makes deploying a cinch.
5. **Ships with great plug-ins** some original and others from the Jekyll community &mdash; tested and improved.

**Note**: Octopress requires a minimum Ruby version of `1.9.3-p0`.

## Documentation

Check out [Octopress.org](http://octopress.org/docs) for guides and documentation.
It should all apply to our current stable version (found in the `master`
branch). If this is not the case, [please submit a
fix to our docs repo](https://github.com/octopress/docs).

## Contributing

[![Build Status](https://travis-ci.org/imathis/octopress.png?branch=master)](https://travis-ci.org/imathis/octopress)

We love to see people contributing to Octopress, whether it's a bug report, feature suggestion or a pull request. At the moment, we try to keep the core slick and lean, focusing on basic blogging needs, so some of your suggestions might not find their way into Octopress. For those ideas, we started a [list of 3rd party plug-ins](https://github.com/imathis/octopress/wiki/3rd-party-plugins), where you can link your own Octopress plug-in repositories. For the future, we're thinking about ways to easier add them into our main releases.


## License
(The MIT License)

Copyright © 2009-2013 Brandon Mathis

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#### If you want to be awesome.
- Proudly display the 'Powered by Octopress' credit in the footer.
- Add your site to the Wiki so we can watch the community grow.

## Internal help

### Categories

See an example in "Open discussion: on code reviews"

````
[code reviews](/{{site.category_dir}}/code-review)
````

### Direct link to another post

See an example in "Your first language":

````
[here](../../../../2015/04/25/how-i-read-apprenticeship-patterns/) 
````

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

See an example in tdd intensive workshop:

````
{% comment %}
(See more on this topic [here][tdd-is-not-a-good-name])
{% endcomment %}
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

### Get all the categories from a Self-Study aggregation

(Note: in mac os x, the ``sed`` command works differently. You can start an ubuntu with this:

```bash
docker run -v $(pwd):/app -it ubuntu /bin/bash
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

```dos
λ cd blog_source
λ rake new_post[my-new-post]
λ rake isolate[my-new-post]
λ rake preview
...
λ g cc "..."
...
λ rake integrate
λ rake generate
```

## Writing a new post in Windows with bash

* Execute in cmd (not bash)
* Execute in factory folder (not source)

```dos
λ cd blog_factory
λ rake clean && rake preview
## Set the codepage to 65001 for Windows machines
rm -rf .pygments-cache/bash-8812c36aa5ae336c2a77bf63211d899a.htm...
## Set the codepage to 65001 for Windows machines
Starting to watch source with Jekyll and Compass. Starting Rack on port 4000
   create source/stylesheets/screen.css
Configuration file: C:/sandbox/blog_factory/_config.yml
>>> Change detected at 13:43:13 to: screen.scss
[2015-10-12 13:43:14] INFO  WEBrick 1.3.1
[2015-10-12 13:43:14] INFO  ruby 1.9.3 (2014-11-13) [i386-mingw32]
[2015-10-12 13:43:14] INFO  WEBrick::HTTPServer#start: pid=916 port=4000
            Source: source
       Destination: public
      Generating...
identical public/stylesheets/screen.css
>>> Compass is polling for changes. Press Ctrl-C to Stop.
                    done.
  Please add the following to your Gemfile to avoid polling for changes:
    gem 'wdm', '>= 0.1.0' if Gem.win_platform?

 Auto-regeneration: enabled for 'source'
```

## Updating the blog in Windows with bash

* Execute in cmd (not bash)
* Execute in source folder (not factory)

```dos
λ cd source
λ rake generate
## Set the codepage to 65001 for Windows machines
## Generating Site with Jekyll
identical source/stylesheets/screen.css
Configuration file: C:/sandbox/blog_source/_config.yml
            Source: source
       Destination: public
      Generating...

(Wait around 20 minutes)
λ rake deploy
```
