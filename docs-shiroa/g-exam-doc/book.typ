#import "@preview/shiroa:0.3.1": *

#show: book

#book-meta(
  title: "g-exam Docs",
  description: "g-exam Documentation",
  repository: "https://github.com/MatheSchool/typst-g-exam",
  authors: ("Andrés Giménez Muñoz",),
  language: "en",
  summary: [ 
    // begin of summary
    #prefix-chapter("introduction/introduction.typ")[Introduction]
    = Configuration
    - #chapter("configuration/configuration.typ")[Configuration]
      - #chapter("configuration/question.typ")[Questions]
      - #chapter("configuration/author.typ")[Author]
      - #chapter("configuration/school.typ")[School]
      - #chapter("configuration/student-data.typ")[Student data]
      - #chapter("configuration/grade-table.typ")[Grade table]
      - #chapter("configuration/exam-info.typ")[Exam info]
      - #chapter("configuration/localization.typ")[Localization]
      - #chapter("configuration/font-type.typ")[Font type]
      - #chapter("configuration/paper-size.typ")[Paper size]
      - #chapter("configuration/clarifications.typ")[Clarifications]
      - #chapter("configuration/draft.typ")[Draft]
     
    = Commands 
    - #chapter("commands/commands.typ")[Commands]
      - #chapter("commands/exam.typ")[Exam]
      - #chapter("commands/question.typ")[Question]
    
    // == Latex Mit
    // - #chapter("latexmit/latexmit.typ")[LaTeX MIT ]
    //   - #chapter("latexmit/latexmit-with-points.typ")[LaTeX MIT with points]
    //   - #chapter("latexmit/latexmit-without-spaces.typ")[LaTeX MIT without spaces]

    // == Examples
    // - #chapter("examples/exam-big-image.typ")[Example]
    
    == About
    - #chapter("introduction/changelog.typ")[Changelog]
    // - #chapter("introduction/about.typ")[About]
    // end of summary
  ],
)

#build-meta(dest-dir: "../dist")

// #get-book-meta()

re-export page template
#import "/docs-shiroa/template/pages.typ": project, heading-reference
#let book-page = project
#let cross-link = cross-link
#let heading-reference = heading-reference