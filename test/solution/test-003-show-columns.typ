#import "../../src/lib.typ": *

#show: exam.with(
  show-grade-table: false,
  show-student-data: true,
  show-solution: true,
)

#question[Question 1]

#question-columns(
[
  #subquestion[Question 1.1]
  #solution(alternative-content: "Not solution of question 2")[Solution 1]

  #subquestion[Question 1.2]
  #solution(alternative-content: "Not solution of question 2")[Solution 1.2]
])

#question[Limits]

#question-columns(
[
  #subquestion(
    solution: [$display(=(3infinity^2+5infinity-3)/4=\+infinity)$],

  )[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4)$]
  
  #subquestion(
    solution: [$display(=(sqrt(3infinity^2+5infinity-3))/4 = sqrt(infinity)/4) = infinity$]

  )[$display(limits("lim")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
    
  #subquestion()[$display(limits("lim")_(x->+infinity) x+e^x = infinity + e^(infinity) = infinity = 3+2+3+2)$]
  
  #subquestion()[$display(limits("lim")_(x->+infinity) 2^x)$]
])

#question[Limits]

#question-columns(
[
  #align(start)[
    #subquestion()[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4)$]
  ]
  #solution()[$display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=+infinity)$]
  
  #subquestion(
    solution: [$display(=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=(3infinity^2+5infinity-3)/4=+infinity)$],
  )[$display(limits("lim")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
   
  #subquestion()[$display(limits("lim")_(x->+infinity) x+e^x)$]
  
  #subquestion()[$display(limits("lim")_(x->+infinity) 2^x)$]
])

#question[Question 2]

#question-columns()[
  #subquestion()[$display(2p(x) + q(x))$]
  #solution([Solution of $display(2p(x) + q(x))$])
  #subquestion()[$display(x^2-2)$]

  #subquestion()[$display(p(x)-3q(x))$]
  #subquestion()[$display(x^2-2)$]
  ]

#question[Question 3]

#question-columns()[
#subquestion[Question 3.1]
#solution(alternative-content: [Alternative])[Solution 3.1]

#subquestion[Question 3.2]
#solution[Solution 3.2]
]

#question[Question 4]

#solution[Solution 4]


