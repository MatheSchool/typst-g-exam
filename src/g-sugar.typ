#import "./g-question.typ": *
#import "./g-solution.typ": *
#import "./g-clarification.typ": *

#let __sugar(content) = {
  show regex("=\?"): it => {
      [--1--]
      let (sugar) = it.text.split()
      g-question[]
    }

  show regex("=\? (.+)"): it => {
      [--2--]
      let (sugar, ..rest) = it.text.split()
      g-question[#rest.join(" ")]
    }

  show regex("=\? [[:digit:]] (.+)"): it => {
      [--3--]
      let (sugar, point, ..rest) = it.text.split()
      g-question(points:float(point))[#rest.join(" ")]
    }

  show regex("==\?"): it => {
    [--4--]
      let (sugar) = it.text.split()
      g-subquestion[]
    }

  show regex("==\? (.+)"): it => {
    [--5--]
      let (sugar, ..rest) = it.text.split()
      g-subquestion[#rest.join(" ")]
    }

  show regex("==\? [[:digit:]] (.+)"): it => {
    [--6--]
      let (sugar, point, ..rest) = it.text.split()
      g-subquestion(points:float(point))[#rest.join(" ")]
    }

  show regex("=! (.+)"): it => {
    [--7--]
      let (sugar, ..rest) = it.text.split()
      g-solution[#rest.join(" ")]
    }

  show regex("=% (.+)"): it => {
    [--8--]
      let (sugar, ..rest) = it.text.split()
      g-clarification[#rest.join(" ")]
    }

  content
}