#import "@preview/shiroa:0.4.0": *

#import "/docs-shiroa/g-exam-doc/book.typ"
#let ebook = book

#show: ebook.project.with(title: "Typst book", authors: ("Andrés Giménez Muñoz", ), spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it)