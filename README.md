# g-exam 

Template to create exams with header, school letterhead, grade chart, ...

## Features 

- Scoreboard.
- Scoring by questions and subquestions.
- Student information, on the first page or on all odd pages.
- Question and subcuestion.
- List of clarifications.
- Teacher's Watermark
- Exam Model Watermark


# Examples 

### Minimal Example

``` typ
#import "../g-exam.typ": g-exam, g-question, g-subquestion

#show: g-exam.with(
    #g-question(point: 2)[Question 1]
    #v(1fr)
    #g-question(point: 2)[Question 1]
    #v(1fr)
)
```

# Usage 

To use this package, simply add the following code to your document:

### g-exam

Generate the skeleton of an exam, entering a header, student information, grade table, watermarks, ...

#### Parameters of g-exam

  - **author**: 
    - **name**: Name of author of document.
    - **email**: e-mail of author of document. 
    - **watermark**: Watermark with information about the author of the document.

  - **school**: 
    - **name**: Name of the school or institution generating the exam.
    - **logo**: Logo of the school or institution generating the exam.
  
  - **exam-info**: 
    - **academic-period**: Academic period.
    - **academic-level**: Academic level
    - **academic-subject**: Academic subject.
    - **number**: Number of exam.
    - **content**: Content of exam.
    - **model**: Watermark with information about the exam model.

  - **localization**: Location information, in case you want to change a parameter or your language is not supported.
    - **grade-table-queston: Text question in grade table**.
    - **grade-table-total: Text total in grade table**,
    - **grade-table-points: Text points in grade table**,
    - **grade-table-calification: Text calification in grade**,
    - **point: Text point**,
    - **points: Text points**.
    - **page: Text page**,
    - **page-counter-display**: Text page conter display.
    - **family-name**: Text surname or family name in studen data.
    - **personal-name**: Text name or personal name in studen data.
    - **group**: Text gorup in studen data.
    - **date**: Text date in studen data.

- **date**: Date of document.
- **show-studen-data: (none, string),
    - **first-page**: Show studen data only in first page.
    - **odd-pages**: Show studen data in all odd pages.
    - `none`: Not show studen data.
- **question-point-position**: (none, left, right)
    - **right**: Show question point on the right.
    - **left**: Show question point on the left.
    - `none`: Not show the question point.
- **show-grade-table**: (true, false) Show grade table,
- **clarifications**: (string, (:)) Text of clarifications for students.
- **body** (body): Body of exam.

# Changelog

### v0.1.0

- Initial version submitted to typst/packages.