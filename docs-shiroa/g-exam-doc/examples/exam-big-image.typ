#import "../book.typ": book-page, cross-link

#show: book-page.with(title: "Exam big images")

// #include "./exam-big-image.doc.typ"

#pagebreak()

Code:

#raw(block:true, read("./exam-big-image.doc.typ"), lang:"typ")



// #v(5cm)

// #raw(block:true, read("./exam-big-image.doc.typ"), lang:"txt")

// Codigo fuente:

// ```typ
// #raw(block:true, read("./exam-big-image.doc.typ"), lang:"txt")
// ```