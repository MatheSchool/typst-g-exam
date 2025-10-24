#import"./global.typ": *

#let __g-questions-pages(
  items,
) = {
      layout(size =>
      {
        context {
          let page-height = page.height - measure(width: size.width, page.header).height - measure(width: size.width, page.footer).height - page.margin.top.length
          
          let height-accumulated = here().position().y
          
          let item = items.at(0)
          height-accumulated = height-accumulated + measure(width: size.width, item).height
          let i = 1
          while i < items.len() {
            item

            let next-item = items.at(i)

            let height-item-measure = measure(width: size.width, next-item).height
            height-accumulated = height-accumulated + height-item-measure

            i = i + 1
            if height-accumulated > page-height and i < items.len() - 1 { 
              height-accumulated = height-item-measure
              colbreak()
            }
            
            item = next-item
          }
        }
      })
    }
    

#let questions-pages(
  ..body,
) = {
    let items = body.pos()
      
    if type(items) == content {
      items
    }
    else if type(items) == str {
      items
    } 
    else if items.len() == 1 {
      items.at(0)
    }
    else if type(items) == array {
      __g-questions-pages(items)
    }
    else {
      panic("Not implementation questions-pages of type: '" + type(items) + "'")
    }
  }

#let __g-columns-width(
    size,
    max-columns,
    items
  ) = {
  let items-size-width = 0pt
  let items-size-heigth = 0pt
  for item in items {
    let item-size = measure(height: size.height, item)
    items-size-width = calc.max(items-size-width, item-size.width)
    items-size-heigth = items-size-heigth + item-size.height
  }

  // let number-column = calc.max(1, calc.trunc(page.width / items-size-width))
  // if (page.width * (number-column - 1)) >= 0.4 * page.width {
  //   number-column = number-column - 1
  // }
  // number-column = calc.max(1, calc.trunc(page.width / items-size-width * (1-0.08 * (number-column - 1))))
  let number-column = calc.trunc((size.width + 40pt) / (items-size-width + 40pt))
  number-column = calc.max(1, number-column)
  number-column = calc.min(max-columns, number-column)
  number-column = calc.min(items.len(), number-column)
  // number-column = 5

  return (number-column, items-size-heigth, items-size-width)
}  

#let __g-questions-columns(
  max-columns: 100,
  items,
  ) = {
     layout(size => {
      context {
        let columns-info = __g-columns-width(size, max-columns, items)
        let number-column = columns-info.at(0)
        let items-size-heigth = columns-info.at(1)
        let items-size-width = columns-info.at(2)
        let here-position = here().position()

        let num-items-per-column = calc.div-euclid(items.len(), number-column)
        if calc.rem-euclid(items.len(), number-column) > 0 {
          num-items-per-column = num-items-per-column + 1
        }
        // [number-column: #number-column, items-size-heigth: #items-size-heigth, items-size-width: #items-size-width, here-position: #here-position, num-items-per-column]


        if number-column > 1 { // one page.
          let items-columns = items.chunks(num-items-per-column)  
          columns(number-column, {
            let i = 0
            while i < items-columns.len() {
              let items = items-columns.at(i)
              for item in items { 
                  item
              }
              if i < items-columns.len() - 1 {
                colbreak()
              }
              i = i + 1
            }
          })
        } else { // one column.
          let acumulated-height = here().position().y
          for item in items {
            acumulated-height = acumulated-height + measure(width: size.width, item).height
            if acumulated-height > size.height {
              colbreak()
              acumulated-height = 0pt
            }
            item
          }
        }
      }
    })
  }

/// Automatic adjustment of question and subquestion lists.
/// 
/// *Example:*
/// ```
/// #question()[This is a question]
/// 
/// #questions-columns([
/// #subquestion()[This is a first subquestion]
/// #subquestion()[This is a second subquestion]
/// ])
/// 
/// - max-columns: Maximum number of columns.
/// - gutter: The size of the gutter space between each column.
/// - body (string, content): Body of question and subquestion list.
#let questions-columns(
  max-columns: 10000,
  gutter: 4% + 0pt,
  ..body,
  ) = {
    let items = body.pos()   
      
    if type(items) == content {
      items
    }
    else if type(items) == str {
      items
    }
    else if items.len() == 1 {
      items.at(0)
    }
    else if type(items) == array {
      __g-questions-columns(items)
    }
    else {
      panic("Not implementation questions-pages of type: '" + type(items) + "'")
    }
  }

