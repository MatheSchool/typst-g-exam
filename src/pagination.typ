#import"./global.typ": *

#let __g-questions-pages(
  items,
) = {
      layout(size =>
      {
        context {
          // let page-height = page.height /*- measure(page.header).height*/ - measure(page.footer).height - page.margin.top.length //- page.margin.bottom.length
          // [#page.width]
          let page-height = page.height - measure(width: size.width, page.header).height - measure(width: size.width, page.footer).height - page.margin.top.length
          // let page-height = page.height - measure(page.header).height - page.margin.top.length
          // let page-height = page.height - measure(page.footer).height
          // let page-height = page.height
          // let page-height = size.height - measure(page.header).height - measure(page.footer).height //- page.margin.top.length
          // let page-height = size.height
          // let page-height = 629.29pt
          let page-height = 620.29pt
          // let page-height = page.height
          let measure-items = items.map(item => measure(width: size.width, item))
          // box(width: 10%, height: page-height, fill:blue)[aa]
          // box(width: 10%, height: size.height, fill:green)[]
          // box(width: 10%, height: 650.94pt, fill:red)[aa]
          // box(width: 10%, height: 620.94pt, fill:orange)[aa]
          // [ \ ]
          // [#size.height \ ]
          // [#page.height \ ]
          // [#measure(page.header).height \ ]
          // [#measure(page.footer).height \ ]
          // [#page.margin.top.length \ ]

          // [\ #page-height \ ]

          // let page-height = 650.94pt

          //  for item in items {
          //   [#measure(width: size.width, item) \ ]
          //  }
          // for item in items {
          //   [---- inicio  \ ]
          //   let aa = block(item)
          //   let bb = measure(aa)
          //   [#bb]
          //   [---- fin \ ]
          //  }

          // let page-height = page.height - page.margin.top.length //- page.margin.bottom.
          // [#page.height \ ]
          // [#page.margin \ ]
          // [#measure(page.header) \ ]
          // [#measure(page.footer) \ ]
          // [page-height: #page-height \ ]
          // [#here().position().y]
          // [page.footer-descent: #page.footer-descent - #page.footer-descent.to-absolute() - #type(page.footer-descent)]
          // [#page.footer.location()]
          //  let page-height = size.height - here().position().y
          //  [page-height: #page-height \ ]
          //  [#page-remains]
          
          // let page-height = 692pt
          // [#type(page.header)]
          // layout(layout-size => {
          // let aa = place(rect(width: 100%, height: 100%))
          // let layout-size = measure(aa)
          // [layout-size: #layout-size - #type(layout-size)]

          let item = [#items.at(0) \ ]
          item

          // let size-items = measure(item)
          let height-accumulated = measure-items.at(0).height // size-items.height
          // [+++ #height-accumulated ++ #page-height +++ \ ]

          let i = 1
          while i < items.len() {           
            // [#i \ ]
            
            // while height-accumulated > page.height {
            //   height-accumulated = height-accumulated - page-height
            // }

            let next-item = [#items.at(i) \ ]
            // let size-next-items = measure(next-item)
            // [size-next-items: #size-next-items \ ]

            let measure-item-height = measure-items.at(i).height
            height-accumulated = height-accumulated + measure-items.at(i).height
            // [+++ #height-accumulated ++ #page-height +++ \ ]
            if height-accumulated > page-height { 
              height-accumulated = measure-item-height
              // [-------------------- \ ]
              colbreak()
            }
            // [#here()]
            // [#here().position()]

            item = next-item
            item
            // [location: #item.location() \ ]
            // [#height-accumulated ++ #page-height \ ]
            i = i + 1
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

  let number-column = calc.max(1, calc.trunc(page.width / items-size-width))

  number-column = calc.max(1, calc.trunc(page.width / items-size-width * (1-0.21 * (number-column - 1))))
  number-column = calc.min(max-columns, number-column)
  number-column = calc.min(items.len(), number-column)

  return (number-column, items-size-heigth, items-size-width)
}  

#let __g-questions-columns(
  max-columns: 10000,
  items,
  ) = {
     layout(size => {
      context {
        // [#type(gutter.to-absolute()) \ ]

        let columns-info = __g-columns-width(size, max-columns, items)
        let number-column = columns-info.at(0)
        let items-size-heigth = columns-info.at(1)
        let items-size-width = columns-info.at(2)

        let items-size-heigth-column = (items-size-heigth / number-column) * 1.05 //* 0.95

        let measure-items = items.map(item => measure(width: size.width, item))

        // for measure-item in measure-items {
        //   [#measure-item \ ]
        // }

        //   // [ \ ]
        //   [number-column: #number-column \ ]
        //   // [page.width: #page.width \ ]

        //   // [#(page.width / items-size-width) \ ]
        //   // [#(page.width / items-size-width * 0.85) \ ]
        //   // [items-size-heigth: #items-size-heigth \ ]   
        //   // [items-size-width: #items-size-width \ ]
          
        //   // [#(page.width/items-size-width) \ ]
        //   [items-size-heigth-column: #items-size-heigth-column \ ]
        //   // [#(page.width / items-size-width * (1-0.2 * 2))]
        // colbreak()
        
        
        columns(number-column, {
          let item = items.at(0)
          [#item]
          let size-item = measure-items.at(0)
          let height-accumulated = size-item.height
          // [height-accumulated: #height-accumulated \ ]
          // [#size-item \ ]
          let i = 1
          while i < items.len() {
            item = items.at(i)
            item
            let size-item = measure-items.at(i)
            height-accumulated = height-accumulated + size-item.height
            // [height-accumulated: #height-accumulated \ ]
            // [#size-item \ ]
          
            if height-accumulated > items-size-heigth-column { 
              // [--- #height-accumulated ---]   
              height-accumulated = 0pt
              colbreak()
            }

            i= i + 1
          }
        })
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

