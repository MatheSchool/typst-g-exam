#import "../src/lib.typ": *

#show: exam.with(
  author: (
    name: "Moritz Abraham Stern", 
    email: "matheschool@outlook.es", 
    watermark: "Teacher: Moritz",
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
  show-student-data: "first-page",
  show-grade-table: false,
  question-points-position: right,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)

#question[Given the equation $x^n + y^n = z^n$ for $(x,y,z)$ and $n$ positive integers.] 
#subquestion(points: 10)[For what values of $n$ is the statement in the previous question true?]
#v(1fr)
#subquestion(points: 10)[For $n=2$ there's a theorem with a special name. What's that name?] 
#v(1fr)

#subquestion(points: 10)[What famous mathematician had an elegant proof for this theorem but
there was not enough space in the margin to write it down?].
#v(1fr)

#question(points: 20)[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
#v(1fr)
