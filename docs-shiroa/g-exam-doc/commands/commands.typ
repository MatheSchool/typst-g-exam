#import "mod.typ": *

#show: book-page.with(title: "Commands")

= Exam

```typst
#show: exam.with()
```

== exam

Template for creating an exam.
- *autor*: Information of autor of exam.
    - *name* (string, content): Name of author of exam.
    - *email* (string): e-mail of author of exam.
    - *watermark* (string): Watermark with information about the author of the document.
- *school   *: Information of school.
    - *name* (string, content): Name of the school or institution generating the exam.
    - logo (none, content, bytes): Logo of the school or institution generating the exam.
- *exam-info*: Information of exam
    - *academic-period*(none, content, str): academic period.
    - *academic-level*(none, content, str): academic level.
    - *academic-subject*(none, content, str): academic subject.
    - *number*(none, content, str): Number of exam.
    - *content*(none, content, str): Content of exam.
    - *model*(none, content, str): Model of exam.


=== Clarification

Clarifications of exam. It will appear in a box on the first page.
- _*question-text-parameters*_: Parameter of text in question and subquestion. For example, it allows
us to change the text size of the questions.
- *show-student-data*(none, true, false, “first-page”, “odd-pages”): It shows a box for the student to
enter their details. It can appear on the first page or on all odd-numbered pages.
- *show-grade-table*: (bool): Show grade table.
- *decimal-separator*: (“.”, “,”): Indicates the decimal separation character.
- *question-points-position*: (none, left, right): Position of question point.
- *show-solution*: (true, false): It shows the solutions to the questions.

```
```