#import "global.typ": *

#let __g-grade-table-header(decimal-separator: ".") = {        
  let end-g-question-locations = query(<end-g-question-localization>)
  let columns-number = range(0, end-g-question-locations.len() + 1)

  let question-row = columns-number.map(n => {
      if n == 0 {align(left + horizon)[#text(hyphenate: false, context __g-localization.final().grade-table-question)]}
      else if n == end-g-question-locations.len() {align(left + horizon)[#text(hyphenate: false, context __g-localization.final().grade-table-total)]}
      else [ #n ]
    }
  )

  let total-point = 0
  if end-g-question-locations.len() > 0 { 
    total-point = end-g-question-locations.map(ql => __g-question-point.at(ql.location())).sum()
  }

  let points = ()
  if end-g-question-locations.len() > 0 {
    points =  end-g-question-locations.map(ql => __g-question-point.at(ql.location()))
  }

  let point-row = columns-number.map(n => {
      if n == 0 {align(left + horizon)[#text(hyphenate: false, context __g-localization.final().grade-table-points)]}
      else if n == end-g-question-locations.len() [
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

  let grade-row = columns-number.map(n => 
    {
      if n == 0 {
        align(left + horizon)[#text(hyphenate: false, context __g-localization.final().grade-table-grade)]
      }
    }
  )

  align(center, table(
      stroke: 0.8pt + luma(80),
      columns: columns-number.map( n => 
      {
        if n == 0 {auto}
        else if n == end-g-question-locations.len() {auto}
        else {30pt}
      }),
      rows: (auto, auto, 30pt),
      ..question-row.map(n => n),
      ..point-row.map(n => n),
      ..grade-row.map(n => n),
    )
  )
}
