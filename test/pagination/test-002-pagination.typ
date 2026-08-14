#set rect(
  width: 100%,
  height: 100%,
  inset: 4pt,
)

#set page(
  // paper: "iso-b7",
  header: rect(fill: aqua)[Header],
  footer: rect(fill: aqua)[Footer],
  number-align: center,
)

#rect(fill: aqua.lighten(40%),
[
  #layout(size =>
  {
    context {
      [size: #size \ ]

      // let aa = here().position()
      [aa: #page.width - #page.height \ ]
      [footer: #measure(page.footer.body).height \ ]
      [header: #measure(page.header) \ ]

      [position: #here().position() \ ]
      [#lorem(100) \ ]

      [position: #here().position() \ ]

      [#query(heading) \ ]
    }
  })

    #layout(size =>
  {
    context {
      [#size \ ]
      [position: #here().position() \ ]
      [#lorem(100) \ ]

      [position: #here().position() \ ]

      [#query(heading) \ ]
    }
  })
])

 

// #set page(margin: (top:34pt))
// #show heading: it => place(top, float: true, [#it <a>])

// #let aa = lorem(200)
// #layout(size =>
//   {
//     context {
//       [#size \ ]
//       // [#measure(width: size.width, page.header)]
//       [page: #page - #type(page) \ ]
//       [here: #metadata(here()) \ ]
//       // [#measure(heading()) \ ]
//       // [#measure(width: size.width, page.header)]
//       [#here().position() \ ]
//       let bb = measure(width: size.width, aa)
//       [#bb \ ]

//       [#query(heading) \ ]
//     }
//   }
// )

// #aa

// #layout(size =>
//   {
//     context {
//       [#size \ ]
//       [#here().position() \ ]
//       lorem(30)
//     }
//   })

// #lorem(500)