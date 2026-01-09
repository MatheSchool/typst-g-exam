#import"./global.typ": *

#let __g-questions-pages(
  items,
) = {
      layout(size =>
      {
          let i = 1
          let item = items.at(0)
          while i < items.len() {
            item 
            let next-item = items.at(i)
            
            context {
              let item-position-height = here().position().y
              let next-item-height = measure(width: size.width, next-item).height
              let header-height = measure(width: size.width, page.header).height 
              let footer-height = measure(width: size.width, page.footer).height 
              
              if page.height < item-position-height + next-item-height + footer-height + header-height + 15pt{
                colbreak()
              }
            }
            item = next-item
            i = i + 1
          }
        item
      })
    }
    
/// Automatic adjustment of pages.
/// 
/// *Example:*
/// ```
/// #question()[This is a question]
/// 
/// #questions-pages([
/// #question()[This is a first question]
/// #question()[This is a second question]
/// ```
/// ])
/// 
/// - body (string, content): Body of question and question list.
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
  let item-max-width = 0pt
  let items-size-height = 0pt
  for item in items {
    let item-size = measure(height: size.height, item)
    item-max-width = calc.max(item-max-width, item-size.width)
    items-size-height = items-size-height + item-size.height
  }
  let number-column = calc.trunc((size.width + 40pt) / (item-max-width + 40pt))
  number-column = calc.max(1, number-column)
  number-column = calc.min(max-columns, number-column)
  number-column = calc.min(items.len(), number-column)

  return (number-column, item-max-width, items-size-height)
}

#let __g-questions-columns(
  max-columns: 100,
  items,
  ) = {
    layout(size => {
      context {
        let (number-column, item-max-width, items-size-height) = __g-columns-width(size, max-columns, items)
       
        if number-column > 1 { // one page.
            let column-height =  items-size-height / number-column
            let column-height-accumulated = 0pt
            columns(number-column,
              for item in items {
                let item-height = measure(width: item-max-width, item).height
                column-height-accumulated = column-height-accumulated + item-height 
                item
                if column-height-accumulated >= column-height {
                  column-height-accumulated = 0pt
                  colbreak()
                }
              }
            )
        } else { // one column.         
          let i = 1
          let item = items.at(0)
          while i < items.len() {
            let next-item = items.at(i)
            let next-item-height = measure(width: size.width, next-item).height
            
            item 
            context {
              let header-height = measure(width: size.width, page.header).height 
              let footer-height = measure(width: size.width, page.footer).height 

              let item-position-height = here().position().y
              if page.height < item-position-height + next-item-height + footer-height + header-height {
                colbreak()
              }
            }
            
            item = next-item
            i = i + 1
          }
          item
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
/// ```
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
