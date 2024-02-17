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


# Usage

## Minimal Example

```typst

```

### g-exam
    
- body (body):
- date:
- show-studen-data: (none, string),
    - first-page: Show studen data only in first page.
    - odd-pages: Show studen data in all odd pages.
    - `none`: Not show studen data.
- question-point-position(none, left, right)
    - ritht: Show question point on the right.
    - left: Show question point on the left.
    - `none`: Not show the question point.

# Changelog

### v0.0.1

- Initial version submitted to typst/packages.