#import "../../src/lib.typ": *

#show: exam.with(
  show-grade-table: false,
  show-student-data: true,
  show-solution: false,
)

// #show math.equation.where(block: false): set text(
//   top-edge: "bounds",
//   bottom-edge: "bounds",
// )

#question[Question 1]

#question-columns(2,
[
  #subquestion[Question 1.1]
  #solution(alternative-content: "Not solution of question 2")[Solution 1]
  // #question-colbreak()
  colbreak()

  #subquestion[Question 1.2]
  #solution(alternative-content: "Not solution of question 2")[Solution 1.2]
])

#question[Limits]

#question-columns(2,
// [
// #columns(1,
[
  #subquestion(
    solution: [$display(=(3infinity^2+5infinity-3)/4=\+infinity)$],

  )[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4)$]
  
  #subquestion(
    solution: [$display(=(sqrt(3infinity^2+5infinity-3))/4 = sqrt(infinity)/4) = infinity$]

  )[$display(limits("lim")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
  
  #question-colbreak()
  
  #subquestion()[$display(limits("lim")_(x->+infinity) x+e^x = infinity + e^(infinity) = infinity = 3+2+3+2)$]
  
  #subquestion()[$display(limits("lim")_(x->+infinity) 2^x)$]
])

#question[Limits]

#columns(1,
[
  #align(start)[
    #subquestion()[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4)$]
  ]
  #solution()[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=+infinity)$]
  
  #subquestion(
    solution: [$display(=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=+infinity)$],
  )[$display(limits("lim")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
  
  // #colbreak()
  
  #subquestion()[$display(limits("lim")_(x->+infinity) x+e^x)$]
  
  #subquestion()[$display(limits("lim")_(x->+infinity) 2^x)$]
])

#question[Question 2]
#columns(3)[
  #subquestion()[$display(2p(x) + q(x))$]
  #solution([Solution of $display(2p(x) + q(x))$])

  #subquestion()[$display(x^2-2)$]

  #question-colbreak()
  #subquestion()[$display(p(x)-3q(x))$]
  #subquestion()[$display(x^2-2)$]
  ]

#question[Question 3]

#subquestion[Question 3.1]
#solution(alternative-content: [Alternative])[Solution 2.1]

#subquestion[Question 2.2]
#solution[Solution 3.2]


#question[Question 4]

#solution[Solution 4]


