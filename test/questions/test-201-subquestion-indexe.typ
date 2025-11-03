#import "../../src/lib.typ": *

#show: exam.with(
  question-points-position: right,
)

#question(points: 1)[#lorem(40)]

#subquestion(points: 1)[#lorem(30)]

#subquestion(points:1.2)[$display(3+2=)$]

#subquestion(points:1.3)[$3+2=$]

#subquestion(points:1.4)[
  $display(3+2=)$
]

#subquestion(points:1.5)[
  $3+2=$
]

#subquestion(points: 2.2)[#lorem(40)]

#subquestion(points: 3.4)[
  #lorem(43)
]

#subquestion(points: 4.2)[#lorem(145)]