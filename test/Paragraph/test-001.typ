#import "../../src/lib.typ": *

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