#import "../src/lib.typ": *

#show: g-exam.with(
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
    model: "Model A",
  ),
  
  language: "en",
  decimal-separator: ",",
  // date: "November 21, 2023",
  // show-student-data: "first-page",
  show-student-data: "odd-pages",
  // show-student-data: none,
  show-grade-table: true,
  question-points-position: right,
  question-text-parameters: (size: 22pt, font:"OpenDyslexic"),
  clarifications: (
    [This test must be performed with a blue or black non-erasable pen.],
    [Cheating, talking, getting up from the chair or disturbing the rest of the class can be reasons for withdrawal from the test, which will be valued with a zero.],
    [All operations must appear, it is not enough to just indicate the result.],
  )
)

=2? Calculate the following operations and simplify if possible:

  ==? $display(5/12 dot 9/15=)$
  #v(1fr)

  ==? $display(10 dot 9/15=)$
  #v(1fr)

  ==? $display(5/12 : 4/15=)$
  #v(1fr)

  ==? $display(2 : 5/3 =)$
  #v(1fr)

#pagebreak()

#g-question(points: 2)[Calculate the following operations and simplify if possible:]

  ==? $display(4/11+5/11-2/11=)$
  #v(1fr)

  #g-subquestion[$display(3+2/5=)$]
  #v(1fr)

  #g-subquestion[$display(7/12+2/9=)$]
  #v(1fr)

  #g-subquestion[$display(1-9/13=)$]
  #v(1fr)

#pagebreak()

=2? Calculate the following operations and simplify if possible:

  ==? $display(3/5 - (1-7/10) = )$
  #v(1fr)

  ==? $display((3-5/3) dot (2-7/5) =)$
  #v(1fr)

#pagebreak()

#g-question(points: 2)[Sort the following fractions from highest to lowest:
      \ \
      #align(center, [$ 2/3 ; 3/8 ; 4/6 ; 1/2 $])
      #v(1fr)
]    

#g-question(points: 2)[In a garden we have 20 red, 10 white and 15 yellow rose bushes.]

  #g-subquestion[What fraction does each color represent?]
  #v(1fr)

  #g-subquestion[If we have pruned red rose bushes, what fraction do we have left to prune?]
  #v(1fr)


=2? #lorem(30)

  ==? #lorem(35)
  // #v(1fr)

  ==1? #lorem(130)
  // #v(1fr)
