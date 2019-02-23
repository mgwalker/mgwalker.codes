---
layout: default
---

# Some stuff I've written

Mostly I've just written for the blog at work and to put together presentations
for our partner agencies. This is probably not a complete collection of my
stuff, but it should be a pretty good representation. The dates are when they
were first published or first presented to our partners.

{% for post in site.posts %}

<div class="clearfix">
  <div class="col col-3 bold px2 py1 bg-blue white center" style="font-size: 1rem;">
    <time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">{{ post.date | date: "%b %-d, %Y" }}</time>
  </div>
  <div class="col col-9 pl1">
    <a href="{{post.url}}"><h2 class="m0">{{post.title}}</h2></a>
  </div>
</div>
<div class="clearfix border-bottom mb3 pb1">
  <div class="col col-1">&nbsp;</div>
  <div class="col col-11">{{ post.excerpt }}</div>
</div>

{% endfor %}
