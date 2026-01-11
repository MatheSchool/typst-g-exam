#import "/docs-shiroa/g-exam-doc/book.typ": book-page, media

#show: book-page.with(title: "Introduction")

= Introduction

*g-exam* is a template for Typst, which allows us to create exams. 
You can create questions and sub-questions, header with information about the academic center, 
score box, subject, exam, header with student information, clarifications, 
solutions, watermark with information about the exam model and teacher.

== Features 

- Scoreboard.
- Scoring by questions and subquestions.
- Student information, on the first page or on all odd pages.
- Question and subquestion.
- Show solutions and clarifications
- List of clarifications.
- Teacher's Watermark.
- Exam Model Watermark-
- Solution posting.
- Pagination of questions and subquestions.

== A sample exam

=== Source:

```typst

#import "@preview/g-exam:0.4.4": *

#show: exam.with(
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
  
  show-student-data: "first-page",
  show-grade-table: true,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)
#question(points:2.5)[Is it true that $x^n + y^n = z^n$ if $(x,y,z)$ and $n$ are positive integers?. Explain.] 
#v(1fr)

#question(points:2.5)[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
#v(1fr)

#question(points:2)[Compute $ integral_0^infinity (sin(x))/x $ ]
#v(1fr)

```

=== Result

This is an embed video.


==== pdf 

#media.iframe(
  outer-width: 640pt,
  outer-height: 1260pt,
  attributes: (
    src: "./assets/introduction.pdf",
    style: "width:100%, height:100%",
    scrolling: "no",
    border: "0",
    width: "100%",
    height: "100%",
    frameborder: "no",
    framespacing: "0",
    allowfullscreen: "true",
  ),
)
=== svg

#media.iframe(
  outer-width: 640pt,
  // outer-height: 360pt,
  attributes: (
    src: "./assets/introduction.svg",
    style: "width:100%, height:100%",
    scrolling: "no",
    border: "0",
    width: "100%",
    height: "100%",
    frameborder: "no",
    framespacing: "0",
    allowfullscreen: "true",
  ),
)
