#import"./global.typ": *

#let __find_groups(items) = {
  let groups = ()
  let group = ()
  let content-result
  let first-item = true

  for item in items.children {   
    if type(item) == content {
      for item2 in item.fields() {
        for item3 in item2 {
          if type(item3) == array {
            for item4 in item3 {
              for item5 in item4.fields() {
                if item5.at(1) == "g-question-number" {
                  if  first-item {
                    first-item = false
                  } 
                  else {
                    groups.push(group)
                    group = ()
                  }
                }
              }
            }
          }
        }
      } 
    
      group.push(item)}
  }

  groups.push(group)
  return  groups
}

#let __make_body(groups) = {
  let number-group = 0
  for group in groups {
    for item in group {
      [#item]
    }
    number-group = number-group + 1
    if number-group < groups.len() {
      colbreak()
    }
  }
}

/// Automatic adjustment of question and subquestion lists.
/// 
/// *Example:*
/// ```
/// #question()[This is a question]
/// 
/// #question-columns([
/// #subquestion()[This is a first subquestion]
/// #subquestion()[This is a second subquestion]
/// ])
/// 
/// /// - body (string, content): Body of question and subquestion list.
#let question-columns(
  gutter: 4% + 0pt,
  body,
  ) = {
  context {
    let show-solution = __g-show-solution.final()

    let content-size = measure(body)
    layout(layout-size => {
      let number-question = body.children.filter(item => {
        return true
      })
      let number-column = calc.max(1, calc.trunc(layout-size.width / content-size.width))
      
      if number-column == 1 {
        body
      }
      else {
        let groups = __find_groups(body)
        let body-groups = __make_body(groups)

        number-column = calc.min(number-column, groups.len())
        columns(number-column, gutter: gutter, body-groups) 
      }
    })
  }
}
