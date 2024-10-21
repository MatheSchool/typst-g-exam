#import "../../src/lib.typ": *

#show: g-exam.with(
  show-grade-table: false,
  show-student-data: true,
  show-solution: false
)

#g-question[Question 1]

#g-solution(alternative-content: 222222)[Solution 1]

#g-question[Question 2]

#g-subquestion[Question 2.1]
#g-solution(alternative-content: [Alternative])[Solution 2.1]

#g-subquestion[Question 2.2]
#g-solution[Solution 2.2]


#g-question[Question 3]

#g-solution[Solution 3]


