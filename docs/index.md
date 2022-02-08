---
title: Managing Code and Software for Applied Data Science Projects
author: [Derek Devnich, Kat Koziar, Pamela Reynolds]
date: "2022-02-07"

github-repo: ucdavisdatalab/workshop_ds-software-management
url: "https://ucdavisdatalab.github.io/workshop_data-science-software-management/"

site: "bookdown::bookdown_site"
knit: "bookdown::render_book"
output:
  bookdown::gitbook:
    config:
      toc:
        before: |
          <li><a href="https://datalab.ucdavis.edu/">
            <img src="https://datalab.ucdavis.edu/wp-content/uploads/2019/07/datalab-logo-full-color-rgb-1.png" style="height: 100%; width: 100%; object-fit: contain" />
          </a></li>
          <li><a href="./" style="font-size: 18px">Managing Code and Software for Applied Data Science Projects</a></li>
        collapse: section
      sharing: no
      view: https://github.com/ucdavisdatalab/workshop_data-science-software-management/blob/master/%s
      edit: https://github.com/ucdavisdatalab/workshop_data-science-software-management/edit/master/%s
---

# Overview {-}

Creating a repeatable process for developing your software is an important component of reproducible research. This workshop discusses how and why we build code, possible development workflows, project management strategies, and tool selection. This workshop is designed for learners who are writing and applying code for their research projects, but have no or limited formal computer science training. After this workshop, learners should be able to describe the basic process of developing code, compare the benefits of different tools and coding workflows based on project goals and constraints, and identify appropriate strategies for managing and archiving project artifacts (including code and data). There are no specific prerequisites for this lecture/discussion-focused workshop, but it is designed for learners with prior coding experience.
