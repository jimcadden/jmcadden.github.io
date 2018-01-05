---
layout: page
title: Blog Posts 
---
<ul class="post-index">
  {% for post in site.posts %}
  {% if post.hidden != true %}
    <li>
      <a href="{{ post.url }}"><span class="date">{{post.date | date_to_string }}</span> | {{ post.title }}</a> <span>category: {{ post.category }}</span> 
    </li>
  {% endif %}
  {% endfor %}
</ul>

