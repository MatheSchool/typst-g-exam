#import "../src/lib.typ": *

#show: g-exam.with(
  question-text-parameters: (size: 16pt, spacing:200%),
)

#g-question(point:.2)[Pregunta]

#g-subquestion(point:.2)[sub 3]

= Titulo

=? Question 1

=? 2.2 Question 2

=? 2 Question 6

==? Subquestion 3

==? 1.3 Subquestion 3

==? 1 Subquestion 4

=! Solution is this.

=? .2 Question 33

=? Solve this ecuation $x^2 -4x +4 = 0$ 

#g-question(point:.2)[ Solve this ecuation $x^2 -4x +4 = 0$ ]

=! Solulution of the question.

=? 2.4 $x^2 -4x +4 = 0$

==? 2.4 $x^2 -4x +4 = 0$
