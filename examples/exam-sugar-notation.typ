#import "../g-exam.typ": g-exam, g-question, g-subquestion, g-solution

#show: g-exam.with()

// #show regex("=\? (.+)"): it => {
//     let (_, ..rest) = it.text.split()
//     g-question[#rest.join(" ")]
//   }


// #show regex("=+\?+ (\d?\.?\d?)? (.+)"): it => {

#show regex("(.+)"): it => {
    // let (a, point, ..rest) = it.text.split()

    it.fields()
    // [#it.text.split()]
    // [v]

    // if(float.is-nan(point) == true) {
    //   g-question[#rest.join(" ")]
    // }
    // else {
      // [a #point  a]
      // g-question(point:float(point))[#rest.join(" ")]

    // }

    // [vv #point vv #g-question[#rest.join(" ")] vvv]
  }

// #show regex("==\? (.+)"): it => {
//     let (_, ..rest) = it.text.split()
//     g-subquestion[#rest.join(" ")]
//   }

// #show regex("==\? \d?\.?\d? (.+)"): it => {
//     let (a, point, ..rest) = it.text.split()
//     g-subquestion(point:float(point))[#rest.join(" ")]
//   }

// #show regex("=\! (.+)"): it => {
//     let (a, ..rest) = it.text.split()
//     g-solution[#rest.join(" ")]
//   }

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