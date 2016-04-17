---
layout: post
title: "Faster site generation with a native Octopress 2"
date: 2016-04-17 23:39:23 +0200
comments: true
categories: 
  - meta
  - octopress-2
  - octopress
  - native-octopress
  - rakefile
  - reinventing-the-wheel
---

Note: this article is an answer to [a previous one][faster-site-generation], about the same topic: a tool for a faster site generation while developing / writing articles, using octopress 2.

## Introduction

Octopress 2 packs, out of the box, some tasks to speed up the site generation while you're writing articles:

Isolate a post:

```ruby
# usage rake isolate[my-post]
desc "Move all other posts than the one currently being worked on to a temporary stash location (stash) so regenerating the site happens much more quickly."
task :isolate, :filename do |t, args|
  stash_dir = "#{source_dir}/#{stash_dir}"
  FileUtils.mkdir(stash_dir) unless File.exist?(stash_dir)
  Dir.glob("#{source_dir}/#{posts_dir}/*.*") do |post|
    system "git update-index --assume-unchanged #{post}" unless post.include?(args.filename)
    FileUtils.mv post, stash_dir unless post.include?(args.filename)
  end
end
```

Integrate with the rest of the posts:

```ruby
desc "Move all stashed posts back into the posts directory, ready for site generation."
task :integrate do
  posts_dir = "#{source_dir}/#{posts_dir}/"
  Dir.glob("#{source_dir}/#{stash_dir}/*.*") do |post|
    FileUtils.mv post, posts_dir
    full_path = "#{posts_dir}/#{post.split("/").reverse.first}"
    system "git update-index --no-assume-unchanged #{full_path}"
  end
end
```

## Usage

(at the folder where the Rakefile is located)

  * isolate the selected file. Specify the pattern to keep.

```bash
rake isolate["draft"]
```

  * write the new content
  * commit to git
  * integrate with the rest of the files


```bash
rake integrate
```

  * git push


## Conclusion

When I created [a small tool for this same purpose][faster-site-generation], I didn't find any that did this job. It was so close to my nose that I could not find it. I was reinventing the wheel.

It is better to switch to a tool that has been tested by more users, that has received the community's approval than a custom-made tool. 

[faster-site-generation]: ../../../../2015/07/13/faster-site-generation-for-octopress-2/

