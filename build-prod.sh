# cd $(bundle show minima)
# when requested for surge project directory ensure the _site subdirectory is used
JEKYLL_ENV=production bundle exec jekyll build && surge
