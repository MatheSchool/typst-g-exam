/// Box the result of an operation.
#let result(body) = {
  rect(stroke:rgb("#0038A7"))[#body]
}