#import "mod.typ": *
#import "../../../src/lib.typ": *

#show: book-page.with(title: "Clarifications")

You can indicate clarifications in the exam header, using the clarification field, which accepts string, content, or a collection of string or content.

```typ

#show: exam.with(
 
  clarifications: (
    [Cheating, talking, getting up from the chair or disturbing the rest of the class can be reasons for withdrawing the exam that will be valued with a zero..],
    [All the operations must appear, it is not enough just to indicate the result.],
    [The shortest possible solution must be reached.],
    [It is allowed to use the calculator.],
    [It is not allowed to share material during the exam..],
  )
)


```