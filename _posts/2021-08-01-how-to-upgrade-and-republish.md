---
layout: post
title: "Upgrading"
---

Since I always forget.

## Update ruby environment

1. `brew update`
2. `brew upgrade` (to upgrade `rbenv` and `ruby-build` to the latest)
3. Check latest ruby versions: `rbenv install -l`
4. Install latest version: `rbenv install 3.0.2`
5. Set as default: `rbenv global 3.0.2`
6. `gem install bundler jekyll thor stringex`

## Update Jekyll

Follow instructions on the site. Generally update the versions in the gemfile and run `bundle install` (I think). 

