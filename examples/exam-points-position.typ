#import "../src/lib.typ": *
#import "@preview/cetz:0.4.1"
#import "@preview/cetz-plot:0.1.2"

#show: exam.with()

#question(points: 2, points-position: right)[Question 1]

#v(5cm)

#question[
  Given the graphs of the following systems of linear equations,
  Determines by the position of the lines the type of system according to the number of solutions. \

#columns(2, gutter: 2cm)[
    #subquestion(points: 0.5, points-position: left)[
      #align(center, 
      cetz.canvas(length: 0.7cm, {
        import cetz.draw: *
        import cetz-plot: *
        plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          x-domain: (-5.2, 5.2),
          y-domain: (-5.2, 5.2),
          x-max: 5.2,
          x-min:-5.2,
          y-max: 5.2,
          y-min:-5.2,
          x-grid: "both",
          y-grid: "both",
          x-tick-step: 1,
          y-tick-step: 1,
            {
              plot.add(((0,0),), mark-size: 0,)
            
              plot.add(
                style: (stroke: blue + 2pt),
                domain: (-5.2, 5.2), 
                x=>x + 3
              )

              plot.add(
                style: (stroke: olive + 2pt),
                domain: (-5.2, 5.2), 
                x=>x
              )
            }
          )
        }
      )
    )
  ]
  #colbreak()

  #subquestion(points: 0.5, points-position: right)[
      #align(center, 
      cetz.canvas(length: 0.7cm, {
        import cetz.draw: *
        import cetz-plot: *
        plot.plot(
          size: (10, 10),
          axis-style: "school-book",
          fill: "o" ,
          fill-below: true,
          x-domain: (-5.2, 5.2),
          y-domain: (-5.2, 5.2),
          x-max: 5.2,
          x-min:-5.2,
          y-max: 5.2,
          y-min:-5.2,
          x-grid: "both",
          y-grid: "both",
          x-tick-step: 1,
          y-tick-step: 1,
            {
              plot.add(((0,0),), mark-size: 0,)
          
              plot.add(
                style: (stroke: blue + 2pt),
                domain: (-5.2, 5.2), 
                x=>-x - 4
              )

              plot.add(
                style: (stroke: olive + 2pt),
                domain: (-5.2, 5.2), 
                x=>3
              )
            }
          )
         }
      )
    )
  ]
]
]

#pagebreak()

#question(points: 1)[Question 2]

#question(points: 1.6, points-position: right)[Question 3]

#question()[Question 4]