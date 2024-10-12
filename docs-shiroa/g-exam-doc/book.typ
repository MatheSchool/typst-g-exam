#import "@preview/shiroa:0.1.1": *
#show: book

#book-meta(
  title: "g-exam Docs",
  description: "g-exam Documentation",
  repository: "https://github.com/MatheSchool/typst-g-exam",
  // repository-edit: "https://github.com/Myriad-Dreamin/shiroa/edit/main/github-pages/docs/{path}",
  authors: ("Andrés Giménez Muñoz",),
  language: "en",
  summary: [ // begin of summary
    = Introducction
    #prefix-chapter("introduction.typ")[Introduction]
    - #chapter("configuration.typ")[Configuration]
    - #chapter("commands.typ")[Commands]
      - #chapter("page1.typ")[Página 1]
      - #chapter("page2.typ")[Página 2]
    

    == Latex Mit
    - #chapter("latexmit/latexmit.typ")[LaTeX MIT ]
      - #chapter("latexmit/latexmit-with-points.typ")[LaTeX MIT with points]
      - #chapter("latexmit/latexmit-without-spaces.typ")[LaTeX MIT without spaces]

     == Examples
     - #chapter("examples/exam-big-image.typ")[Example]

     - #chapter("about.typ")[About]
  //   - #chapter("guide/installation.typ")[Installation]
  //   - #chapter("guide/get-started.typ")[Get Started]
  //   - #chapter("guide/faq.typ")[Frequently Asked Questions]
  //   - #chapter(none)[Further reading]
  //   = Reference Guide
  //   - #chapter("cli/main.typ")[Command Line Tool]
  //     - #chapter("cli/init.typ")[init]
  //     - #chapter("cli/build.typ")[build]
  //     - #chapter("cli/serve.typ")[serve]
  //     - #chapter("cli/clean.typ")[clean]
  //     - #chapter("cli/completions.typ")[completions]
  //   - #chapter("format/main.typ")[Format]
  //     - #chapter("format/book.typ")[book.typ]
  //       - #chapter("format/book-meta.typ")[Book Metadata]
  //         - #chapter(none)[Draft chapter]
  //         // - #chapter(none)[chapter with - markers]
  //         // - #chapter(none, "= Introduction")
  //         // - #chapter(none)[#text("= Introduction")]
  //       - #chapter("format/build-meta.typ")[Build Metadata]
  //     - #chapter("format/theme.typ")[Theme]
  //     - #chapter("format/supports.typ")[Typst Support]
  //       - #chapter("format/supports/cross-ref.typ")[Cross Reference]
  //         - #chapter("format/supports/cross-ref-sample.typ")[Cross Reference Sample]
  //       - #chapter("format/supports/embed-html.typ")[Embed Sanitized HTML Elements]
  //         - #chapter("format/supports/multimedia.typ")[Multimedia components]
  //       - #chapter("format/supports/sema-desc.typ")[Semantic Page Description]
  //   - #chapter(none)[For developers]
  //     - #chapter(none)[Typst-side APIs]
  //     - #chapter(none)[shiroa CLI Internals]
  //     - #chapter(none)[Alternative Backends]
  //   // end of summary
  ],
)

#build-meta(
  dest-dir: "../dist"
)

#get-book-meta()

// re-export page template
#import "../template/page.typ": project
#let book-page = project
#let cross-link = cross-link
// #let heading-reference = heading-reference