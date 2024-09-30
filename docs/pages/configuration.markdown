---
layout: default
title: Configuration
nav_order: 1
has_children: true
has_toc: false # on by default
nav_exclude: false
---
# Header

The template will include a header in the exam, with the information entered in the template. We can
indicate a logo of the educational center, a description of the exam, subject, content, academic level, …

```typst
#show: g-exam.with(
author: (
name: "Andrés Jorge Giménez Muñoz",
email: "matheschool@outlook.es",
watermark: "Teacher: andres", ),
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
)
```

# Student Information

In order for a header in which the student must enter his/her personal data, it must be speciﬁed on the
template by means of the ‘show-studen-data’ property indicating how you want this box to appear.
Values can be:

- ﬁrst-page: It will only appear on the ﬁrst page.
- odd-pages: It will appear on odd-numbered pages.
- none: The user information box will not appear..

The following example will display student information on the ﬁrst page.

```
#show: g-exam.with(
   show-studen-data: "first-page",
)
```

#Scoreboard

We will be able to show a scoreboard, with the points for each question. In order for this table to
appear, we will have to set the show-grade-table a **true**, a **false** so that it doesn’t show up.

```
#show: g-exam.with(
    show-grade-table: true,
)
```

#Question

To enter the questions, use the q-question, followed by the text of the question. You can include the
score of the question by entering the parameter point.

```
#g-question(points: 2)[Question text.]
#v(1fr)
)
```

To create sub-questions, it will be done in the same way with the q-subquestion, command, which
will be nested to the question asked in the previous line. In the same way, the score of the question
can be indicated, in case of indicating a score to the question and the sub-questions, it will be added
to the total. Therefore, it is advisable to only indicate the score in one level.

The following example asks a ﬁrst question, with no sub-questions, with a score of two points and a
second question with two sub-questions with a score of 2 points each, which will show that the second
question is worth a total of four points in the scorecard.

```
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(points: 2)[List prime numbers]
#v(1fr)

#g-question[Complete the following sentences]

#g-subquestion(points: 2)[Don Quixote was written by ...]
#v(1fr)

#g-subquestion(points: 2)[The name of the continent we live on is ...]
#v(1fr)
```

# Information in the document’s metadata

If a pdf document is generated, the information will be saved in the document. Such as the author’s
name, e-mail, watermark, exam information, …

```
#show: g-exam.with(
author: (
name: "Andrés Jorge Giménez Muñoz",
email: "matheschool@outlook.es",
watermark: "Teacher: andres", ),
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
```
This information can be consulted in the properties of the pdf document.

#  Punctuation Decimal Separator

Depending on the language we use, the decimal separator may change. To specify the decimal sepa-
rator we want to use, we use ‘decimal-separator’ with the values ‘.’ or ‘,’ as follows.

```
#show: g-exam.with(
decimal-separator: ",",
)
```

# Font type

For children with special needs, it is recommended to use a larger font, which can cause the entire
document to be out of place. To do this, the question-text-parameters parameter has been created in
which we will indicate the font that will have, only, the content of the questions, leaving the rest of the
text with the same font. In this way, the layout of the document will be maintained in a similar way.
The following example will use a 16-point, double-spaced font for the questions.

```
#show: g-exam.with(
question-text-parameters: (size: 16pt, spacing:200%),
)
```

# Languages

You can specify the language in which you want the text to appear. To do this, we use the ‘languaje’
property. It can take the values ‘en’, ‘es’, ‘de’, ‘fr’, ‘pt’, ‘it’, ‘nl’.

```
#show: g-exam.with(
    languaje: "es",
)
```