#import "mod.typ": *

#show: book-page.with(title: "Paper size")

We can also change the size of the paper. Typst uses DIM A4 by default. If we want to use US Letter size, we can change it from the following shape.

```typst

#set page("us-letter")

#show: exam.with(
)

#question(points: 2)[#lorem(30)]


```