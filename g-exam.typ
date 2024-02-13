#import "@preview/oxifmt:0.2.0": strfmt

#let question-number = counter("question-number")
#let question-point = state("question-point", 0)
#let question-point-position-state = state("question-point-position", left)
#let localization = state("localization",
  (
    grade-table-queston: "Question",
    grade-table-total: "total",
    grade-table-points: "points",
    grade-table-calification: "calification",
    point: "point",
    points: "points",
    page: "Page"
  ))

#let student-data(
  languaje: "en",
  show-line-two: true
) = {
  [Apellidos: #box(width: 2fr, repeat[.]) Nombre: #box(width:1fr, repeat[.])]
  if show-line-two {
    v(1pt)
    align(right, [Grupo: #box(width:2.5cm, repeat[.]) Fecha: #box(width:3cm, repeat[.])])
  }
}

#let grade-table-header(
  decimal-separator: ".",
  languaje: "en"
) = {
      locate(loc => {        
        let end-question-locations = query(<end-question-localization>, loc)
        let columns-number = range(0, end-question-locations.len() + 1)
      
        let question-row = columns-number.map(n => 
          {
            if n == 0 {align(left + horizon)[Pregunta]}
            else if n == end-question-locations.len() {align(left + horizon)[Total]}
            else [ #n ]
          }
        )

        let total-point = 0
        if end-question-locations.len() > 0 { 
          total-point = end-question-locations.map(ql => question-point.at(ql.location())).sum()
        }

        let points = ()
        if end-question-locations.len() > 0 {
          points =  end-question-locations.map(ql => question-point.at(ql.location()))
        }
      
        let point-row = columns-number.map(n => {
            if n == 0 {align(left + horizon)[Puntos]}
            else if n == end-question-locations.len() [
              #strfmt("{0:}", calc.round(total-point, digits:2), fmt-decimal-separator: decimal-separator)
            ]
            else {
              let point = points.at(n)
              [
                #strfmt("{0}", calc.round(point, digits: 2), fmt-decimal-separator: decimal-separator)
              ]
            }
          }
        )

        let calification-row = columns-number.map(n => 
          {
            if n == 0 {
              align(left + horizon)[Calificación]
            }
          }
        )

        align(center, table(
          stroke: 0.8pt + luma(80),
          columns: columns-number.map( n => 
          {
            if n == 0 {auto}
            else if n == end-question-locations.len() {auto}
            else {30pt}
          }),
          rows: (auto, auto, 30pt),
          ..question-row.map(n => n),
          ..point-row.map(n => n),
          ..calification-row.map(n => n),
        )
      )
    }
  )
}

#let question-numbering = (..args) => {
  let nums = args.pos()
  if nums.len() == 1 {
    numbering("1. ", nums.last())
  }
  else if nums.len() == 2 {
    numbering("(a) ", nums.last())
  }
  else if nums.len() == 3 {
    numbering("(i) ", nums.last())
  }
}

#let paint-tab = (point: none) => {
  if point != none {
    let label-point = "puntos"
    if point == 1 {
      label-point = "punto"
    }

    [(#emph[#strfmt("{0}", calc.round(point, digits: 2), fmt-decimal-separator: ",") #label-point])]
  }
}

#let g-question(point: none, body) = {
  question-number.step(level: 1) 
  
  [#hide[]<end-question-localization>]
  question-point.update(p => 
    {
      if point == none { 0 }
      else { point }
    })
  
  locate(loc => {
    let question-point-position = question-point-position-state.final(loc)
  
    if question-point-position == left {
      [#question-number.display(question-numbering) #paint-tab(point:point) #h(0.3em)]
      [
        #body \ \
      ]
    }
    else{
      [
        #place(right, 
          dx: 14%,
          float: false,
          [#h(0.7em) #paint-tab(point: point)]) 
        #question-number.display(question-numbering) 
        #body \ \
      ]
    }
  })
  
}

#let g-subquestion(point: none, body) = {
  question-number.step(level: 2)

  let subquestion-point = 0
  if point != none { subquestion-point = point }
  question-point.update(p => p + subquestion-point )

  locate(loc => {
      let question-point-position = question-point-position-state.final(loc)
    
      if question-point-position == left {
        [ \ ]
        [#h(14pt) #question-number.display(question-numbering) #paint-tab(point: point) #h(0.3em)]
        [
          #body \ \
        ]
      }
      else{ 
        [
          #place(right, 
            dx: 14%,
            float: false,
            [#h(0.7em) #paint-tab(point: point)]) 
          #question-number.display(question-numbering) 
          #body \ \
        ]
      }
    }
  )
}

#let show-clarifications = (clarifications: none) => {
  if clarifications != none {
    let clarifications-content = []
    if type(clarifications) == "content" {
      clarifications-content = clarifications
    }
    else if type(clarifications) == "string" {
      clarifications-content = clarifications
    } 
    else if type(clarifications) == "array" {
      clarifications-content = [
        #for clarification in clarifications [
          - #clarification
        ]
      ]
    }
    else {
      panic("Not implementation clarificationso of type: '" + type(clarifications) + "'")
    }

    rect(
      width: 100%, 
      stroke: luma(120),
      inset:8pt,
      radius: 4pt,
      clarifications-content
    )
    
    v(5pt)
  }
}

#let g-exam(
  author: (
    name: none,
    email: none,
    watermark: none
  ),
  school: (
    name: none,
    logo: none,
  ),
  exam-info: (
    academic-period: none,
    academic-level: none,
    academic-subject: none,
    number: none,
    content: none,
    model: none
  ),
  // date: none auto datetime,
  date: none,
  keywords: none,
  languaje: "en",
  clarifications: none,
  show-studen-data: true,
  show-grade-table: true,
  decimal-separator: ".",
  question-point-position: left,
  body,
) = {
  
  let show-watermark = (
      author: (
          name: none,
          email: none,
          watermark: none
        ),
        school: (
          name: none,
          logo: none,
        ),
        exam-info: (
          academic-period: none,
          academic-level: none,
          academic-subject: none,
          number: none,
          content: none,
          model: none
        ),
      ) => {
        place(
          top + right,
          float: true,
          clearance: 0pt,
          dx:72pt,
          dy:-115pt,
          rotate(270deg,
          origin: top + right,
            {
              if author.at("watermark", default: none) != none {
                text(size:7pt, fill:luma(90))[#author.watermark]
                h(35pt)
              }
              if exam-info.at("model", default: none) != none {
                text(size:8pt, luma(40))[#exam-info.model]
              }
            }
          )
        )
  }

  let document-name = ""
  if exam-info.at("name", default: none) != none { document-name += " " + exam-info.name }
  if exam-info.at("content", default: none) != none { document-name += " " + exam-info.content }
  if exam-info.at("number", default: none) != none { document-name += " " + exam-info.number }
  if exam-info.at("model", default: none) != none { document-name += " " + exam-info.model }

  set document(
    title: document-name.trim(" "),
    author: author.name
  )

  let margin-right = 2.5cm
  if (question-point-position == right) {
    margin-right = 3cm
  }

  set page(
    paper: "a4", 
    margin: (top: 5cm, right:margin-right),
    numbering: "1 / 1",
    number-align: right,
    header-ascent: 20%,
    header:locate(loc => {
        let page-number = counter(page).at(loc).first()
        if (page-number==1) { 
          align(right)[#box(
            width:108%,
            grid(
              columns: (auto, auto),
              gutter:0.7em,        
              align(left + top)[
                #image(school.logo, height:2.5cm, fit: "contain")
              ],
              grid(
                rows: (auto, auto, auto),
                gutter:1em,    
                  grid(
                    columns: (auto, 1fr, auto),
                    align(left  + top)[
                      #school.name \  
                      #exam-info.academic-period \
                      #exam-info.academic-level
                    ],
                    align(center + top)[
                    // #exam-info.number #exam-info.content \
                    ],
                    align(right + top)[
                      #exam-info.at("academic-subject", default: none)  \  
                      #exam-info.number \
                      #exam-info.content 
                    ],
                  ),
                  line(length: 100%, stroke: 1pt + gray),
                  student-data(
                    languaje: languaje,          
                  )
              )
          )
          )]
        }
        else if calc.rem-euclid(page-number, 2) == 1 {
            grid(
              columns: (auto, 1fr, auto),
              gutter:0.3em,
              align(left  + top)[
                #school.name \  
                #exam-info.academic-period \
                #exam-info.academic-level
              ], 
              align(center + top)[
                // #exam-info.number #exam-info.content \
              ],
              align(right + top)[
                #exam-info.at("academic-subject", default: none) \
                #exam-info.number \
                #exam-info.content 
              ]
            )
            line(length: 100%, stroke: 1pt + gray) 
            student-data(
                    languaje: languaje,       
                    show-line-two: false   
                  )
        }
        else {
           grid(
              columns: (auto, 1fr, auto),
              gutter:0.3em,
              align(left  + top)[
                #school.name \  
                #exam-info.academic-period \
                #exam-info.academic-level
              ], 
              align(center + top)[
                // #exam-info.number #exam-info.content \
              ],
              align(right + top)[
                #exam-info.at("academic-subject", default: none) \
                #exam-info.number \
                #exam-info.content \
              ]
            )
            line(length: 100%, stroke: 1pt + gray) 
        }
      } 
    ),

    footer: {
      line(length: 100%, stroke: 1pt + gray) 
      align(right)[
        Página
        #counter(page).display({
          "1 de 1"},
          both: true,
        )
      ]
      // grid(
      //   columns: (1fr, 1fr, 1fr),
      //   align(left)[#school.name],
      //   align(center)[#exam-info.academic-period],
      //   align(right)[
      //     Página 
      //     #counter(page).display({
      //       "1 de 1"},
      //       both: true,
      //     )
      //   ]
      // )

      show-watermark(author: author, school: school, exam-info: exam-info)
    }
  )

  set par(justify: true) 
  set text(font: "New Computer Modern")
  
  question-point-position-state.update(u => question-point-position)

  set text(lang:languaje)

  if show-grade-table == true {
    grade-table-header(
      decimal-separator: decimal-separator,
      languaje: languaje,
      // questions: questions,
    )
    v(10pt)
  }
  
  // show heading.where(level: 1): it => {
  //   set block(above: 1.2em, below: 1em)
  //   set text(12pt, weight: "semibold")
  //   question(point: none)[#it.body]
  // }

  // show heading.where(level: 2): it => {
  //   set text(12pt, weight: "regular")
  //   subquestion(point: none)[#it.body]
  // }


  set par(justify: true) 

  if clarifications != none {
    show-clarifications(clarifications: clarifications)
  }

  body
  
  [#hide[]<end-question-localization>]
  [#hide[]<end-exam>]
}

#let g-explanation(size:8pt, body) = { 
  text(size:size)[$(*)$ #body] 
}