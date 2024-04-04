# g-exam 

This template provides a way to generate exams. You can create questions and sub-questions, header with information about the academic center, score box, subject, exam, header with student information, clarifications, solutions, watermark with information about the exam model and teacher.

#### Features 

- Scoreboard.
- Scoring by questions and subquestions.
- Student information, on the first page or on all odd pages.
- Question and subcuestion.
- Show solutions and clarifications
- List of clarifications.
- Teacher's Watermark
- Exam Model Watermark

## Usage 

For information, see the [manual](./doc/manual.pdf). 

To use this package, simply add the following code to your document:

## Examples 

### Minimal Example

```typ
#import "@preview/g-exam:0.3.0": *

#show: g-exam.with(
    #g-question(point: 2)[Question 1]
      #g-subquestion[Subquestion a]
      #v(1fr)
      
      #g-subquestion[Subquestion b]
      #v(1fr)

    #g-question(point: 2)[Question 1]
    #v(1fr)
)
```

### Full sample of an exam.

  1. [Example of exam with punctuation](examples/exam-001.pdf)
  1. [Example of exam with question only](examples/exam-002.pdf)
  1. [Example of exam with subquestion](examples/exam-003.pdf)
  1. [Example of exam with punctuation](examples/exam-005.pdf)
  1. [Example of exam with solution](examples/exam-005.pdf)

## Changelog

### v0.3.0

- Include parameter question-text-parameters.
- Show solution
- Expand documentation.
- Possibility of estrablecer question-point-position to none.
- Bug fix show watermark.

### v0.2.0

- Control the size of the logo image.
- Convert to template
- Allow true and false values in show-studen-data.
- Show clarifications.
- Widen margin points.
- Show solution.
- ⚠️ Breaking changes:
  - ?¿?¿

### v0.1.1

- Fix loading image.

### v0.1.0

- Initial version submitted to typst/packages.


# CI

Continuous integration status:

[![.github/workflows/integration.yaml](https://github.com/MatheSchool/typst-g-exam/actions/workflows/integration.yaml/badge.svg)](https://github.com/MatheSchool/typst-g-exam/actions/workflows/integration.yaml)
