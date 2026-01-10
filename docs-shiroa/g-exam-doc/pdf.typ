#import "@preview/shiroa:0.2.0": *

#import "/docs-shiroa/g-exam-doc/book.typ"
#let ebook = gh-ebook

#show: ebook.project.with(title: "Typst book", authors: ("Andrés Giménez Muñoz", ), spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it)