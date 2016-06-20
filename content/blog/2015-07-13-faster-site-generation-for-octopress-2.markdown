---
categories:
- meta
- octopress-2
- octopress-3
- octopress
comments: true
date: 2015-07-13T07:49:23Z
title: Faster site generation for Octopress 2
---

2016-04 update: I've discovered that the original Rakefile does a similar job. See [here][native-faster-generation]

After a while, the generation of the static site using [Octopress 2][octopress-2] was starting to be slow (around 2 minutes for 85 posts) for the kind of fast feedback cycle I was expecting.

Inspired by their new features in [Octopress 3][octopress-3], one of them being faster site generation, I decided to retrofit my installation with the same feature.

Octopress 3 now has a different structure of posts and drafts. You can specify you only want to publish to your local preview your current draft instead of all of them, therefore being it faster. When you finish editing, all the posts are recovered and publishing to production uploads all of them

For Octopress 2, you can do something similar in a manual way. Create a copy of your working environment:

```bash
cp -R blog_source blog_post_factory
```

Git ignore all existing markdown files in the folder ``source/_posts``

```bash
cd blog_post_factory/source/_posts
git update-index --assume-unchanged $(ls *markdown)
```

Delete all existing markdown files

```bash
rm *markdown
```

Check that git doesn't realize about the difference:

```bash
git status

# On branch source
nothing to commit (working directory clean)
```

Create a new post:

```bash
rake new_post["Faster site generation for Octopress 2"]
```

```bash
# On branch source
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	2015-07-13-faster-site-generation-for-octopress-2.markdown
nothing added to commit but untracked files present (use "git add" to track)
```

Edit as much as needed, reviewing changes in local. Push to the remote repository.

In the original (``blog_source``) folder, pull, then generate:

```bash
rake generate && rake deploy
```

[Optional: change the remote URL for the cloned repository, so the git push is faster.]   


After each new post, you have to ignore old files again. I've created a new task in the ``Rakefile`` for this purpose:

```ruby
desc "Cleans all *.markdown files for a faster site generation"
task :ignore do
  cd "#{source_dir}/#{posts_dir}"
  system "git update-index --assume-unchanged $(ls *.markdown)"
  system "rm $(ls *.markdown)"
end
```


## Conclusion

I've reduced the amount of time to generate files from 2 minutes for 85 files to ~0.62 seconds for 1 file.


```
Regenerating: 1 file(s) changed at 2015-07-13 08:03:29 ...done in 0.617269045 seconds.
```

[octopress-2]: http://octopress.org/2011/07/23/octopress-20-surfaces/
[octopress-3]: http://octopress.org/2015/01/15/octopress-3.0-is-coming/
[native-faster-generation]: [here](../../../../2016/04/17/faster-site-generation-native-octopress/) 
