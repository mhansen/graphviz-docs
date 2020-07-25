---
layout: page
title: Gallery
permalink: /gallery/
redirect_from:
  # We want to redirect from /Gallery.php. We need ".php.html" else the
  # redirect page is downloaded to ~/Downloads/ rather than shown in browser. See:
  # https://github.com/jekyll/jekyll-redirect-from/issues/145#issuecomment-392277818
  - /Gallery.php.html
  # Gallery links to _pages version too.
  - /_pages/Gallery.php.html
order: 3
---
{% comment %}Sort arbitrarily on URL for deterministic output.{% endcomment %}
{% assign sorted_pages = site.pages | sort: "url" %}
{% for p in sorted_pages %}
  {%- if p.layout == 'gallery' -%}
    <div style="display: inline-block; width: 49%; vertical-align:top;">
      <a href="{{ p.url }}">
        <h3>{{ p.title }}</h3>
        <img style="max-width: 100%" src="{{ p.dir }}{{ p.svg }}">
      </a>
    </div>
  {%- endif -%}
{% endfor %}

<a href="http://yifanhu.net/GALLERY/GRAPHS/index.html"> <img width="140" border="0" src="/Gallery/ufl.png" alt="" title="transparency" /></a>

Also see Yifan\'s [gallery of large
graphs](http://yifanhu.net/GALLERY/GRAPHS/index.html), all generated
with the *sfdp* layout engine, but colorized by postprocessing the
PostScript files.

Please send copyright-free donations of interesting graphs to: [Yifan
Hu](mailto:yifanhu@yahoo.com)
