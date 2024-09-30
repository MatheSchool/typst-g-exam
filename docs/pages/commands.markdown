---
layout: default
title: Commands
nav_order: 2
has_children: true
has_toc: false # on by default
nav_exclude: false
---
# Exam

```typst
#show: g-exam.with()
```

## g-exam

Template for creating an exam.
- autor: Infomation of autor of exam.
    - name (string, content): Name of author of exam.
    - email (string): e-mail of author of exam.
    - watermark (string): Watermark with information about the author of the document.
- scholl: Information of scholl.
    ‣ name (string, content): Name of the school or institution generating the exam.
    - logo (none, content, bytes): Logo of the school or institution generating the exam.
- exam-info: Information of exam
    - academic-period(none, content, str): academic period.
    - academic-level(none, content, str): acadmic level.
    - academic-subject(none, content, str): acadmic subname,
    - number(none, content, str): Number of exam.
    - content(none, content, str): Conten of exam.
    - model(none, content, str): Model of exam.

```
```

### Clarification

Clariﬁcations of exam. It will appear in a box on the ﬁrst page.
- question-text-parameters: Parameter of text in question and subquestion. For example, it allows
us to change the text size of the questions.
- show-studen-data(none, true, false, “ﬁrst-page”, “odd-pages”): It shows a box for the student to
enter their details. It can appear on the ﬁrst page or on all odd-numbered pages.
- show-grade-table: (bool): Show grade table.
- decimal-separator: (“.”, “,”): Indicates the decimal separation character.
- question-point-position: (none, left, right): Position of question point.
- show-solution: (true, false): It shows the solutions to the questions.