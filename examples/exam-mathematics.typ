#import "../src/lib.typ": *

#show: exam.with(
  author: (
    name: "Farkas Bolyai, August Möbius,", 
    email: "matheschool@outlook.es", 
    watermark: "Teacher: Möbius",
  ),
  school: (
    name: "Sunrise Secondary School",
    logo: read("./logo.png", encoding: none),
  ),
  exam-info: (
    academic-period: "Academic year 2023/2024",
    academic-level: "1st Secondary Education",
    academic-subject: "Mathematics",
    number: "2nd Assessment 1st Exam",
    content: "Radicals and fractions",
    model: "Model A"
  ),
  
  language: "en",
  decimal-separator: ",",
  date: datetime(day:21, month: 12, year: 2023),
  // show-student-data: "first-page",
  show-student-data: "odd-pages",
  // show-student-data: none,
  show-grade-table: true,
  question-points-position: right,
  clarifications: (
    [This test must be performed with a blue or black non-erasable pen.],
    [Cheating, talking, getting up from the chair or disturbing the rest of the class can be reasons for withdrawal from the test, which will be valued with a zero.],
    [All operations must appear, it is not enough to just indicate the result.],
  )
)

#question(points: 2)[Calculate the following operations and simplify if possible:
  #subquestion[$display(5/12 dot 9/15=)$]
  #v(1fr)

  #subquestion[$display(10 dot 9/15=)$]
  #v(1fr)

  #subquestion[$display(5/12 : 4/15=)$]
  #v(1fr)

  #subquestion[$display(2 : 5/3 =)$]
  #v(1fr)
]
#pagebreak()

#question(points: 2)[Calculate the following operations and simplify if possible:
  #subquestion[$display(4/11+5/11-2/11=)$]
  #v(1fr)

  #subquestion[$display(3+2/5=)$]
  #v(1fr)

  #subquestion[$display(7/12+2/9=)$]
  #v(1fr)

  #subquestion[$display(1-9/13=)$]
  #v(1fr)
]
#pagebreak()

#question(points: 2)[Calculate the following operations and simplify if possible:
  #subquestion[$display(3/5 - (1-7/10) = )$]
  #v(1fr)

  #subquestion[$display((3-5/3) dot (2-7/5) =)$]
  #v(1fr)
]
#pagebreak()

#question(points: 2)[Sort the following fractions from highest to lowest:
      \ \
      #align(center, [$ 2/3 ; 3/8 ; 4/6 ; 1/2 $])
      #v(1fr)
]    

#question(points: 2)[In a garden we have 20 red, 10 white and 15 yellow rose bushes.
  #subquestion[What fraction does each color represent?]
  #v(1fr)

  #subquestion[If we have pruned red rose bushes, what fraction do we have left to prune?]
  #v(1fr)
]

#question(points: 2)[#lorem(30)
  #subquestion[#lorem(35)]
  // #v(1fr)

  #subquestion(points: 1)[#lorem(130)]
  // #v(1fr)
]
