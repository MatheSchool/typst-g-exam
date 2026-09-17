#import "../../src/lib.typ": *

#show: exam.with(
  school: (
    name: "Test School",
    logo: image("./logo.png")
  ),
  exam-info: (
    academic-period: "Academic year 2023/2024",
    // academic-level: "1st Secondary Education",
    academic-subject: "Mathematics",
    number: "2nd Assessment 1st Exam",
    content: "Proofs",
    model: "Model A"
  ),
  
  language: "en",
  decimal-separator: ",",
  show-grade-table: true,
  question-points-position: left,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)

Hello, how are you doing?
#pagebreak()

Page 2
#pagebreak()

Page 3
#pagebreak()

Page 4
#pagebreak()

Page 5
#pagebreak()

Page 6
#pagebreak()

Page 7
#pagebreak()
