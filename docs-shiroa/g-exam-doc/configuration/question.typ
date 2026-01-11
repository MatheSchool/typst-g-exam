#import "mod.typ": *

#show: book-page.with(title: "Question")

The exam questions will be indicated by the *question* command, in which we can indicate the score of the exam, which will automatically appear in the question table.

If a question has subsubquestion sections, we can indicate them with the *subquestion* command. You can indicate the score in both question and subquestion.

```typst

#show: exam.with()
#question(points: 2)[List prime numbers]
#v(1fr)

#question(points: 1)[Complete the following sentences]

#subquestion[Don Quixote was written by ...]
#v(1fr)

#subquestion[The name of the continent we live on is ...]
#v(1fr)


```

== Question

We can indicate the score of each question by the *points* property of the question.


```typst

#question(points: 2)[List prime numbers]


```

You can also indicate the position where the score appears to the *left* or *right*, using *points-position*.

```typst

#question(points: 2, points-position:right)[List prime numbers]


```

== Subquestion

We can indicate the score of each question by the *points* property of the question. The score of the sub-question will be added to that of the question to which it belongs.


```typst

#subquestion(points: 2)[List prime numbers]


```

You can also indicate the position where the score appears to the *left* or *right*, using *points-position*.

```typst

#subquestion(points: 2, points-position:right)[List prime numbers]


```

== Points position

Using the *question-points-position* property we can indicate the default position of the position where the score appears, *left* or *right*.


```typst

#show: exam.with(
  question-points-position: right,
)


```

== Punctuation Decimal Separator

Depending on the language we use, the decimal separator may change. To specify the decimal sepa-
rator we want to use, we use ‘decimal-separator’ with the values ‘.’ or ‘,’ as follows.

```typst

#show: exam.with(
    decimal-separator: ",",
)


```