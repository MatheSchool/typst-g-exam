#import"./global.typ": *

/// Show solution of question.
/// 
/// *Example:*
/// ``` #g-solution(
///    alternative-content: v(1fr)
///  )[
///  I know the demostration, but there's no room on the margin. For any clarification ask Andrew Whilst.
/// ]```
///
///
/// - alternative-content (string, content): Alternate content when the question solution is not displayed.
/// - body (string, content): Body of question solution
#let g-solution(
    alternative-content: none,
    body) = {
      assert(alternative-content == none or type(alternative-content) == "content",
        message: "Invalid alternative-content value")

    let show-solution = context __g-show-solution.final()

    if show-solution == true {
      body
    }
    else {
      hide[#body]
      // alternative-content
    }
}