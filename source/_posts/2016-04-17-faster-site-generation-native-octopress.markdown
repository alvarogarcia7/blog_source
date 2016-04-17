---
layout: post
title: "Faster site generation with a native Octopress 2"
date: 2016-04-17 23:39:23 +0200
comments: true
categories: 
  - meta
  - octopress-2
  - octopress-3
  - octopress
  - native-octopress
  - rakefile
---

Octopress 2 packs, out of the box, some tasks to speed up the site generation while you're writing articles:

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