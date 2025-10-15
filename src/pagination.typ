#import"./global.typ": *

// #let __find_items(items) = {
//   let groups = ()
//   let group = ()
//   let content-result
//   let first-item = true

//   for item in items.children {   
//     if type(item) == content {
//       for item2 in item.fields() {
//         for item3 in item2 {
//           if type(item3) == array {
//             for item4 in item3 {
//               for item5 in item4.fields() {
//                 if item5.at(1) == "g-question-number" {
//                   // if  first-item {
//                   //   first-item = false
//                   // } 
//                   // else {
//                      groups.push(group)
//                      group = ()
//                   // }
//                 }
//               }
//             }
//           }
//         }
//       } 
    
//       group.push(item)}
//   }

//   groups.push(group)
//   return  groups
// }

// #let __make_item(group-item) = {
//   for item in group-item{
//     [#item]
//   }
// }

// #let __make_body(groups) = {
//   let number-group = 0
//   for group in groups {
//     for item in group {
//       [#item.at(0).at(0)]
//     }
//     number-group = number-group + 1
//     if number-group < groups.len() {
//       colbreak()
//     }
//   }
// }

// #let __make_groups(size-items, number-columns) = {
//   let number-item = size-items.len()
//   let item-by-group = calc.ceil(number-item / number-columns)

//   let groups = ()

//   let total-size = measure(__make_item(size-items))
//   let block-height = total-size.height / number-columns

//   let i = 1
//   let j = 1

//   while i < number-item {
//     let group = ()
//     let group-size-height = 0pt
//     while group-size-height <= block-height and j <= number-item {
//       group = size-items.slice(i, j)
//       let group-make = __make_item(group)
//       group-size-height = measure(group-make).height
//       j = j + 1 
//     }
//     i = j - 1
//     groups.push(group)
//   }

//   return groups
// }

#let __g-questions-pages(
  items,
) = {
      context {
        layout(layout-size => {
        let item = [#items.at(0) \ ]
        item

        let size-items = measure(item)
        let height-accumulated = size-items.height

        let i = 1
        while i < items.len() {           
          while height-accumulated > layout-size.height {
            height-accumulated = height-accumulated - layout-size.height
          }

          let next-item = [#items.at(i) \ ]
          let hidden-next-item = measure(next-item)
          let size-items = measure(next-item)

          height-accumulated = height-accumulated + size-items.height
          if height-accumulated > layout-size.height { 
            height-accumulated = size-items.height
            colbreak()
          }
          item = next-item
          item
          i = i + 1
        }
      })
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
    layout-size,
    items
  ) = {
  let items-size-width = 0pt
  // for item in items {
  //   let items-size = measure(item)
  //   items-size-width = calc.max(items-size-width, items-size.width)
  // }

  // let number-column = layout-size.width / items-size-width
  let layout-size-width = 629.29pt
  // let number-column = calc.rem(layout-size.width, items-size-width)
  let items-size-width = 15pt
  let number-column = calc.trunc(layout-size-width, items-size-width)

  let number-column-int = int(number-column)

  return number-column-int
}  

// #let __g-columns-width(
//     layout-size,
//     items
//   ) = {
//   let items-size-width = 0pt
//   for item in items {
//     // let items-size = measure(item)
//     // items-size-width = calc.max(items-size-width, items-size.width)

//   }
// }

#let __g-questions-columns(
  max-columns: 10000,
  gutter: 4% + 0pt,
  items,
  ) = {
    context {
      // [#type(items)]

     
        // [items-size: #items-size]
        
      layout(layout-size => {
        // [layout-size: #layout-size \ ]

        // let items-size = items.map(item => {
        //       measure(item).width
        //     })

       let number-column = __g-columns-width(layout-size, items)
       [number-column: #number-column \ ]
      //  number-column = calc.
        let number-column = 3
        let number-column = calc.min(max-columns, calc.max(1, number-column))
        [number-column: #number-column \ ]
        columns(number-column, {
        
        // let content-size = measure(items)
        
        // 

        // let item = items.at(0)
        // [#item]

        // let size-items = measure(item)
        // let height-accumulated = size-items.height 

        // let i = 1
        // while i < items.len() {           
        //   while height-accumulated > layout-size.height {
        //     height-accumulated = height-accumulated - layout-size.height
        //   }

        //   let next-item = items.at(i)
        //   let hidden-next-item = measure(next-item)
        //   let size-items = measure(next-item)

        //   height-accumulated = height-accumulated + size-items.height
        //   if height-accumulated > layout-size.height { 
        //     height-accumulated = size-items.height
        //     [-----------------------------------------]
        //     colbreak()
        //   }
        //   item = next-item
        //   item
        //   i = i + 1
        // }
      })
    })
  }
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

