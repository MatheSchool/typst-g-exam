#import"./global.typ": *

#let __g-questions-pages(
  items,
) = {
      context {
        // layout(layout-size => {
        // let aa = place(rect(width: 100%, height: 100%))
        // let layout-size = measure(aa)
        // [layout-size: #layout-size - #type(layout-size)]

        let item = [#items.at(0) \ ]
        item

        let size-items = measure(item)
        let height-accumulated = size-items.height

        let i = 1
        while i < items.len() {           
          while height-accumulated > page.height {
            height-accumulated = height-accumulated - page.height
          }

          let next-item = [#items.at(i) \ ]
          let hidden-next-item = measure(next-item)
          let size-items = measure(next-item)

          height-accumulated = height-accumulated + size-items.height
          if height-accumulated > page.height { 
            height-accumulated = size-items.height
            [+++ #height-accumulated ++ #page.height +++]
            colbreak()
          }
          item = next-item
          item
          i = i + 1
        }
    }
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
    max-columns,
    // gutter,
    items
  ) = {
  let items-size-width = 0pt
  let items-size-heigth = 0pt
  for item in items {
    let item-size = measure(item)
    items-size-width = calc.max(items-size-width, item-size.width)
    items-size-heigth = items-size-heigth + item-size.height
  }

  let number-column = calc.max(1, calc.trunc(page.width / items-size-width))

  number-column = calc.max(1, calc.trunc(page.width / items-size-width * (1-0.1 * (number-column - 1))))
  number-column = calc.min(max-columns, number-column)
  number-column = calc.min(items.len(), number-column)

  return (number-column, items-size-heigth, items-size-width)
}  

#let __g-questions-columns(
  max-columns: 10000,
  // gutter: 4% + 0pt,
  items,
  ) = {
    context {
      // [#gutter #type(gutter) \ ]
      // [#type(gutter.to-absolute()) \ ]

      let columns-info = __g-columns-width(max-columns, /*gutter,*/ items)
      let number-column = columns-info.at(0)
      let items-size-heigth = columns-info.at(1)
      let items-size-width = columns-info.at(2)

      let items-size-heigth-column = (items-size-heigth / number-column) * 0.95

        // [ \ ]
        // [number-column: #number-column \ ]
        // [page.width: #page.width \ ]

        // [#(page.width / items-size-width) \ ]
        // [#(page.width / items-size-width * 0.85) \ ]
        // [items-size-heigth: #items-size-heigth \ ]   
        // [items-size-width: #items-size-width \ ]
        
        // [#(page.width/items-size-width) \ ]
        // [items-size-heigth-column: #items-size-heigth-column \ ]
        // [#(page.width / items-size-width * (1-0.2 * 2))]
      
       
      columns(number-column, {
        let item = items.at(0)
        [#item]
        let size-item = measure(item)
        let height-accumulated = size-item.height
        // [height-accumulated: #height-accumulated \ ]
        // [#size-item \ ]
        let i = 1
        while i < items.len() {
          item = items.at(i)
          item
          let size-item = measure(item)
          height-accumulated = height-accumulated + size-item.height
          // [height-accumulated: #height-accumulated \ ]
          // [#size-item \ ]
        
          if height-accumulated > items-size-heigth-column { 
            [--- #height-accumulated ---]   
            height-accumulated = 0pt
            colbreak()
          }

          i= i + 1
        }
      })
    }
  }
      // let item = items.at(0)
      // [#item]
      // // [#measure(item)]
      
      // let size-item = measure(item)
      // let height-accumulated = size-item.height
      // // [size-item: #size-item]
      // let i = 1
      // while i < items.len() {           
      //   // while height-accumulated > layout-size-width {
      //   //   height-accumulated = height-accumulated - size-item.height
      //   // }

      //   let next-item = items.at(i)
      //   // let hidden-next-item = measure(next-item)
      //   let size-item = measure(next-item)

      //   height-accumulated = height-accumulated + size-item.height
      //   [height-accumulated: #height-accumulated \ ]
      //   // [items-size-heigth-column: #items-size-heigth-column \ ]

      //   if height-accumulated > items-size-heigth-column { 
      //     [--------------------------------]   
      //     height-accumulated = size-item.height
      //     colbreak()
      //   }
      //   // height-accumulated = height-accumulated + size-item.height
      //   item = next-item
      //   item
      //   // [#measure(item) \ ]
      //   // [#box(width:455pt, fill:red)[aa] \ ]
      //   i = i + 1
      // }
    // })
    // })
//   }
// }

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

