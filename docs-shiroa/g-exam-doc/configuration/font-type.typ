#import "mod.typ": *

#show: book-page.with(title: "Font type")

Typst allows you to customize the fonts of testo, both size, type, space between words, ...

= Sources in questions and sub-questions

For children with special needs, it is recommended to use a larger font, which can cause the entire
document to be out of place. To do this, the question-text-parameters parameter has been created in
which we will indicate the font that will have, only, the content of the questions, leaving the rest of the
text with the same font. In this way, the layout of the document will be maintained in a similar way.
The following example will use a 16-point, double-spaced font for the questions.

```typst

#show: exam.with(
    question-text-parameters: (size: 16pt, spacing:200%),
)


```

We can use special fonts for dyslexia, as follows.

```typst

#show: exam.with(
    question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic),
)


```

= Sources of the entire document
If we want to change the text fonts of the entire document, we can do so, indicating it at the beginning of the document, before calling the template.

This will change the sources of the table of contents, student information, headers, and question numbering.

```typst

#set text(font: "PT Sans", size: 18pt, spacing:200%)

#show: exam.with(
)

#question(points: 2)[#lorem(30)]


```
