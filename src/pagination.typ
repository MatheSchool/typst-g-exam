#import"./global.typ": *

#let __g-questions-pages(
  items,
) = {
      layout(size =>
      {
        // let footer-position = __g-footer-position.final()
        // context {
          // let margins = __g_page-margin()
          // let g-footer-locations = query(<footer>)
          // let footer-position = __g-footer-position.get()
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
              
              // let footer = query(<footer>)
              // let footer-y = locate(footer).position().y
              // let next-item-height2 = measure(width: page.width, next-item).height

              // if i == 14 {
              // place(right, dx:70pt, [
              //   size: #size \
              //   // #here().position() \
              //   // margins: #margins \
              //   page: (#page.width, #page.height) \
              //   // page: #page.margin \
              //   // footer-position: #footer-position \
              //   header-height: #header-height \
              //   footer-height: #footer-height \
              //   next-item-height: #next-item-height \
              //   // next-item-height2: #next-item-height2 \   
              //   // page.height: #page.height \  
              //   item-position-height: #item-position-height \
              //   // margins.top: #margins.top \
              //   // margins.bottom: #margins.bottom \
              //   #(item-position-height + next-item-height + footer-height + header-height)
              // ])
              // }
              // if next-item-height > page.height - item-position-height + margins.top - margins.bottom {
              // if page.height - margins.bottom < item-position-height + next-item-height /*and i !=14*/ {
              // if  size.height < item-position-height + next-item-height {
              // [#footer-position]
              if page.height < item-position-height + next-item-height + footer-height + header-height {
                // [#footer-position]
                colbreak()
              }
            }
            item = next-item
            i = i + 1
          }
        item
      })
      // }
      // )
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
  let items-size-width = 0pt
  let items-size-heigth = 0pt
  for item in items {
    let item-size = measure(height: size.height, item)
    items-size-width = calc.max(items-size-width, item-size.width)
    items-size-heigth = items-size-heigth + item-size.height
  }
  let number-column = calc.trunc((size.width + 40pt) / (items-size-width + 40pt))
  number-column = calc.max(1, number-column)
  number-column = calc.min(max-columns, number-column)
  number-column = calc.min(items.len(), number-column)

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
        let size-height = size.height 

        let num-items-per-column = calc.div-euclid(items.len(), number-column)
        if calc.rem-euclid(items.len(), number-column) > 0 {
          num-items-per-column = num-items-per-column + 1
        }
        
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
          let margins = __g_page-margin()
          
          let i = 1
          let item = items.at(0)
          while i < items.len() {
            let next-item = items.at(i)
            let next-item-height = measure(width: size.width, next-item).height
            
            item 
            context {              
              let item-position-height = here().position().y
              if next-item-height > page.height - item-position-height + margins.top - margins.bottom {
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
