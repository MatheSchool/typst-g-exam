#import "@preview/shiroa:0.1.1": *

#import "../templates/ebook.typ"

#show: ebook.project.with(title: "g-exam Doc", spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it)
