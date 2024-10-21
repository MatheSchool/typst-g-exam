#import"./global.typ": *

/// Show a question.
/// 
/// *Example:*
/// ``` 
/// #g-question(points:2)[This is a question]
/// ```
///
/// - points (none, float): Points of the question.
/// - points-position (none, left, right): Position of points. If none,  use the position defined in G-Exam. 
/// - body (string, content): Body of question.
#let g-question(
    points: none,
    points-position: none,
    body) = {

  assert(points-position in (none, left, right),
      message: "Invalid point position")

  __g-question-number.step(level: 1) 
  
  [#hide[]<end-g-question-localization>]
  __g-question-point.update(p => 
    {
      if points == none { 0 }
      else { points }
    })
  
  context {
    let __g-question-points-position = points-position
    if __g-question-points-position == none {
      __g-question-points-position = __g-question-points-position-state.final()  
    }

    let __g-question-text-parameters = __g-question-text-parameters-state.final()

    if __g-question-points-position == left {
      v(0.1em)
      {
        __g-question-number.display(__g-question-numbering) 
        if(points != none) {
          __g-paint-tab(points:points) 
          h(0.2em)
        }
      }
      set text(..__g-question-text-parameters)
      body 
    }
    else if __g-question-points-position == right {
      v(0.1em)
      if(points != none) {
        place(right, 
            dx: 13%,
            float: false,
            __g-paint-tab(points: points))
      }
      __g-question-number.display(__g-question-numbering) 
      set text(..__g-question-text-parameters)
      body 
    }
    else {
      v(0.1em) 
      __g-question-number.display(__g-question-numbering)
      set text(..__g-question-text-parameters)
      body 
    }
  }
}

/// Show a sub-question.
/// 
/// *Example:*
/// ``` 
/// #g-subquestion(points:2)[This is a sub-question]
/// ```
///
/// - points (none, float): Points of the sub-question.
/// - points-position (none, left, right): Position of points. If none,  use the position defined in G-Exam. 
/// - body (string, content): Body of sub-question.
#let g-subquestion(
    points: none, 
    points-position: none, 
    body) = {

  assert(points-position in (none, left, right),
      message: "Invalid point position")

  __g-question-number.step(level: 2)

  let subg-question-points = 0
  if points != none { subg-question-points = points }
  __g-question-point.update(p => p + subg-question-points )

  context {
    let __g-question-points-position = points-position
    if __g-question-points-position == none {
      __g-question-points-position = __g-question-points-position-state.final()
    }
    
    let __g-question-text-parameters = __g-question-text-parameters-state.final()

    set par(hanging-indent: 1em)

    if __g-question-points-position == left {
      v(0.1em)
      {
        h(0.7em) 
        __g-question-number.display(__g-question-numbering) 
        if(points != none) {
          __g-paint-tab(points: points)
          h(0.2em)
        }
      }
      set text(..__g-question-text-parameters)
      body
    }
    else if __g-question-points-position == right {
      v(0.1em)
      if(points != none) {
        place(right, 
            dx: 13%,
            float: false,
            __g-paint-tab(points: points)) 
      }
      {
        h(0.7em) 
        __g-question-number.display(__g-question-numbering) 
      }
      set text(..__g-question-text-parameters)
      body
    }
    else {
      v(0.1em)
      {
        h(0.7em) 
        __g-question-number.display(__g-question-numbering) 
      }
      set text(..__g-question-text-parameters)
      body
    }
  }
}
