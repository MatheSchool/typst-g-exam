#import "./g-command.typ"

#show regex("=\?"): it => {
    let (sugar) = it.text.split()
    g-question[]
  }

#show regex("=\? (.+)"): it => {
    let (sugar, ..rest) = it.text.split()
    g-question[#rest.join(" ")]
  }

#show regex("=\? [[:digit:]] (.+)"): it => {
    let (sugar, point, ..rest) = it.text.split()
    g-question(point:float(point))[#rest.join(" ")]
  }

#show regex("==\?"): it => {
    let (sugar) = it.text.split()
    g-subquestion[]
  }

#show regex("==\? (.+)"): it => {
    let (sugar, ..rest) = it.text.split()
    g-subquestion[#rest.join(" ")]
  }

#show regex("==\? [[:digit:]] (.+)"): it => {
    let (sugar, point, ..rest) = it.text.split()
    g-subquestion(point:float(point))[#rest.join(" ")]
  }

#show regex("=! (.+)"): it => {
    let (sugar, ..rest) = it.text.split()
    g-solution[#rest.join(" ")]
  }