#import "./g-question.typ": *
#import "./g-solution.typ": *
#import "./g-clarification.typ": *

#let __sugar(content) = {
  show regex("=\?"): it => {
      let (sugar, ..rest) = it.text.split("?")

      if sugar == "=" {        
        g-question[]
      }
      else {
        [#it]
      }
    }

  show regex("=\?(.+)"): it => {
      let (sugar, ..rest) = it.text.split("?")

      if sugar == "=" {
        g-question[#rest.join("?").trim()]
      }
      else {
        [#it]
      }
    }

  show regex("=(\d+\.?\d*)\?(.+)"): it => {
    let (sugar, ..rest) = it.text.split("?")

    if sugar.starts-with("=") {
      let points = float(sugar.slice(1))
      g-question(points: points)[#rest.join("?")]
    }
    else {
      [#it]
    }
  }

  show regex("==\?"): it => {
      let (sugar, ..rest) = it.text.split("?")

      if sugar == "==" {        
        g-subquestion[]
      }
      else {
        [#it]
      }
    }

  show regex("==\?(.+)"): it => {
      let (sugar, ..rest) = it.text.split("?")

      if sugar == "==" {
        g-subquestion[#rest.join("?").trim()]
      }
      else {
        [#it]
      }
    }

  show regex("==(\d+\.?\d*)\?(.+)"): it => {
    let (sugar, ..rest) = it.text.split("?")

    if sugar.starts-with("==") {
      let points = float(sugar.slice(2))
      g-subquestion(points: points)[#rest.join("?")]
    }
    else {
      [#it]
    }
  }
  
  show regex("=\!"): it => {
      let (sugar, ..rest) = it.text.split("!")

      if(sugar == "=") {        
        g-solution[]
      }
      else {
        [#it]
      }
    }

  show regex("=\!(.+)"): it => {
      let (sugar, ..rest) = it.text.split("!")

      if(sugar == "=") {
        g-solution[#rest.join("!").trim()]
      }
      else {
        [#it]
      }
    }

  show regex("=\%"): it => {
      let (sugar, ..rest) = it.text.split("%")

      if(sugar == "=") {        
        g-clarification[]
      }
      else {
        [#it]
      }
    }

  show regex("=\%(.+)"): it => {
      let (sugar, ..rest) = it.text.split("%")

      if(sugar == "=") {
        g-clarification[#rest.join("%").trim()]
      }
      else {
        [#it]
      }
    }

  content
}