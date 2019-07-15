---
permalink: /
title: "about"

header:
  overlay_image: "llnl.jpg"
  overlay_filter: rgba(104, 152, 242, 0.25)

---


Hi, I'm Derek Jones.

I work on scalable machine learning/deep learning research for drug discovery at Lawrence Livermore National Laboratory and the [ATOM Constortium](https://atomscience.org).


I recently graduated from the University of Kentucky where I earned an M.Sc. in Computer Science with a research focus in Machine Learning/Deep Learning and its applications to Computational Biology and Drug Discovery. I was advised by [Dr. Nathan Jacobs](https://www.cs.uky.edu/~jacobs) (Computer Science) and [Dr. Sally R. Ellingson](http://www.sallyrellingson.com/) (Biomedical Informatics).


---

# Recent News

  {% assign news_items = site.posts | sort: 'name' %}
  {% for news in news_items limit: 10 %}
  <li><span class="pretty-date">{{ news.date | date: "%m/%d/%Y: " }}</span>
  <span class="item">
  {% if news.link %}
    <a href="/~derek{{news.link}}">{{ news.title | strip_html }}</a>
    {% elsif news.permalink %}
    <!-- <a href="/~derek/{{news.permalink}}">{{ news.title | strip_html }}</a> -->
    {{ news.title | strip_html }}
    {% else %}
    {{ news.title | strip_html }}
    {% endif %}
    </span>
    </li>
    {% endfor %}
