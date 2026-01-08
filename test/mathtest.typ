#let result(
   body) = {
    context {
      rect()[#body]
    }
}

// #show math.equation: it => {
//   show "result": h(-2pt)
//   it
// }

5^2 + 2 / 4^2

$display(2+3 / 5 = result(23^2+2/4^2))$

$ 2+3 / 5 = result( 23^2+2/4^2 ) $

$ 2 + 3/ 5 = cancel(23^2/42 + 3/2) } $