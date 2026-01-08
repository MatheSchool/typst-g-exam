#import "../../src/lib.typ": *

// #set text(costs: (orphan: 100%))

#show: exam.with(
  show-student-data: false,
  show-grade-table: false,
  show-solutions: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)


#set math.cases(reverse: true)
#questions-pages([
#question()[Realiza las siguientes operaciones con monomios:]
  #questions-columns([
    #subquestion(solution:$5x^2$)[$display(2x^2 + 3x^2)=$] 
  ],[
    #subquestion()[$display(3x^2 - 5x^2)=$]
  ],[
    #subquestion()[$display(15x^5 - 10x^5)=$]
  ],[
    #subquestion()[$display(5x^2 -4x^2)=$]
  ],[  
    #subquestion()[$display(3x y^2 + 5 x y^2)=$]
  ],[
    #subquestion()[$display(32x^2 - 4x^2 + 5x^2)=$]
  ],[
    #subquestion()[$display(2z + 7 z)=$]
  ],[
    #subquestion()[$display(5x y - 7x y)=$]
  ],[
    #subquestion()[$display(-4r - 8r)=$]
  ],[
    #subquestion()[$display(5/7 x - 2/7 x)=$]
  ],[
    #subquestion()[$display(5/4 b^5 + 7/4 b^5)=$]
  ],[
    #subquestion()[$display(1/3 x y - 2/5 x y)=$]
  ],[
    #subquestion()[$display(2/5 x + 3/4 x)=$]
  ],[
    #subquestion()[$display(1/3 x - 4/7 x + 2/6 x)=$]
  ],[  
    #subquestion()[$display(2/5 y - 5/2 x)=$]
  ],[
    #subquestion()[$display(2 dot 4x)=$]
  ],[
    #subquestion()[$display(4 dot 8x^2)=$]
  ],[
    #subquestion()[$display(2 dot 4x)=$]
  ],[
    #subquestion()[$display(5x dot 3x)=$]
  ],[
    #subquestion()[$display(3t dot 8t)=$]
  ],[
    #subquestion()[$display(4a dot 2a)=$]
  ],[
    #subquestion()[$display(4x dot (-2x))=$]
  ],[
    #subquestion()[$display(5 alpha + 4 alpha)=$]
  ],[
    #subquestion()[$display(6 beta^2 + 4 beta^2)=$]
  ],[
    #subquestion()[$display(5 delta - 6 delta)=$]
  ]
  )
],[
  #question()[Simplifica lo máximo posible las siguientes expresiones algebraicas:]
  #questions-columns(
    [
      #subquestion(solution:[$5x$])[$2x + 3x=$]
    ],[
      #subquestion(solution:[$2x-1$])[$5x+4-3x-5=$] 
    ],[
      #subquestion()[$2x +3 -3x + 3 + 5x =$]
    ],[
      #subquestion()[$2x^2 + 3 -3x + 3 x^2 + 5x - 4=$]
    ],[
      #subquestion()[$3x^2 + 3x - 2 x^2 + 5x - 2=$]
    ],[
      #subquestion()[$5a - 3a^2 + 5 - 3a + 2=$]
    ],[
      #subquestion()[$alpha + 3 - 5alpha +7=$]
    ],[
      #subquestion()[$3x + 2 - 5x=$]
    ],[
      #subquestion()[$3x + 2x - 5 + 2=$]
    ],[
      #subquestion()[$5x - 2 + 4x -1=$]
    ],[
      #subquestion()[$7x + 3 - 2x + 2=$]
    ],[
      #subquestion()[$9x^2 - 3x  + 2x^2 + 1=$]
    ],[
      #subquestion()[$2x^2 + 3x=$]
    ],[
      #subquestion()[$8x- 4x^2 + 2x - 5=$]
    ],[
      #subquestion()[$-2x + 4x - 2x^2 + 3=$]
    ],[
      #subquestion()[$-x^2 + 2x^3 - 3x + 2=$]
    ],[
      #subquestion()[$x^3 - 2x^2 + 3x^3 + 5x^2=$]
    ],[
      #subquestion()[$4x^2 - 7x + x^2 + 4x - 3x^2 + 4x=$]
    ],[
      #subquestion()[$5x^8 + 2x^4 - 2x^8 + 3x^4=$]
    ],[
      #subquestion()[$5x^3 - 8x^3 + 5=$]
    ],[
      #subquestion()[$9x + 4x - 13x=$]
    ],[
      #subquestion()[$8x^5 - 3x^2 - 3x^2=$]
    ],[
      #subquestion()[$-x^3 + 3x^2 + x^3=$]
    ],[
      #subquestion()[$7y^2 - 4y^2 + 3y + 2=$]
    ],[
      #subquestion()[$4t^2 - 3t + 2t^2 - 5t=$]
    ],[
      #subquestion()[$-z^2 + 5z - 2z^2 - z=$]
    ])
    ], [
      #question()[Simplifica lo máximo posible las siguientes expresiones algebraicas:]
      #questions-columns(
      [
        #subquestion()[$display(x^3 - 2x + 4 + 2x^3 + 4x -5)=$]
      ], [
        #subquestion()[$display(5x y + 3x y^2 - 3x y + 5x y^2)=$]
      ],[
        #subquestion()[$display(2x y - 3x^2y + 3x y + 2x^2y)=$]
      ],[
        #subquestion()[$display(2x^2y + 2y x^2)=$]
      ],[
        #subquestion()[$display(2/3 x^2 - 3/2 x^2)=$]
      ],[
        #subquestion()[$display(2/5 x^2 - 1/3 x + 3/8 x^2 - 2/5 x)=$]
      ],[
        #subquestion()[$display(5/2 x^2 - 6x + 4/5 x^2 + 2x)=$]
      ],[
        #subquestion()[$(3x - 3) - 5x + 2)=$]
      ],[
        #subquestion()[$display((6x + 7) - (8x - 2))=$]
      ],[
        #subquestion()[$display(-(8x^2 + 5) + (3x^2 - x + 2))=$]
      ],[
        #subquestion()[$display((3y^3 - 5y + 2) - (5y^3 +3y - 2))=$]
      ],[
        #subquestion()[$display((6x - 3) - (5x +9))=$]
      ],[
        #subquestion()[$display(5x - [3x + 4x - (5x + 2x)])=$]
      ],[
        #subquestion()[$display(-(4x + 3x - 3) + (5x + 1))=$]
      ],[
        #subquestion()[$-display([3x + (3x + 5x - 3)])=$]
      ],[
        #subquestion()[$display(5 - (3x + 1) - (3x + 2) + (3x - 2))=$]
      ],[
        #subquestion()[$display(3x - (2x - 2x + 3x))=$]
      ],[
        #subquestion()[$display(4(2x - 3))=$]
      ],[
        #subquestion()[$display(5(-3x + 2))=$]
      ],[
        #subquestion()[$display(2(x-5) + 4(2x - 3))=$]
      ],[
        #subquestion()[$display(3(2x^2 - 5) + 2(2x+3))=$]
      ],[
        #subquestion()[$display(-2(x + 5) - 5(x+2))=$]
      ],[
        #subquestion()[$display(2x(4x+2))=$]
      ],[
        #subquestion()[$display(2x(3x + 5) - 3(-2x + 2))=$]
      ],[
        #subquestion()[$display(5(-4x-3) + 2(2-4x))=$]
      ],[
        #subquestion()[$display(5x + 3x(4x +2))=$]
      ],[
        #subquestion()[$display(2/3 x + (2/7 x + 2))=$]
      ],[
        #subquestion()[$display(3/2 x^2 - (3/4 x^2 - 4x + 2/3))=$]
      ],[
        #subquestion()[$display(3/2 x^3 -[2/3 x^3 - (3/2 x^3 + 2x)])=$]
      ],[
        #subquestion()[$display(5/2 x + 3(3/2 x + 2))=$]
      ],[
        #subquestion()[$display(21/5 x^2 + 2/5 x - [3/2 x^2 + (5x + 2)])=$]
      ],[
        #subquestion()[$display(5 alpha + 4 alpha^2 - 3 alpha + 3 alpha^2)=$]
      ],[
        #subquestion()[$display(5 gamma^2 + 3 gamma^2 - 2)=$]
      ])
  ],[
    #question()[Realiza los siguientes productos y simplifica:]
      #questions-columns(
      [
        #subquestion()[$display((x+1)(x+2))=$]
      ],[
        #subquestion()[$display((x-2)(x+5))=$]
      ],[
        #subquestion()[$display((2x-3)(3x+5))=$]
      ],[
        #subquestion()[$display((3x-2)(4x+2))=$]
      ],[
        #subquestion()[$display((2x-5)(2x+3))=$]
      ],[
        #subquestion()[$display(2x+5x(3x+2))=$]
      ],[
        #subquestion()[$display((2x-2)(4x-1)+(2x-5))=$]
      ],[
        #subquestion()[$display((x+2)^2)=$]
      ],[
        #subquestion()[$display((x-2)^2)=$]
      ],[
        #subquestion()[$display((2x+5)^2)=$]
      ],[
        #subquestion()[$display((3x-5)^2)=$]
      ],[
        #subquestion()[$display((x-3)(x+3))=$]
      ],[
        #subquestion()[$display((2x+5)(2x-5))=$]
      ],[
        #subquestion()[$display((2/3x+4/2)(1/2x-1/5))=$]
      ]
      )
  ],
  [
    #question()[Simplifica las siguientes expresiones algebraicas:]
      #questions-columns(
      [
        #subquestion()[$display((5x+5)(2-5x)+(2x-5)(2x+5))=$]
      ],
      [
        #subquestion()[$display((2x+6)(2x-6)+(3x+2)(3x-2))=$]
      ],
      [
        #subquestion()[$display((5x+3)^2 - (2x-2)^2)=$]
      ],
      [
        #subquestion()[$display((3x-5)^2 + (x-2)(x+2))=$]
      ],
      [
        #subquestion()[$display(2x[4x(x-5)]+3x(-4x + 5))=$]
      ],
      [
        #subquestion()[$display(2x[4x(x-5)]- 2x)=$]
      ])
  ]
  ,[
  #question()[Evalua las siguientes expresiones algebraicas para los valores indicados:]
    #questions-columns([
      #subquestion(solution:[$49$])[$display(5x^2 + 3x - 2)$ para $display(x=3)$]
    ],[
      #subquestion()[$display(3x^2 - 2x - 5)$ para $display(x=2)$]
    ],[
      #subquestion()[$display(3x^2 - 2x - 5)$ para $display(x=2)$]
    ],[
      #subquestion()[$display(3x^2 - 2x - 5)$ para $display(x=-2)$]
    ],[
      #subquestion()[$display(3x^2 - 2x - 5)$ para $display(x=0)$]
    ],[
      #subquestion()[$display(3x^2 - 2x - 5)$ para $display(x=-1)$]
    ],[
      #subquestion()[$display(4t^2 - 4t +2)$ para $display(t=3)$]
    ],[
      #subquestion()[$display(5/3 x + 2/3)$ para $display(x=1/5)$]
    ],[
      #subquestion()[$display(2/3 x^2 + 1/5)$ para $display(x=1/4)$]
    ],[
      #subquestion()[$display(4/5 x - 1/5)$ para $display(x=-1)$]
    ],[
      #subquestion()[$display(4x^3 + 5x^2 - 2x + 1)$ para $display(x=2)$]
    ],[
      #subquestion()[$display(5x^2y - 2x + 2y - 1)$ para $display(x=1)$ e $display(y=2)$]
    ],[  
      #subquestion()[$display(5x y + 3)$ para $display(x=2)$]
    ],[
      #subquestion()[$display(theta^2 + 5)$ para $display(theta=3)$]
    ])
],[
#question()[Escribe las siguientes expresiones en notación algebraica:]
 #questions-columns([
  #subquestion()[El doble de un número.]
 ],[
  #subquestion()[La mitad de un número.]
 ],[
  #subquestion()[El doble de un número más su mitad.]
 ],[ 
  #subquestion()[La mitad de un número menos dos.]
 ],[
  #subquestion()[La mitad de un número, menos dos.]
 ],[
  #subquestion()[El triple de la mitad de un número.]
 ],[
  #subquestion()[La mitad del triple de un número.]
  ],[
  #subquestion()[El siguiente número a uno dado.]
  ],[
  #subquestion()[El triple de un número al sumarle siete.]
 ],[
  #subquestion()[Un número par.]
 ],[
  #subquestion()[Un número impar.]
  ]
 )
],[
  #question()[Siendo los polinomios: 

    $display(P[x] = 3x^4+5x^3-2x^2+4x-2)$

    $display(Q[x] = 5x^4-2x^3+5x^2-2x+4)$

    $display(R[x] = 3x^2+2x+3)$

    Calcula:
    #subquestion()[$display(P[x] + Q[x]) = $]
    #subquestion()[$display(P[x] - Q[x]) = $]
    #subquestion()[$display(P[x] dot R[x]) = $]
    #subquestion()[$display(P[x] + Q[x] dot R[x]) = $]
  ]
  ]
)

