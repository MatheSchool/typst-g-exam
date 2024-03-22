#import "@preview/tidy:0.2.0"
// https://github.com/Mc-Zen/tidy

#let exam-docs = tidy.parse-module(
  read("../src/g-exam.typ"),
  name: "Exam definition")

#let command-question-docs = tidy.parse-module(
  read("../src/g-question.typ"),
  name: "Command question")

#let command-solution-docs = tidy.parse-module(
  read("../src/g-solution.typ"),
  name: "Command solution")

#let command-clarification-docs = tidy.parse-module(
  read("../src/g-clarification.typ"),
  name: "Command Clarification")


#tidy.show-module(exam-docs, style: tidy.styles.default) 

#tidy.show-module(command-question-docs, style: tidy.styles.default) 

#tidy.show-module(command-solution-docs, style: tidy.styles.default) 

#tidy.show-module(command-clarification-docs, style: tidy.styles.default) 
