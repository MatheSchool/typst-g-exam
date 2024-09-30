---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: default
title: Home
nav_order: 0
usemathjax: true
nav_enabled: true
usetocbot: true
permalink: /
---

# Introduction

This template provides a way to generate exams. You can create questions and sub-questions, header
with information about the academic center, score box, subject, exam, header with student information, 
clariﬁcations, solutions, watermark with information about the exam model and teacher.

# Usage 

This is the minimum model for generating an exam, in which you deﬁne the g-exam template and the
questions and subquestions with the g-question and g-subquestion commands.

```
#import "@preview/g-exam:0.3.2": *
#show: g-exam.with()
#g-question(point: 2)[List prime numbers]
#v(1fr)
#g-question(point: 1)[Complete the following sentences]
#g-subquestion[Don Quixote was written by ...]
#v(1fr)
#g-subquestion[The name of the continent we live on is ...]
#v(1fr)
```