#import "mod.typ": *

#show: book-page.with(title: "Exam Information")

Using the exam-info field we can indicate the exam information, which will appear in the header in the exam header.

We can indicate the exam model, using the model field, which will appear in the lower right corner.

```typst

#show: exam.with(

  exam-info: (
    academic-period: "Curso 2024/2025",
    academic-level: "2º ESO",
    academic-subject: "Matemáticas",
    number: "1ª evaluación - 2º examen",
    content: "Probabilidad",
    model: "Modelo A"
  ),
)

```