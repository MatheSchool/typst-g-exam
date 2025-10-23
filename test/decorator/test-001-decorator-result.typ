#import "../../src/lib.typ": *

// #set math.equation(numbering: "(1)")

#let dd = math.upright("d")
// #let Re = $upright("Re")$
#let result(body) = {
  context {
    let aa = measure(body)
    [#aa]
    // box(fill:red, height: aa.height, width: aa.width, body)
    // rect(outset:2%)[$display(body)$]
    box(stroke: red, width: aa.width + 2pt, height: aa.height + 2pt)[$display(body)$]
  }
}

// #show result: it => {
//   let attachments = it.fields()

//   context {
//       // [#type(body) - #body.len() \ ]
//       // [#base \ ]
//       // [ddd]
//       // [#supplement-items]
//       for items in attachments{
//         [#items \ ]
//         [------- \ ]
//       }
//   }
// }

// #show math.equation: it => {
//   let attachments = it.fields()
//   // [#type(attachments)]
  
//   // let body = attachments.remove("body")
//   let body = attachments.at("body")
  
//   // let child = body.at("child")
//   let body = body.fields()
  

//   // let supplement-items = attachments.at("body")
//   // if supplement-items == none {
//     // [none]
//   // }

//   // [#type(supplement-items) \ ]
//   // [#supplement-items]
//   // [#type(supplement-items) - #supplement-items \ ]
//   // attachments.contains("result")

//   context {
//       [#type(body) - #body.len() \ ]
//       // [#base \ ]
//       // [ddd]
//       // [#supplement-items]
//       for items in body{
//         [#items \ ]
//         [------- \ ]
//       }

      
//   }

//   // it
// }

$display(2/3 + 5/6 = result(2/4))$

-----------------------------

$2/3 + 5/6 = result(2/4)$
