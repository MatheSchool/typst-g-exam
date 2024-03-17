#import "../g-exam.typ": g-exam, g-question, g-subquestion

#show: g-exam.with()

#show regex("=q (.+)"): it => {
    let (_, ..rest) = it.text.split()
    g-question[#rest.join(" ")]
  }

#show regex("=q \d?\.?\d? (.+)"): it => {
  // #show regex("=q ^\d*\.?\d+$ (.+)$"): it => {
    let (a, point, ..rest) = it.text.split()

    // [a #point  a]
    g-question(point:float(point))[#rest.join(" ")]
  }

#show regex("==q (.+)$"): it => {
    let (_, ..rest) = it.text.split()
    g-subquestion[#rest.join(" ")]
  }

#show regex("==q \d?\.?\d? (.+)"): it => {
    let (a, point, ..rest) = it.text.split()
    g-subquestion(point:float(point))[#rest.join(" ")]
  }

=q Question 1

=q 2.2 Question 2

==q Subquestion 3

==q 1.3 Subquestion 3

=q .2 Question 3

=q $x^2 -4x +4 = 0$

=q 2.4 $x^2 -4x +4 = 0$