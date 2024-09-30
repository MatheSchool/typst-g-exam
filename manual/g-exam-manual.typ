#import "@preview/tidy:0.2.0"

#import "./util.typ": *
#import "./style.typ" as doc-style
#import "./example.typ": *

#import "../src/auxiliary.typ": *
#import "../src/g-exam.typ": *
#import "../src/g-question.typ": *
#import "../src/g-solution.typ": *

// Usage:
//   ```typ-example
//   /* canvas drawing code */
//   ```
#show raw.where(lang: "typ-example"): example
#show raw.where(lang: "typ-example-vertical"): example.with(vertical: true)

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

This is the minimum model for generating an exam, in which you define the g-exam template and the questions and subquestions with the g-question and g-subquestion commands.

#pad(left: 1em)[

```typ-example
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(points: 2)[List prime numbers]
#v(1fr)

#g-question(points: 1)[Complete the following sentences] 
  #g-subquestion[Don Quixote was written by ...]
  #v(1fr)
      
  #g-subquestion[The name of the continent we live on is ...]
  #v(1fr)
```]

= Configuration 

== Header

// La plantilla incluira un encabezado en el examen, con la información introducida en la plantilla. 
// Podremos indicar un logo del centro educativo, una descripción del examen, asignatura, contenido, nivel academico, ...

The template will include a header in the exam, with the information entered in the template. 
We can indicate a logo of the educational center, a description of the exam, subject, content, academic level, ...

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "matheschool@outlook.es", 
    watermark: "Teacher: andres",  ),
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
```]

== Student Information

// Para que un encabezado en el que el alumno debe introducir sus datos personales, se ha de especificar en la plantilal mediante la prpiedad `show-student-data` indicando como se quiere que aparezca este cuadro. 
// Los valores pueden ser:
In order for a header in which the student must enter his/her personal data, it must be specified on the template by means of the 'show-student-data' property indicating how you want this box to appear. 
Values can be:
- *first-page*: It will only appear on the first page.
- *odd-pages*: It will appear on odd-numbered pages.
- *none*: The user information box will not appear..

// Con el siguiente ejemplo, se mostrará la información de los alumnos en la primera página.
The following example will display student information on the first page.

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  show-student-data: "first-page",
)
```]

== Scoreboard

We will be able to show a scoreboard, with the points for each question. 
In order for this table to appear, we will have to set the `show-grade-table` a *true*, a *false* so that it doesn't show up.

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  show-grade-table: true,
)
```]

== Questions

To enter the questions, use the `q-question`, followed by the text of the question. You can include the score of the question by entering the parameter `point`.

```typ-example
#g-question(points: 2)[Question text.]
#v(1fr)
```

// Para crear subpreguntas, se realizará de la misma manera con el comando `q-subquestion`, las cuales se anidaran a la pregunta formulada en la linea anterior. 
// De igual modo se puede indicar la puntuación de la suppregunta, en caso de indicar puntuación a la pregunta y a las subpreguntas, esta se sumará al total. Por ello es recomendable solo indicar la puntuación en un nivel. 

To create sub-questions, it will be done in the same way with the `q-subquestion`, command, which will be nested to the question asked in the previous line. 
In the same way, the score of the question can be indicated, in case of indicating a score to the question and the sub-questions, it will be added to the total. Therefore, it is advisable to only indicate the score in one level. 

// En el siguiente ejemplo se formula una primera pregunta, sin subpreguntas, con una puntuación de dos puntos y una segunda pregunta con dos subpreguntas con una puntuación de 2 puntos cada subpregunta, lo que hara que se muestre que la segunta pregunta vale un total de cuatro puntos en el cuadro de puntuación.

The following example asks a first question, with no sub-questions, with a score of two points and a second question with two sub-questions with a score of 2 points each, which will show that the second question is worth a total of four points in the scorecard.

#pad(left: 1em)[
```typ-example
#import "@preview/g-exam:0.3.0": *
#show: g-exam.with()

#g-question(points: 2)[List prime numbers]
#v(1fr)

#g-question[Complete the following sentences] 
  #g-subquestion(points: 2)[Don Quixote was written by ...]
  #v(1fr)
      
  #g-subquestion(points: 2)[The name of the continent we live on is ...]
  #v(1fr)
```]

== Information in the document's metadata

If a pdf document is generated, the information will be saved in the document. Such as the author's name, e-mail, watermark, exam information, ...

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  author: (
    name: "Andrés Jorge Giménez Muñoz", 
    email: "matheschool@outlook.es", 
    watermark: "Teacher: andres",  ),
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
```]

This information can be consulted in the properties of the pdf document.

== Punctuation Decimal Separator

// Dependiendo del lenguaje que utilizamos, el separador decimal, puede cambiar. 
// Para especificar el separador decimal que queremos utilizar utilizamos `decimal-separator` con los valoes '*.*' o '*,*' de la siguiente manera.

Depending on the language we use, the decimal separator may change.
To specify the decimal separator we want to use, we use 'decimal-separator' with the values '*.*' or '*,*' as follows.

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  decimal-separator: ",",
)
```]

== Font type

// Para chico con necesidades especiales, se recomienda utilizar un tipo de letra de mayor tamaño, algo que puede hacer que se descoloque todo el documento. 
// Para ello se ha creado el parametro `question-text-parameters` en el que indicaremos el tipo de letra que tendrá, solo, el contenido de las preguntas, dejando el resto de los texto con el mismo tipo de letra. Así la maquetación del documento, se mantendrá de una forma parecida.

For children with special needs, it is recommended to use a larger font, which can cause the entire document to be out of place. 
To do this, the `question-text-parameters` parameter has been created in which we will indicate the font that will have, only, the content of the questions, leaving the rest of the text with the same font. In this way, the layout of the document will be maintained in a similar way.


// En el siguiente ejemplo se utilizará un tipo de letra de 16 puntos y doble espacio para las preguntas.
The following example will use a 16-point, double-spaced font for the questions.

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  question-text-parameters: (size: 16pt, spacing:200%),
)
```]

== Languages

// Podemos indicar el idioma en el que queremos que aparezca los texto. Para ello utilizamos la proiedad `languaje`, 
// pudiendo tomar los valores `en`, `es`, `de`, `fr`, `pt`, `it`.

You can specify the language in which you want the text to appear. To do this, we use the 'languaje' property. 
It can take the values 'en', 'es', 'de', 'fr', 'pt', 'it'.

#pad(left: 1em)[
```typ-example
#show: g-exam.with(
  languaje: "es",
)
```]

#pagebreak()

= Commands

== Exam

```example
/// User g-exam template
#show: g-exam.with()
```

#doc-style.parse-show-module("../src/g-exam.typ") 



The `g-exam` library has the `g-question`, `g-subquestion`, `g-solution` and `g-clarification` 
commands to create questions, subquestions, solutions, and clarifications.

== Questions and subquestions

#doc-style.parse-show-module("../src/g-question.typ") 

== Solutions

#doc-style.parse-show-module("../src/g-solution.typ") 

== Clarifications

#doc-style.parse-show-module("../src/g-clarification.typ") 

