#import "@preview/tidy:0.2.0"
// https://github.com/Mc-Zen/tidy

#let exam-docs = tidy.parse-module(
  read("../src/g-exam.typ"),
  name: "Exam definition")

#let command-docs = tidy.parse-module(
  read("../src/g-command.typ"),
  name: "Command definitions")


#tidy.show-module(exam-docs, style: tidy.styles.default) 

#tidy.show-module(command-docs, style: tidy.styles.default) 
