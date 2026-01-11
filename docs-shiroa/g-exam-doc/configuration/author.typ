#import "mod.typ": *

#show: book-page.with(title: "Author")

We can indicate the author's information by means of the author parameter and the fields *name*, *email*, *watermak*. 
The name and email will be used as metadata in the pdf file that is generated. The watermark field will appear as a watermark in the lower right corner of the exam, to indicate the author of the exam.

```typ
#show: exam.with(
  author: (
    name: "Carl Friedrich Gauss",
    email: "matheschool@outlook.es",
    watermark: "Teacher: Carl", ),
  ),
```