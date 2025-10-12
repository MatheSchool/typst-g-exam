

#let show-solution = false

#let question-columns(
  count,
  show-solution: bool,
  gutter: 4% + 0pt,
  content,
  ) = {
    //  context {
      // let show-solution = __g-show-solution.final()

      // if show-solution == false {
      //   [#content]
      // }
      // else {
        columns(2, gutter:gutter, content)
      // }
    // }

    // show "question-colbreak" : it => {
    //   [-aaa--]
    //   colbreak(it)  
    // }
}

#let question-colbreak(
  show-solution,
  weak: false
  ) = {
  // context {
    // let show-solution = __g-show-solution.final()
    // [#show-solution]

    if show-solution == false {
      colbreak(weak: weak)
    }
  // }
}

#question-columns(2, show-solution: show-solution,
[
  // #math.equation(block: true)[2 + 5/2]

  $display(limits("lim")_(x->+infinity) (3x^2+5x-3)/4)$

  $display(limits("lim")_(x->+infinity) x+e^x)$

  #question-colbreak(show-solution)
  // #colbreak()

  $display(limits("lim")_(x->+infinity) 4/(3x^2+5x-3))$

  $display(limits("lim")_(x->-infinity) x-e^(-x))$
])