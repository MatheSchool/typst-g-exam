#import "@preview/oxifmt:0.2.0": strfmt

#let __g-question-number = counter("g-question-number")
#let __g-question-point = state("g-question-point", 0)
#let __g-question-point-position-state = state("g-question-point-position", left)
#let __g-question-text-parameters-state = state("question-text-parameters:", none)

#let __g-localization = state("localization")
#let __g-show-solution = state("g-show-solution", false)

#let __g-question-numbering(..args) = {
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

#let __g-paint-tab(point: none, loc: none) = {
  if point != none {
    let label-point = __g-localization.final(loc).points
    if point == 1 {
      label-point = __g-localization.final(loc).point
    }

    [(#emph[#strfmt("{0}", calc.round(point, digits: 2), fmt-decimal-separator: ",") #label-point])]
  }
}