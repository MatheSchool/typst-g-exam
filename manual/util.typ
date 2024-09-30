#import "/src/lib.typ" as g-exam

/// Make the title-page
#let make-title() = {
  let left-fringe = 39%
  let left-color = blue.darken(30%)
  let right-color = white

  let url = "https://github.com/MatheSchool/typst-g-exam"
  let authors = (
    ([Andrés Jorge Giménez Muñoz], "andres.gimenez@outlook.com"),
  )

  set page(
    numbering: none,
    background: place(
      top + left,
      rect(
        width: left-fringe,
        height: 100%,
        fill: left-color
      )
    ),
    margin: (
      left: left-fringe * 22cm,
      top: 12% * 29cm
    ), 
    header: none,
    footer: none
  )

  set text(weight: "bold", left-color)
  show link: set text(left-color)

  block(
    place(
      top + left,
      dx: -left-fringe * 22cm + 5mm,
      text(3cm, right-color)[g-exam]
    ) +
    text(29pt)[exam template for Typst]
  )
  block(
    v(1cm) +
    text(
      20pt,
      authors.map(v => link(v.at(1), [#v.at(0)])).join("\n")
    )
  )
  block(
    v(2cm) +
    text(
      20pt, 
      link(
        url,
        [Version ] + [#g-exam.version]
      )
    )
  )
  pagebreak(weak: true)
}

/// Make chapter title-page
#let make-chapter-title(left-text, right-text, sub-title: none) = {
  let left-fringe = 39%
  let left-color = blue.darken(30%)
  let right-color = white

  set page(numbering: none, background: {
    place(top + left, rect(width: left-fringe, height: 100%, fill: left-color))
  }, margin: (left: left-fringe * 22cm, top: 12% * 29cm), header: none, footer: none)

  set text(weight: "bold", left-color)
  show link: set text(left-color)

  block(
    place(top + left, dx: -left-fringe * 22cm + 5mm,
          text(3cm, right-color, left-text)) +
    text(29pt, right-text))

  block(
    v(1cm) +
    text(20pt, if sub-title != none { sub-title } else { [] }))

  pagebreak(weak: true)
}


#let def-arg(term, t, default: none, description) = {
  if type(t) == str {
    t = t.replace("?", "|none")
    t = `<` + t.split("|").map(s => {
      if s == "b" {
        `boolean`
      } else if s == "s" {
        `string`
      } else if s == "i" {
        `integer`
      } else if s == "f" {
        `float`
      } else if s == "c" {
        `coordinate`
      } else if s == "d" {
        `dictionary`
      } else if s == "a" {
        `array`
      } else if s == "n" {
        `number`
      } else {
        raw(s)
      }
    }).join(`|`) + `>`
  }

  stack(dir: ltr, [/ #term: #t \ #description], align(right, if default != none {[(default: #default)]}))
}
