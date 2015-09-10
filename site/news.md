---
layout: page
permalink: /news/
title: GNU ARM Eclipse News
author: Liviu Ionescu

date: 2015-09-09 23:16:00
last_modified_at: 2015-09-09 23:29:00

---

{% for post in site.posts %}
## [{{ post.title }}]({{ post.url }})

{{ post.date | date: "%b %-d, %Y" }}. {{ post.excerpt | replace:'<p>','' | replace:'</p>','' }}
{% endfor %}
