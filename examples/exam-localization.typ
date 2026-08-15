#import "../src/lib.typ": *

#show: exam.with(
  localization: (
    grade-table-question: [Number of *questions*],
    grade-table-total: [Total _points_],
    grade-table-points: [#text(fill: red)[Points]],
    grade-table-grade: [#text(fill: gradient.radial(..color.map.rainbow))[Grades obtained]],
    point: [point],
    points: [Points],
    page: [],
    page-counter-display: "1 - 1",
    family-name: "*Family* _name_",
    given-name: "*Given* _name_",
    group: [*Classroom*],
    date: [*Date* of exam]
  ),
)

#question(points: 2)[Question 1]

#question(points: 1)[Question 2]

#question(points: 1.5)[Question 3]