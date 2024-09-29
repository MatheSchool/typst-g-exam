#import "../../src/lib.typ": *

#set text(font: "PT Sans", size: 18pt, spacing:200%)

#show: g-exam.with(
)

#g-question(point: 2)[#lorem(30)]

#g-subquestion(point: 2)[#lorem(30)]

#g-subquestion(point: 2, point-position: right)[#lorem(30)]

#g-question(point: 1)[#lorem(30)]

#g-subquestion(point: 2)[#lorem(30)]
#g-subquestion(point: 2)[#lorem(30)]

#g-question(point: 2, point-position: right)[#lorem(30)]

#g-subquestion(point: 2, point-position: right)[#lorem(30)]
#g-subquestion(point: 2)[#lorem(30)]

#g-question(point: 1.5)[#lorem(30)]