#import "../g-exam.typ": g-exam, g-question, g-subquestion

#show: g-exam.with(
  localization: (
    grade-table-queston: none,
    grade-table-total: none,
    grade-table-points: none,
    grade-table-calification: none,
    point: none,
    points: none,
    page: none,
    page-counter-display: none,
    family-name: "Apellidos *4",
    personal-name: none,
    group: none,
    date: none
  ),
)

#g-question(point: 2)[Question 1]

#g-question(point: 1)[Question 2]

#g-question(point: 1.5)[Question 3]