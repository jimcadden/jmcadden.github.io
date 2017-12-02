---
layout: page
title: Blog Posts 
---
<ul class="post-index">
  {% for post in site.posts %}
  {% if post.hidden != true %}
    <li>
      <a href="{{ post.url }}">{{post.date | date_to_string }} | {{ post.title }}</a> <span>category: {{ post.category }}</span> 
    </li>
  {% endif %}
  {% endfor %}
</ul>

