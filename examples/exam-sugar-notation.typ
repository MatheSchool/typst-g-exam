#import "../src/lib.typ": g-exam, g-question, g-subquestion, g-solution
// #import "@preview/t4t:0.3.2": *

#show: g-exam.with()

#g-question(point:.2)[Pregunta]

= Titulo

=? Question 1

=? 2.2 Question 2

=? 2 Question 6

==? Subquestion 3

==? 1.3 Subquestion 3

==? 1 Subquestion 3a

=? .2 Question 3

=? $x^2 -4x +4 = 0$

=! Solulution of the question.

=? 2.4 $x^2 -4x +4 = 0$

==? 2.4 $x^2 -4x +4 = 0$
