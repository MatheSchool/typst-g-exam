#import "../book.typ": book-page, cross-link

#show: book-page.with(title: "Draft")

We can indicate that the exam is a deletion with the field draf to true.

```typst

#show: exam.with(
  draft: true,
)

```

