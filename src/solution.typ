#import"./global.typ": *

/// Show solution of question.
/// 
/// *Example:*
/// ``` #solution(
///    alternative-content: v(1fr)
///  )[
///  I know the demostration, but there's no room on the margin. For any clarification ask Andrew Whilst.
/// ]```
///
/// - alternative-content (string, content): Alternate content when the question solution is not displayed.
/// - show-solution: (true, false, "space", "spacex2", "spacex3"): Show the solutions.
/// - body (string, content): Body of question solution
#let solution(
    alternative-content: none,
    show-solution:none,
    body) = {

    context {
      let show-solution = __g-show-solution.final()

      if show-solution == true {
        v(3pt)
        text(fill:rgb("#0038A7"))[#body]
        v(7pt)
      }
      else {
        if alternative-content != none {
          [#alternative-content]
        }
        else {
          if show-solution == "space" {
            hide[#body]
            [ \ ] 
          }
          else if show-solution == "spacex2" {
            hide[#body]
            [ \ ] 
            hide[#body]
            [ \ ] 
          }
          else if show-solution == "spacex3" {
            hide[#body]
            [ \ ] 
            hide[#body]
            [ \ ] 
            hide[#body]
            [ \ ]
          }
        }
      }
    }
}

#let g-solution(
    alternative-content: none,
    show-solution:none,
    body) = {
      solution(alternative-content: alternative-content, show-solution: show-solution)[body]
    }

#let question-columns(
  count,
  gutter: 4% + 0pt,
  content,
  ) = {
     context {
      let show-solution = __g-show-solution.final()

      if show-solution == true {
        content
      }
      else {
        columns(count, gutter:gutter, content)
      }
    }
}

#let question-colbreak(
  weak: false
  ) = {
  context {
    let show-solution = __g-show-solution.final()

    if show-solution == false {
      colbreak(weak: weak)
    }
  }
}
