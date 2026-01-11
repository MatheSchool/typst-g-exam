#import "mod.typ": *

#show: book-page.with(title: "School")

We can indicate the name of the school and a logotope with the field school. These will appear at the head of the exam.

The logo must be a valid image, which can be displayed by typst.

```typst

#show: exam.with(
  school: (
  school: (
    name: "Sunrise Secondary School",
    logo: read("./logo.png", encoding: none),
  ),
)


```