#import "../../src/lib.typ": *

#show: g-exam.with(
  show-student-data: "first-page",
  show-grade-table: true,
)


=? []
==? (points:1) []
==? (points:2) []

=? (points:3)[]
==? (points:1.2)[]
==? (points:1.3)[]

