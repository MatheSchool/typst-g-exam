#import "@preview/tidy:0.2.0"
// https://github.com/Mc-Zen/tidy

#let docs = tidy.parse-module(
  read("../g-exam.typ"),
  name: "g-exam (Exam generator)")

#tidy.show-module(docs, style: tidy.styles.default) 
