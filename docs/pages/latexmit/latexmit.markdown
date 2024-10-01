---
layout: default
title: LaTeX MIT 
nav_order: 3
has_children: true
has_toc: false # on by default
nav_exclude: false
---
# LaTeX Mit exam template

Examples of LaTex Mit exam template.


[![Example LaTex Mit template](assets/exam-latexmit-example.png)](assets/exam-latexmit-example.pdf)  

<!-- [Download pdf LaTex Mit template](assets/exam-latexmit-example.pdf)   -->

[Edit example in typst.app](https://typst.app/project/rRYcxOVDv6fubPsGL0m43B)

```
#import "@preview/g-exam:0.4.0": *

#show: g-exam.with(
  author: (
    name: "Ferdinand Eisenstein", 
    email: "matheschool@outlook.es", 
    watermark: "Teacher: Ferdinand",
  ),
  school: (
    name: "Sunrise Secondary School",
    logo: read("./logo.png", encoding: none),
  ),
  exam-info: (
    academic-period: "Academic year 2023/2024",
    academic-level: "1st Secondary Education",
    academic-subject: "Mathematics",
    number: "2nd Assessment 1st Exam",
    content: "Radicals and fractions",
    model: "Model A"
  ),
  
  language: "en",
  decimal-separator: ",",
  date: "November 21, 2023",
  show-student-data: "first-page",
  show-grade-table: false,
  question-points-position: left,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)

#g-question[Is it true that $x^n + y^n = z^n$ if $(x,y,z)$ and $n$ are positive integers?. Explain.] 
#v(1fr)

#g-question[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
#v(1fr)

#g-question[Compute
$ integral_0^infinity (sin(x))/x $
]
#v(1fr)

```

