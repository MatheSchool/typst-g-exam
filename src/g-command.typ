#import "./g-exam.typ": *

#let g-question(
    point: none, 
    point-position: none, 
    body) = {
  assert(point-position in (none, left, right),
      message: "Invalid point position")

  __g-question-number.step(level: 1) 
  
  [#hide[]<end-g-question-localization>]
  __g-question-point.update(p => 
    {
      if point == none { 0 }
      else { point }
    })
  
  locate(loc => {
    let __g-question-point-position = point-position
    if __g-question-point-position == none {
      __g-question-point-position = __g-question-point-position-state.final(loc)  
    }
    let __g-question-text-parameters = __g-question-text-parameters-state.final(loc)

    if __g-question-point-position == left {
      v(0.1em)
      {
        __g-question-number.display(__g-question-numbering) 
        if(point != none) {
          __g-paint-tab(point:point, loc: loc) 
          h(0.2em)
        }
      }
      set text(..__g-question-text-parameters)
      body 
    }
    else if __g-question-point-position == right {
      v(0.1em)
      if(point != none) {
        place(right, 
            dx: 15%,
            float: false,
            __g-paint-tab(point: point, loc: loc))
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
  })
}

#let g-subquestion(
    point: none, 
    point-position: none, 
    body) = {

  assert(point-position in (none, left, right),
      message: "Invalid point position")

  __g-question-number.step(level: 2)

  let subg-question-point = 0
  if point != none { subg-question-point = point }
  __g-question-point.update(p => p + subg-question-point )

  locate(loc => {
      let __g-question-point-position = point-position
      if __g-question-point-position == none {
        __g-question-point-position = __g-question-point-position-state.final(loc)
      }
      let __g-question-text-parameters = __g-question-text-parameters-state.final(loc)

      if __g-question-point-position == left {
        v(0.1em)
        {
          h(0.7em) 
          __g-question-number.display(__g-question-numbering) 
          if(point != none) {
            __g-paint-tab(point: point, loc:loc) 
            h(0.2em)
          }
        }
        set text(..__g-question-text-parameters)
        body
      }
      else if __g-question-point-position == right {
        v(0.1em)
        if(point != none) {
          place(right, 
              dx: 15%,
              float: false,
              __g-paint-tab(point: point, loc:loc)) 
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
  )
}

/// Show solution of question.
/// 
/// *Example:*
/// ``` #g-solution(
///    alternative-content: v(1fr)
///  )[
///  I know the demostration, but there's no room on the margin. For any clarification ask Andrew Whilst.
/// ]```
///
///
/// - alternative-content (string, content): Alternate content when the question solution is not displayed.
/// - body (string, content): Body of question solution
#let g-solution(
    alternative-content: none,
    body) = {
      assert(alternative-content == none or type(alternative-content) == "content",
        message: "Invalid alternative-content value")

      locate(loc => {
        let show-solution =  __g-show-solution.final(loc)

        if show-solution == true {
          body
        }
        else {
          hide[#body]
          // alternative-content
        }
      }
    )
}

#let g-clarification(size:8pt, body) = { 
  text(size:size)[$(*)$ #body] 
}