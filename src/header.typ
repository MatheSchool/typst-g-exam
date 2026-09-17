#import "global.typ": *

#let __g-student-data(
      page: [],  // first, odd, pair.
      show-student-data: "first-page",
      // show-student-data: (
      //   given-name: first-page,
      //   family-name: first-page,
      //   group: first-page,
      //   date: first-page
      // ),
      show-student-number: 1,
  ) = {
    
  let family-label = [
      #context __g-localization.final().family-name: #box(width: 2fr, repeat[.])
  ]

  let give-label = [
    #context __g-localization.final().given-name: #box(width:1fr, repeat[.])
  ]

  let group-label = [
    #context __g-localization.final().group: #box(width:2.5cm, repeat[.])
  ]

  let date-label = [
    #context __g-localization.final().date: #box(width:4cm, repeat[.])
  ]
  
  if type(show-student-data) != dictionary {
    if type(show-student-data) == array and page != "first" {
      return
    }

    if show-student-data == false {
      return
    }

    if show-student-data == "first-page" and page != "first" {
      return
    }

    if show-student-data == "odd-pages" and not(page == "first" or page == "odd") {
      return
    }

    if show-student-data != "first-page" and page != "first" {
      group-label = []
      date-label = []
    }
  }
  else {
    let family-name-value = show-student-data.at("family-name", default: "first-page")
    let give-name-value =  show-student-data.at("given-name", default: "first-page")
    let group-value = show-student-data.at("group", default: "first-page")
    let date-value = show-student-data.at("date", default: "first-page")

    assert(family-name-value in (none, true, false, "first-page", "all-pages", "odd-pages"), message: "Invalid family-name value in show-student-data")
    assert(give-name-value in (none, true, false, "first-page", "all-pages", "odd-pages"), message: "Invalid give-name-value value in show-student-data")
    assert(group-value in (none, true, false, "first-page", "all-pages", "odd-pages"), message: "Invalid group-value value in show-student-data")
    assert(date-value in (none, true, false, "first-page", "all-pages", "odd-pages"), message: "Invalid date-value value in show-student-data")

    if family-name-value == false or (family-name-value == "first-page" and page != "first") or (family-name-value == "odd-pages" and not(page == "first" or page == "odd")) {
      family-label = []
    }

    if give-name-value == false or (give-name-value == "first-page" and page != "first") or (give-name-value == "odd-pages" and not(page == "first" or page == "odd")) {
      give-label = []
    }
    
    if group-value == false or (group-value == "first-page" and page != "first") or (group-value == "odd-pages" and not(page == "first" or page == "odd")) {
      group-label = []
    }

    if date-value == false or (date-value == "first-page" and page != "first") or (date-value == "odd-pages" and not(page == "first" or page == "odd")) {
      date-label = []
    }
  }

  let i = show-student-number
  while i > 0 {
    family-label
    give-label
    v(1pt)
    i = i - 1
  }
  align(right, {
      group-label
      date-label
    }
  )
} 

#let __show-header = (
    page-number: 1,
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
    show-student-data: "first-page",
    // show-student-data: (
    //   given-name: true,
    //   family-name: true,
    //   group: true,
    //   date: true
    // ),
    show-student-number: 1,
  ) => {
    if (page-number==1) { 
      align(right)[#box(
        width:108%,
        grid(
          columns: (auto, auto),
          gutter:0.7em,        
          align(left + top)[
            #if type(school) == dictionary {
              if(school.at("logo", default : none) != none) {
                set image(height:2.5cm, width: 2.7cm, fit:"contain")
                if(type(school.logo) == content) {
                  school.logo
                }
                else if(type(school.logo) == bytes) {
                  image(school.logo, height:2.5cm, fit:"contain")
                }
                else {
                  assert(type(school.logo) in (none, content, bytes) , message: "school.logo be of type content or bytes.")
                }
              }
            }
          ],
          grid(
            rows: (auto, auto, auto),
            gutter:1em,    
              grid(
                columns: (auto, 1fr, auto),
                align(left  + top)[
                  #if type(school) == dictionary [
                    #school.at("name", default : none) \
                  ]
                  #exam-info.at("academic-period", default:none) \
                  #exam-info.at("academic-level", default:none) \
                ],
                align(center + top)[
                // #exam-info.number #exam-info.content \
                ],
                align(right + top)[
                  #exam-info.at("academic-subject", default: none)  \  
                  #exam-info.at("number", default:none) \
                  #exam-info.at("content", default:none) \
                ],
              ),
              line(length: 100%, stroke: 1pt + gray),
              __g-student-data(
                page: "first", 
                show-student-data: show-student-data, 
                show-student-number: show-student-number,
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
            #if type(school) == dictionary [
              #school.at("name", default : none) \
            ]
            #exam-info.at("academic-period", default: none)  \ 
            #exam-info.at("academic-level", default: none)  \ 
          ], 
          align(center + top)[
            // #exam-info.number #exam-info.content \
          ],
          align(right + top)[
            #exam-info.at("academic-subject", default: none) \
            #exam-info.at("number", default: none) \
            #exam-info.at("content", default: none) \ 
          ]
        )
        line(length: 100%, stroke: 1pt + gray) 
        __g-student-data(
          page: "odd", 
          show-student-data: show-student-data, 
          show-student-number: show-student-number,
        )
    }
    else {
        grid(
          columns: (auto, 1fr, auto),
          gutter:0.3em,
          align(left  + top)[
            #if type(school) == dictionary [
              #school.at("name", default : none) \
            ] 
            #exam-info.at("academic-period", default: none)  \ 
            #exam-info.at("academic-level", default: none)
          ], 
          align(center + top)[
            // #exam-info.number #exam-info.content \
          ],
          align(right + top)[
            #exam-info.at("academic-subject", default: none) \
            #exam-info.at("number", default: none) \
            #exam-info.at("content", default: none) \
          ]
        )
        line(length: 100%, stroke: 1pt + gray)
        __g-student-data(
          page: "pair", 
          show-student-data: show-student-data, 
          show-student-number:  show-student-number,
        )
      }
    } 
  }