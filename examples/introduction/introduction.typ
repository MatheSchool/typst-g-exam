
#import "@preview/g-exam:0.4.3": *

#show: exam.with(
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
  
  show-student-data: "first-page",
  show-grade-table: true,
  clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
)
#question(points:2.5)[Is it true that $x^n + y^n = z^n$ if $(x,y,z)$ and $n$ are positive integers?. Explain.] 
#v(1fr)

#question(points:2.5)[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
#v(1fr)

#question(points:2)[Compute $ integral_0^infinity (sin(x))/x $ ]
#v(1fr)