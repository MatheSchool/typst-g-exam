#import "../../src/lib.typ": *

#set page(
      "us-letter",
      // "a4",
      // width: 12cm,
      // height: 4cm,
      // margin: (x: 58pt, y: 4pt)
)

#show: g-exam.with(
    school: (
    name: "Sunrise Secondary School",
    // logo: read("./logo.png", encoding: none),
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

#g-question(points: 2)[#lorem(30)]

#g-subquestion(points: 2)[#lorem(30)]

#g-subquestion(points: 2, points-position: right)[#lorem(30)]

#g-question(points: 1)[#lorem(30)]

#g-subquestion(points: 2)[#lorem(30)]
#g-subquestion(points: 2)[#lorem(30)]

#g-question(points: 2, points-position: right)[#lorem(30)]

#g-subquestion(points: 2, points-position: right)[#lorem(30)]
#g-subquestion(points: 2)[#lorem(30)]

#g-question(points: 1.5)[#lorem(30)]