#import "mod.typ": *

#show: book-page.with(title: "Localization")

= Languages

You can specify the language in which you want the text to appear. To do this, we use the "languaje"
property. It can take the values "en", "es", "de", "fr", "pt", "it", "nl".

```typst
#show: exam.with(
    language: "es",
)
```

= Customization

To customize an exam text, we can use the localization parameter.
For each parameter you can specify the indicated content, for example by indicating text in bold, italics or a different size.

```typst

  localization: (
    grade-table-queston: [Question],
    grade-table-total: [Total],
    grade-table-points: [Points],
    grade-table-grade: [Grade],
    point: [point],
    points: [points],
    page: [page],
    page-counter-display: [1 of 1],
    family-name: [Surname],
    given-name: [Name],
    group: [Group],
    date: [Date],
    draft-label: [Draft],
  ),

```
== Usefulness of each tag

- grade-table-queston: Tag _question_ on the grade table.
- grade-table-total: Tag _total_ on the grade table.
- grade-table-points: Tag _points_ on the grade table.
- grade-table-grade: Tag _grade_ on the grade table.
- point: A label that indicates the punctuation of the singular question.
- points: A label that indicates the punctuation of the question in the plural.
- page: Label _page_ in the footer of the exam.
- page-counter-display: A label that indicates how to indicate the page number in the footer.
- family-name: Tag _family name_ on the studen information.
- given-name:Tag _given name_ on the studen information.
- group: Tag _group_ on the studen information.,
- date: Tag _data_ on the exam information.,
- draft-label: Watermark that will appear in draft mode.

= Examples

= Modify Watermark in Draft Mode

Modify the text of the draft mode watermark.

```typst

#show: exam.with(
  show-grade-table: true,
  draft: "Trial version",
)

```

Modify the size of the watermark text in draft mode.

```typst

#show: exam.with(
  show-grade-table: true,
  draft: #text(size: 20pt)[Draft],
)

```

= Modify the appearance of the student's information.

If we want the labels of the student's information to appear in bold.

```typst

#show: exam.with(
  localization: (
    grade-table-queston: [*Question*],
    grade-table-total: [*Total*],
    grade-table-points: [*Points*],
    grade-table-grade: [*Grade*],
  ),
)

```

