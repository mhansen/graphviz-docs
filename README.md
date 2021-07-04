# Graphviz Docs

This is the documentation repository for https://graphviz.org, the GraphViz
Graph Visualization Software.

Docs are built from Markdown using the [Hugo](https://gohugo.io/) static
site generator and the [Docsy](https://www.docsy.dev/) technical documentation
theme.

## Serving the Docs Locally for Development

Detailed instructions are at [Docsy's Getting Started page](https://www.docsy.dev/docs/getting-started/).

### Install Hugo

* Download a recent **extended** edition of Hugo (extended editions includes
  SCSS) from https://github.com/gohugoio/hugo/releases. You may need to scroll
  down the list of releases to see the extended edition.
  
  * macOS users can install with Homebrew: `brew install hugo`
  * Ubuntu 19.04 users can install with apt: `sudo apt install hugo`

* Run `git submodule update --init --recursive` to download the Docsy theme
  repositories.

* Run `hugo server`, the site will be available at http://localhost:1313/
