#import "./global.typ" : *

// #let __g-school-header = () => {
  
// }

#let __g-show_clarifications = (clarifications: none) => {
  if clarifications != none {
    let clarifications-content = []
    if type(clarifications) == content {
      clarifications-content = clarifications
    }
    else if type(clarifications) == str {
      clarifications-content = clarifications
    } 
    else if type(clarifications) == array {
      clarifications-content = [
        #for clarification in clarifications [
          - #clarification
        ]
      ]
    }
    else {
      panic("Not implementation clarifications of type: '" + type(clarifications) + "'")
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

#let __document-name = (
  exam-info: (
    academic-period: none,
    academic-level: none,
    academic-subject: none,
    number: none,
    content: none,
    model: none
  )) => {
    let document-name = ""
    if exam-info.at("name", default: none) != none { document-name += " " + exam-info.name }
    if exam-info.at("content", default: none) != none { document-name += " " + exam-info.content }
    if exam-info.at("number", default: none) != none { document-name += " " + exam-info.number }
    if exam-info.at("model", default: none) != none { document-name += " " + exam-info.model }

    if type(document-name) == str{
      document-name = document-name.trim(" ")
    }
    
    return document-name
}

#let __read-localization = (
  language: "en",
  localization: (
    grade-table-question: none,
    grade-table-total: none,
    grade-table-points: none,
    grade-table-grade: none,
    point: none,
    points: none,
    page: none,
    page-counter-display: none,
    family-name: none,
    given-name: none,
    group: none,
    date: none,
    draft-label: none,
  )) => {
    let __lang_data = toml("./lang.toml")
    if(__lang_data != none) {
      let __read_lang_data = __lang_data.at(language, default: localization)

      if(__read_lang_data != none) {
        let __read-localization-value = (read_lang_data: none, field: "", localization: none) => {
          let __parameter_value = localization.at(field, default: none)
          if(__parameter_value != none) { return __parameter_value }

          let value = read_lang_data.at(field, default: __g-default-localization.at(field))
          if(value == none) { value = __g-default-localization.at(field)}
          
          return value
        }

        let __grade_table_question = __read-localization-value(read_lang_data: __read_lang_data, field: "grade-table-question", localization: localization)
        let __grade_table_total = __read-localization-value(read_lang_data: __read_lang_data, field: "grade-table-total", localization: localization)
        let __grade_table_points = __read-localization-value(read_lang_data: __read_lang_data, field: "grade-table-points", localization: localization)
        let __grade_table_grade = __read-localization-value(read_lang_data: __read_lang_data, field: "grade-table-grade", localization: localization)
        let __point = __read-localization-value(read_lang_data: __read_lang_data, field:"point", localization: localization)
        let __points = __read-localization-value(read_lang_data: __read_lang_data, field: "points", localization: localization)
        let __page = __read-localization-value(read_lang_data: __read_lang_data, field: "page", localization: localization)
        let __page-counter-display = __read-localization-value(read_lang_data: __read_lang_data, field: "page-counter-display", localization: localization)
        let __family_name = __read-localization-value(read_lang_data: __read_lang_data, field: "family-name", localization: localization)
        let __given_name = __read-localization-value(read_lang_data: __read_lang_data, field: "given-name", localization: localization)
        let __group = __read-localization-value(read_lang_data: __read_lang_data, field: "group", localization: localization)
        let __date = __read-localization-value(read_lang_data: __read_lang_data, field: "date", localization: localization)
        let __draft-label = __read-localization-value(read_lang_data: __read_lang_data, field: "draft-label", localization: localization)

        let __g-localization_lang_data = (
              grade-table-question: __grade_table_question,
              grade-table-total: __grade_table_total,
              grade-table-points: __grade_table_points,
              grade-table-grade: __grade_table_grade,
              point: __point,
              points: __points,
              page: __page,
              page-counter-display: __page-counter-display,
              family-name: __family_name,
              given-name: __given_name,
              group: __group,
              date: __date,
              draft-label: __draft-label
            )

        context __g-localization.update(__g-localization_lang_data)
      }
    }
}

#let __show-watermark = (
    author: (
      name: "",
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
    question-points-position: left,
  ) => {
    let dx = if question-points-position == left or question-points-position == none { 58pt } else { 72pt }
    place(
      top + right,
      float: true,
      clearance: 0pt,
      // dx:72pt,
      dx:dx,
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

#let __show-draft = (
    draft: true
  ) => {
    if draft == false or draft == none {
      return
    }

    let draft-text = none

    if type(draft) == str{
      draft-text = draft
    }

    if type(draft) == content{
      draft-text = draft
    }

    if  draft-text == none {
      draft-text = context __g-localization.final().draft-label
    }

    if draft-text != none {
      place(
        center,
        clearance: 0pt,
        dx: -50pt,
        dy: 330pt,
        rotate(-45deg,
          origin: top + right,
          text(size:70pt, fill:silver)[
            #draft-text
          ]
        )
      )
    }
  }
