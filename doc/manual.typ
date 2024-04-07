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

This template provides a way to generate exams. You can create questions and sub-questions, header with information about the academic center, score box, subject, exam, header with student information, clarifications, solutions, watermark with information about the exam model and teacher.

= Usage

This is the minimal starting point:
#pad(left: 1em)[```typ
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(point: 2)[List prime numbers]

#g-question(point: 1)[Complete the following sentences] 

```]

= Exam

```example
/// User g-exam template
#show: g-exam.with()
```

#doc-style.parse-show-module("../src/g-exam.typ") 

= Commands

The `g-exam` library has the `g-question`, `g-subquestion`, `g-solution` and `g-clarification` 
commands to create questions, subquestions, solutions, and clarifications.

== Questions and subquestions

#doc-style.parse-show-module("../src/g-question.typ") 

== Solutions

#doc-style.parse-show-module("../src/g-solution.typ") 

== Clarifications

#doc-style.parse-show-module("../src/g-clarification.typ") 

