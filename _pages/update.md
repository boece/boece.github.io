---
layout: archive
permalink: /categories/update/
title: Update - Categories
---


<div id="archives">
{% for post in site.categories.update %}
 <li><span>{{ post.date | date_to_string }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</div>
