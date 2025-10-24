#import "../../src/lib.typ": *

#show: exam.with(
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
#set math.cases(reverse: true)

#questions-pages(
  [
    #question()[Si $limits("lím")_(x->1) f(x) = 4$ y $limits("lím")_(x->1) g(x) = 2$, di el valor del límite cuando $x$ tiende a 1 de las siguientes funciones:]

    #columns(2, [
      #subquestion()[$display(f(x)+g(x))$]
      #subquestion()[$display(f(x) dot g(x))$]
      #subquestion()[$display(f(x)/g(x))$]
      #colbreak()
      #subquestion()[$display(f(x)^g(x))$]
      #subquestion()[$display(sqrt(g(x)))$]
      #subquestion()[$display(4f(x)-5g(x))$]
    ])
  ],
  [
    #question()[Si $limits("lím")_(x->2) p(x) = +infinity$, $limits("lím")_(x->2) q(x) = +infinity$, $limits("lím")_(x->2) r(x) = 3$, $limits("lím")_(x->2) s(x) = 0$, di, en los casos en que sea posible, el valor del $limits("lím")_(x->2)$ de las siguientes funcioens:

    \[Recuerda que las expresiones $(+infinity)slash(+infinity)$, $(+infinity)-(+infinity)$, $(0) dot (+infinity)$, $(1)^((+infinity))$, $(0)slash(0)$ son indeterminaciones \].
    ]

    #columns(3, [
      #subquestion()[$display(2p(x) + q(x))$]
      #subquestion()[$display(p(x)-3q(x))$]
      #subquestion()[$display(r(x)/p(x))$]
      #subquestion()[$display(p(x)/p(x))$]
      #subquestion()[$display(s(x) dot q(x))$]
      #colbreak()
      #subquestion()[$display(s(x)^(s(x)))$]
      #subquestion()[$display(p(x)^(r(x)))$]
      #subquestion()[$display(r(x)^(s(x)))$]
      #subquestion()[$display((3-r(x))/s(x))$]
      #subquestion()[$display([r(x)/3]^(s(x)))$]
      #colbreak()
      #subquestion()[$display(r(x)^(p(x)))$]
      #subquestion()[$display(r(x)^(-q(x)))$]
      #subquestion()[$display((r(x)/3)^(p(x)))$]
      #subquestion()[$display((r(x)/3)^(-p(x)))$]
    ])
  ],
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]
    #questions-columns([
      #subquestion(
        solution: [$display(= 5 (+infinity)^2 + 3 (+infinity) + 2) = (+infinity)$]
      )[$display(limits("lím")_(x->+infinity) (5x^2+3x+2))$]   
    ],
    [
      #subquestion(
        solution: [$display(= 2 (+infinity) + sqrt(2 (+infinity)^2 + 6 (+infinity) - 5)) = +infinity$]
      )[$display(limits("lím")_(x->+infinity) (2x+sqrt(2x^2+6x-5)))$]
    ],
    [
      #subquestion(
        solution: [$display(= (3 (+infinity)^2+5 (+infinity)-3)/4 = (+infinity) / 4 = +infinity)$]
      )[$display(limits("lím")_(x->+infinity) (3x^2+5x-3)/4)$]
    ],
    [     
      #subquestion(
        solution: [$display(= sqrt(3 (+infinity)^2 + 5 (+infinity) - 3) / 4 = sqrt(+infinity) / 4 = (+infinity) /4 = +infinity)$]
      )[$display(limits("lím")_(x->+infinity) sqrt(3x^2+5x-3) / 4)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity + e^(+infinity) = (+infinity) + (+infinity) = +infinity)$]
      )[$display(limits("lím")_(x->+infinity) x+e^x)$]
    ],
    [
        #subquestion(
          solution: [$display(= +infinity - e^(infinity) = infinity - infinity = -infinity)$ (Ya que la exponencial crece más rápido que cualquier polinómica, se dice que es un infinito de orden superior.) ]
      )[$display(limits("lím")_(x->+infinity) x - e^x)$]
    ],
    [
      #subquestion(
        solution: [$display(= 2^(+infinity) = +infinity)$]
      )[$display(limits("lím")_(x->+infinity) 2^x)$]
    ],
    [     
      #subquestion(
        solution: [$display(= e^(+infinity) = +infinity)$]
      )[$display(limits("lím")_(x->+infinity) e^x)$]
    ],
    [  
      #subquestion(
        solution: [$display(= limits("lím")_(x->+infinity) 1/2^x = 1/2^(+infinity) = 1/(+infinity) = 0)$ (Ya que $f(x)=1/2$, es una función decreciente que tiende a 0 cuando $x -> +infinity$, o lo que es lo mismo, al ser $1/2 < 1$ el limite $-> 0$).]
      )[$display(limits("lím")_(x->+infinity) (1/2)^x)$]
    ],
    [  
      #subquestion(
        solution: [$display(= limits("lím")_(x->+infinity) (1/2)^(x) = limits("lím")_(x->+infinity) 1/2^x = 1/2^(+infinity) = 1/(+infinity) = 0)$ (Ya que $f(x)=1/2$, es una función decreciente que tiende a 0 cuando $x -> +infinity$, o lo que es lo mismo, al ser $1/2 < 1$ el limite $-> 0$. Por tanto, cuando $x -> -infinity$, el límite $->0$).]
      )[$display(limits("lím")_(x->-infinity) (1/2)^(-x))$]
    ],
    [
      #subquestion(
        solution: [$display(= limits("lím")_(x->+infinity) (1/2)^(-x) = limits("lím")_(x->+infinity) 2^x = 2^(+infinity)= +infinity)$.]
      )[$display(limits("lím")_(x->-infinity) (1/2)^x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= limits("lím")_(x->+infinity) 2^x = 2^(+infinity) = +infinity)$.]
      )[$display(limits("lím")_(x->+infinity) (1/2)^(-x))$]
    ],
    [
      #subquestion(
        solution: [$display(= limits("lím")_(x->+infinity) (1/2)^x = limits("lím")_(x->+infinity) 1/2^x 
        = 1/2^(+infinity) = 1/(+infinity) = 0)$.]
      )[$display(limits("lím")_(x->-infinity) (1/2)^(-x))$]
    ],
    [
      #subquestion(
        solution: [$display(= 0)$. (Ya que al ser $0,5 < 1$, el límite de la exponencial cuando $x -> +infinity$, tiende a 0).]
      )[$display(limits("lím")_(x->+infinity) (0,5)^x)$]
    ],
    [      
      #subquestion(
        solution: [$display(=4/(3(+infinity)^2+5(+infinity)-3) = 4 / (+infinity) = 0)$]
      )[$display(limits("lím")_(x->+infinity) 4/(3x^2+5x-3))$]
    ],
    [
      #subquestion(
        solution: [$display(=4/sqrt(3(+infinity)^2+5(+infinity)-3) = 4 / sqrt(+infinity) = 4 / (+infinity) = 0)$]
      )[$display(limits("lím")_(x->+infinity) 4/sqrt(3x^2+5x-3))$]
    ],
    [
      #subquestion(
      )[$display(limits("lím")_(x->+infinity) sqrt(3x^2+5x-3) - 2x)$]
      #solution()[$display(limits("lím")_(x->+infinity) sqrt(3x^2+5x-3) - 2x = limits("lím")_(x->+infinity) sqrt(3(+infinity)^2+5(+infinity)-3) - 2(+infinity) = sqrt(+infinity) - 2(+infinity) = \ = (+infinity) - 2(+infinity) = (+infinity) - (+infinity) "(Indeterminación).")$.   
      #v(1mm)
      $display(limits("lím")_(x->+infinity) sqrt(3x^2+5x-3) - 2x 
      = limits("lím")_(x->+infinity) ((sqrt(3x^2+5x-3) - 2x)(sqrt(3x^2+5x-3) + 2x)) /(sqrt(3x^2+5x-3) + 2x)
      = limits("lím")_(x->+infinity) ((sqrt(3x^2+5x-3))^2 - (2x)^2) /(sqrt(3x^2+5x-3) + 2x)
      = limits("lím")_(x->+infinity) (3x^2+5x-3 - 4x^2)/(sqrt(3x^2+5x-3) + 2x) 
      = limits("lím")_(x->+infinity) (-x^2 + 5x - 3)/(sqrt(3x^2+5x-3) + 2x)
      = limits("lím")_(x->+infinity) ((-x^2)/(x^2) + (5x)/(x^2) - 3/(x^2))/(sqrt((3x^2)/(x^4)+(5x)/(x^4)-3/(x^4)) + (2x)/(x^2))
      = limits("lím")_(x->+infinity) (-1 + 5/x - 3/x^2)/(sqrt(3/x^2 + 5/x^3 - 3/x^4) + 2/x) 
      = (-1 + 5/(+infinity) - 3/(+infinity)^2)/(sqrt(3/(+infinity)^2 + 5/(+infinity)^3 - 3/(+infinity)^4) + 2/(+infinity)) = (-1 + 0 - 0)/(sqrt(0 + 0 - 0) + 0)
      = (-1+0-0)/(sqrt(0) + 0)
      = (-1)/0^+ = -infinity
      )$]
    ],
    [
      #subquestion(
      )[$display(limits("lím")_(x->-infinity) (3x^2+5x-3)/4)$]

      #solution()[$display(limits("lím")_(x->-infinity) (3x^2+5x-3)/4 = limits("lím")_(x->infinity) (3x^2-5x-3)/4 = ((+infinity)^2 - 5(+infinity)-3)/4 
        = ((+infinity)-(+infinity))/4 = (+infinity)/4= +infinity)$
        
      (El $(+infinity) - (+infinity) = (+infinity)$ porque la potencia de mayor grado es de orden superior).]
    ],
    [     
      #subquestion(
      )[$display(limits("lím")_(x->-infinity) sqrt(3x^2+5x-3)/4)$]

      #solution()[$display(limits("lím")_(x->-infinity) sqrt(3x^2+5x-3)/4 = limits("lím")_(x->infinity) sqrt(3x^2-5x-3)/4 = sqrt((+infinity)^2 - 5(+infinity)-3)/4 
        = sqrt((+infinity)-(+infinity))/4 = sqrt(+infinity)/4= (+infinity)/4 = +infinity)$
        
      (El $(+infinity) - (+infinity) = (+infinity)$ porque la potencia de mayor grado es de orden superior).]
    ],
    [
      #subquestion(
      solution:[$=display(limits("lím")_(x->infinity) (-x)-e^(x)) 
      = (-infinity) - e^(+infinity) = (-infinity)-(+infinity) 
      = (-infinity)$]
      )[$display(limits("lím")_(x->-infinity) x-e^(-x))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= limits("lím")_(x->infinity) 2^x = 2^(+infinity) = +infinity)$]
      )[$display(limits("lím")_(x->-infinity) 2^(-x))$]
    ],
    [  
      #subquestion(
        solution: [$display(= limits("lím")_(x->infinity) e^x = e^(+infinity) = +infinity)$]
      )[$display(limits("lím")_(x->-infinity) e^(-x))$]
    ],
    [  
      #subquestion(
        solution: [$display(= (((+infinity)+3)/(3(+infinity)^2+5))^(2 sqrt(+infinity))
        = ((+infinity)/(+infinity))^(+infinity))$ (Indeterminación $(+infinity)/(+infinity)$)]
      )[$display(limits("lím")_(x->+infinity) ((x+3)/(3x^2+5))^(2 sqrt(x)))$]
    ],
    [
      #solution()[$display(limits("lím")_(x->+infinity) ((x+3)/(3x^2+5))^(2 sqrt(x))
      = limits("lím")_(x->+infinity) ((x/x^2 + 3/x^2)/((3x^2)/x^2 + 5/x^2))^(2 sqrt(x))
      = limits("lím")_(x->+infinity) ((1/x + 3/x^2)/(3 + 5/x^2))^(2 sqrt(x))
      = ((1/(+infinity) + 3/(+infinity)^2)/(3 + 5/(+infinity)^2))^(2 sqrt(+infinity))
      = ((0 + 0)/(3 + 0))^(+infinity)
      = (0/3)^(+infinity) = (0)^(+infinity) = 0)$]
    ]
    )
  ],
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]
    #questions-columns([
      #subquestion(
        solution: [$display(=-2)$]
      )[$display(limits("lím")_(x->+infinity) (2x^3+x^2-1)/(-x^3+3))$]
    ],
    [
      #subquestion(
        solution: [$display(=-infinity)$]
      )[$display(limits("lím")_(x->+infinity) (2x^3+2x+3)/(-x^2+3))$]
    ],
    [     
      #subquestion(
        solution: [$display(=infinity)$]
      )[$display(limits("lím")_(x->-infinity) (4x^3+3x^2-2)/(5-x^2))$]
    ],
    [ 
      #subquestion(
        solution: [$display(=0)$]
      )[$display(limits("lím")_(x->-infinity) (-4x^2+1)/(x^3+x))$]
    ],
    [ 
      #subquestion(
        solution: [$display(=sqrt(2)/2)$]
      )[$display(limits("lím")_(x->+infinity) (sqrt(2x^2+2x+3))/(2x+3))$]
    ],
    [   
      #subquestion(
        solution: [$display(= root(3,-2))$]
      )[$display(limits("lím")_(x->+infinity) (root(3, 2x^2+3)-5)/(sqrt(x+5)+root(3, 1-x^2)))$]
    ],
    [   
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->+infinity) (2x^2+1)/sqrt(x^3+3x-1))$]
    ],
    [   
      #subquestion(
        solution: [$display(= sqrt(2)/2)$]
      )[$display(limits("lím")_(x->+infinity) (sqrt(2x^2+2x+3))/(2x+3))$]
    ],
    [   
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->+infinity) (sqrt(2x^3+2x+3))/(x^2+3))$]
    ],
    [   
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->-infinity) (sqrt(2x^3+2x+3))/(x^2+3))$]
    ],
    [   
      #subquestion(
        solution: [$display(= -2/3)$]
      )[$display(limits("lím")_(x->infinity) 1/(3x^2+1) (3-2x^2))$]
    ])
  ],
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]
    #questions-columns([
      #subquestion(
        solution: [$display(= -1 #h(10cm))$]
      )[$display(limits("lím")_(x->+infinity) x^2/(x-1)- x^2/(x-2))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= -infinity )$]
      )[$display(limits("lím")_(x->-infinity) (3x^4+5)/(x+2) - (4x^3-x)/(x-2))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= -infinity)$]
      )[$display(limits("lím")_(x->-infinity) (3x+5)/2 - (x^2-2)/x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= -infinity)$]
      )[$display(limits("lím")_(x->-infinity) x-sqrt(3x^2+6x-5))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->-infinity) 2x^2-sqrt(2x^2-1))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->+infinity) 2/sqrt(x^2-1) - 2/sqrt(x^2+1))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= -4)$]
      )[$display(limits("lím")_(x->+infinity) (x^3-2x^2)/(x^2-1) - (x^3+2x^2)/(x^2+1))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 9)$]
      )[$display(limits("lím")_(x->-infinity) (x^2+x+2)/(x-3) - (x^2-2x+2)/(x+3))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->+infinity) sqrt(x^2+1) + sqrt(x+1)))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= -infinity)$]
      )[$display(limits("lím")_(x->-infinity) sqrt(1-x) - e^x + e^(-x)))$]
    ])
  ],
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]
    #questions-columns([
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->+infinity) 2x - sqrt(x^2+x-3)) $]
    ],
    [ 
      #subquestion(
        solution: [$display(= -sqrt(2))$]
      )[$display(limits("lím")_(x->+infinity) sqrt(2x^2-3x+5) - sqrt(2x^2+x+1)) $]
    ],
    [ 
      #subquestion(
        solution: [$display(= -3/2)$]
      )[$display(limits("lím")_(x->-infinity) sqrt(x^2-2x+5) - sqrt(x^2+x+5))$] 
    ],
    [ 
      #subquestion(
        solution: [$display(= -infinity)$]
      )[$display(limits("lím")_(x->+infinity) x^(17) - 2^x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->+infinity) e^x - ln(x))$] 
    ],
    [ 
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->infinity) x e^(-x))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->infinity) x^2 sqrt(x/(x^5-3)) )$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->infinity) "Ln"(x) dot 2/x)$]
    ])
  ],
  [
    #question()[Calcula los siguientes límites:]
    #questions-columns([
      #subquestion(
        solution: [$display(= e)$]
      )[$display(limits("lím")_(x->infinity) ((x+4)/(x+3))^(x+3))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->infinity) ((2x^2+5x)/(2x^2+3x))^(x^2+2x))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->infinity) ((x^3+4x)/(x^3+2))^(2x-4))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->infinity) ((2x+3)/(2x-3))^(x^2+3))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= e)$]
      )[$display(limits("lím")_(x->-infinity) ((sqrt(-x)+1)/(sqrt(-x)))^sqrt(-x))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->0^+) root(x, 1+x/(x+1)))$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->infinity) (1+1/2^x)^x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->-infinity) (1+e^x)^x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->infinity) ((4x+1)/(2x))^x)$]
    ],
    [ 
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->infinity) ((4x+1)/(2x^2))^x)$]
    ],
    [
      #subquestion(
        solution: [$display(= 0)$]
      )[$display(limits("lím")_(x->infinity) ((2x+1)/(4x))^x)$]
    ],
    [
      #subquestion(
        solution: [$display(= 1/e^6)$]
      )[$display(limits("lím")_(x->infinity) ((x-2)/(x+1))^(2x))$]
    ],
    [
      #subquestion(
        solution: [$display(= 1/e^3)$]
      )[$display(limits("lím")_(x->infinity) ((x^2+1)/(x^2+x))^(3x-2))$]
    ],
    [      
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->2) ((x+2)/(2x))^(1/(x-2)))$]
    ],
    [
      #subquestion(
        solution: [$display(= 1)$]
      )[$display(limits("lím")_(x->1) ((2x+1)/(x+2))^(1/(x-1)))$]
    ])
  ],
  [
    #question()[Calcula los siguientes límites:]
      #questions-columns([
        #subquestion(
          solution: [$display(= -infinity)$]
        )[$display(limits("lím")_(x->-infinity) ((3x^3+5)/(x+2) - (4x^3 - x)/(x-2)))$]
      ],
      [
        #subquestion(
          solution: [$display(= -1/2)$]
        )[$display(limits("lím")_(x->-infinity) (sqrt(x^2+x) - sqrt(x^2+1)))$]
      ],
      [       
        #subquestion(
          solution: [$display(= 0)$]
        )[$display(limits("lím")_(x->-infinity) ((x^3)/(2x^2+1)) - x/2)$]
      ],
      [
        #subquestion(
          solution: [$display(= -infinity)$]
        )[$display(limits("lím")_(x->-infinity) (2x + sqrt(x^2 + x)))$]
      ],
      [
        #subquestion(
          solution: [$display(= -1)$]
        )[$display(limits("lím")_(x->-infinity) (sqrt(x^2+2x) + x))$]
      ],
      [ 
        #subquestion(
          solution: [$display(= e^6)$]
        )[$display(limits("lím")_(x->-infinity) (1+3/x)^(2x))$]
      ],
      [ 
        #subquestion(
          solution: [$display(= 1/e^5)$]
        )[$display(limits("lím")_(x->-infinity) (1-1/x)^(5x+3))$]
      ],
      [  
        #subquestion(
          solution: [$display(= e^3)$]
        )[$display(limits("lím")_(x->-infinity) ((x^2+x-1)/(x^2+2))^(3x-1))$]
      ]
    )
  ]
)

    // = EvAU
    // #question()[Junio 2006  - Opción A

    // Calcular $display(limits("lím")_(n->infinity) n^2 (a_(n+1) - a_n))$]
