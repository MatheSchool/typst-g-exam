#import "mod.typ": *

#show: book-page.with(title: "Student Data")

In order for a header in which the student must enter his/her personal data, it must be specified on the
template by means of the "show-student-data" property indicating how you want this box to appear.
Values can be:

- first-page: It will only appear on the first page.
- all-pages: The header will be displayed on all pages.
- odd-pages: It will appear on odd-numbered pages.
- none: The user information box will not appear.

The following example will display student information on the first page.

```typst

#show: exam.with(
    show-student-data: "first-page",
)


```

To display it on all pages

```typst

#show: exam.with(
    show-student-data: "all-page",
)


```

If we want it to be displayed in all odd numbers. This is useful if we print the exam double-sided, as the header will appear on the first page of each sheet.

```typst

#show: exam.with(
    show-student-data: "odd-page",
)


```

== Configuration 

To configure each field of the student information separately, we must configure it in the form of a collection as follows.

```typst

#show: exam.with(
  show-student-data:
  (
    given-name: "odd-page",
    family-name: "odd-page",
    group: false,
    date: "first-page"
  ),
)


```

With this example, the name and family name will appear on the odd and date pages only on the first page and the group does not appear.