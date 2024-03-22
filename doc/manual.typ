#import "@preview/tidy:0.2.0"

#import "./util.typ": *
#import "./style.typ" as doc-style

// #import "./style.typ": 
// https://github.com/Mc-Zen/tidy

// // Usage:
// //   ```example
// //   /* canvas drawing code */
// //   ```
// #show raw.where(lang: "example"): example
// #show raw.where(lang: "example-vertical"): example.with(vertical: true)

#make-title()

#set terms(indent: 1em)
#set par(justify: true)
#set heading(numbering: (..num) => if num.pos().len() < 4 {
    numbering("1.1", ..num)
  })
#show link: set text(blue)

// Outline
#{
  show heading: none
  columns(2, outline(indent: true, depth: 3))
  pagebreak(weak: true)
}

#set page(numbering: "1/1", header: align(right)[g-exam])

= Introduction

This package provides a way to generate exams. You can create questions and sub-questions, header with information about the academic center, score box, subject, exam, header with student information, clarifications, solutions, watermark with information about the exam model and teacher.

= Usage

This is the minimal starting point:
#pad(left: 1em)[```typ
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(point: 2)[Question 1]

#g-question(point: 1)[Question 2] 

```]

= Exam

#doc-style.parse-show-module("../src/g-exam.typ") 

#lorem(150)

#lorem(150)

= Questions

#lorem(150)

#lorem(150)

= Solutions

#lorem(150)

#lorem(150)

#lorem(150)
