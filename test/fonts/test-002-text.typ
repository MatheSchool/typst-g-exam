#import "../../src/lib.typ": *

#set text(font: "PT Sans", size: 18pt, spacing:200%)

#show: g-exam.with(
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