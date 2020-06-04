# Graphviz Docs

This is the documentation repository for https://graphviz.org, the GraphViz
Graph Visualization Software.

Docs are built from Markdown using the [Jekyll](https://jekyllrb.com/) static
site generator.

## Serving the Docs Locally for Development

### macOS

```bash
# Get a new version of Ruby, as the macOS version is old
brew install ruby

# Install all the gems in Gemfile
/usr/local/opt/ruby/bin/bundle install

# Compile the site and serve over HTTP on localhost
# Bundle ensures the proper Jekyll version is run.
/usr/local/opt/ruby/bin/bundle exec jekyll serve
```

### Linux

Assuming you have a recent Ruby version installed:

```bash
$ bundle install
$ bundle exec jekyll serve
```
