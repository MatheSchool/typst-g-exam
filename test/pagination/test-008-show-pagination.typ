#import "../../src/lib.typ": *

// #set text(costs: (orphan: 100%))

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
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = x^3 + 5x^2 - 2x + 7)$]
      #solution()[
        $display(f'(x) = 3x^2 + 10x - 2 = )$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (4x-3)^2)$]
      #solution()[
        $display(f'(x) = 2(4x-3) dot 4 = 32x-24)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = sqrt(x^2 + 3x + 2))$]
      #solution()[
        $display(f'(x) = (2x + 3)/(2 sqrt(x^2 + 3x + 2)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = "ln"(5x^2 + 3x + 2))$]
      #solution()[
        $display(f'(x) = 1/(5x^2 + 3x + 2) dot (10x+3) = (10x+3)/(5x^2 + 3x + 2))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(2x) + ln(x))$]
      #solution()[
        $display(f'(x) = 2e^(2x) + 1/x)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = 2/(x^2+3))$]
      #solution()[
        $display(f'(x) = (0 dot (x^2 + 3) - 2 dot (2x))/(x^2+3)^2 = - (4x)/(x^2+3)^2 )$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (3x^2 + 2x + 1)/(x - 1))$]
      #solution()[
        $display(f'(x) = ((6x + 2)(x - 1) - (3x^2 + 2x + 1)(1))/(x - 1)^2 = ((6x^2 - 6x + 2x -2) - (3x^2 + 2x + 1))/(x-1)^2 = (3x^2 - 6x - 3)/(x - 1)^2)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = sqrt(e^(3x^2+4)))$]
      #solution()[
        $display(f'(x) = 1/(2 sqrt(e^(3x^2+4))) dot e^(3x^2+4) dot 6x = (e^(3x^2+4) dot 6x)/(2 sqrt(e^(3x^2+4))) = (3x e^(3x^2+4))/( sqrt(e^(3x^2+4))) )$
      ]
    ], 
    [
      #subquestion()[$display(f(x) = root(3, x^3 + x + 1))$]
      #solution()[
        $display(f'(x) = (1/3)(x^3 + x + 1)^(-2/3)(3x^2 + 1) = (3x^2 + 1)/(3 root(3, (x^3 + x + 1)^2)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = ln(sqrt(x^2 + 1)))$]
      #solution()[
      $display(f'(x) = (1/(sqrt(x^2 + 1)))  [(1/2)(x^2 + 1)^(-1/2)](2x) = x/(x^2 + 1))$
      ]
    ],
   
    [
      #subquestion()[$display(f(x) = ln(x^2 + 1) + e^(x^2))$]
      #solution()[
        $display(f'(x) = (1/(x^2 + 1))(2x) + e^(x^2)(2x) = 2x(e^(x^2) + 1/(x^2 + 1)))$
      ]
    ],    
    [
      #subquestion()[$display(f(x) = "ln"("ln"(x)))$]
      #solution()[ 
        $display(f'(x) = (1/ln(x))(1/x) = 1/(x ln(x)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(ln(x^2 + 1)))$]
      #solution()[
        $display(f'(x) = e^(ln(x^2 + 1)) (1/(x^2 + 1))(2x) = (2x e^(ln(x^2 + 1)))/(x^2 + 1) = (2x (x^2 + 1))/(x^2 + 1) = 2x)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (x^2 + 1)^(3x))$]
      #solution()[
        $display("Ln"(f(x)) = "Ln"((x^2 + 1)^(3x)) => "Ln"(f(x)) = 3x dot "Ln"(x^2 + 1) =>)$
        
        $display(["Ln"(f(x))]' = [3x dot "Ln"(x^2 + 1)]' => (f'(x))/(f(x)) = 3 dot "Ln"(x^2 + 1) + 3x dot 1/(x^2 + 1) dot 2x =>)$

        $display((f'(x))/(f(x)) = 3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1) => f'(x) = f(x) [3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1)] =>)$

        $display(f'(x) = (x^2 + 1)^(3x) [3 "Ln"(x^2 + 1) + (6x^2)/(x^2 + 1)])$
      ]
    ],
    [
      #subquestion()[$display(f(x) = "ln"(e^(2x) + x^2))$]
      #solution(color:red)[
        $display(f'(x) = 1/(e^(2x) + x^2) (e^(2x) dot 2 + 2x) = (2e^(2x) + 2x)/(e^(2x) + x^2))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = root(4, ln(x^2 + 1)))$]
      #solution(color:red)[
        $display(f'(x) = (1/4)(ln(x^2 + 1))^(-3/4) (1/(x^2 + 1))(2x) = (2x)/(4 root(4, (ln(x^2 + 1))^3)(x^2 + 1)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (e^x-e^(-x))/2)$]
      #solution(color:red)[
        $display(f'(x) = (e^x + e^(-x))/2))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = sqrt((1+x)/(1-x))))$]
      #solution(color:red)[
        $display(f'(x) = (1/2)((1+x)/(1-x))^(-1/2) ((1-x)(1) - (1+x)(-1))/(1-x)^2 = (1/2)(sqrt((1-x)/(1+x))) (2/(1-x)^2) = 1/((1-x) sqrt((1+x)(1-x))))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = ("ln"(x^2+x))/x^2)$]
      #solution(color:red)[
        $display(f'(x) = ((1/(x^2 + x))(2x + 1) dot x^2 - "ln"(x^2 + x) dot 2x)/(x^4) = ((2x + 1)/(x^2 + x) dot x^2 - 2x "ln"(x^2 + x))/(x^4))$
      ]
    ])
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones trigonométricas:]
    #questions-columns(
      [
        #subquestion()[$display(f(x) = "sen"(x) + "cos"(x))$]
        #solution()[
          $display(f'(x) = "cos"(x) - "sen"(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "sen"(x^4))$]
        #solution()[
          $display(f'(x) = "cos"(x^4) dot 4x^3 = 4x^3 dot"cos"(x^4))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "sen"^4(x))$]
        #solution()[
          $display(f'(x) = 4 dot "sen"^3(x) dot "cos"(x))$
        ]
      ],

      [
        #subquestion()[$display(f(x) = e^(sin(x)))$]
        #solution()[
          $display(f'(x) = e^(sin(x)) cos(x))$
        ]
      ],
      [
        #subquestion()[$display(f(x) = tan(x) + x^2)$]
        #solution()[
          $display(f'(x) = sec^2(x) + 2x)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arcsin"(x) + "arccos"(x))$]
        #solution()[
          $display(f'(x) = 1/sqrt(1 - x^2) - 1/sqrt(1 - x^2) = 0)$
        ]
      ],
      [
        #subquestion()[$display(f(x) = "arctan"(x^2))$]
        #solution()[
          $display(f'(x) = 1/(1 + x^4)(2x) = (2x)/(1 + x^4))$
        ]
      ],
       [
      #subquestion()[$display(f(x) = "ln"(sin(x)))$]
      #solution(color:red)[
        $display(f'(x) = 1/"sen"(x) dot "cos"(x) = "cos"(x)/"sen"(x) = "cotan"(x))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(tan(x)))$]
      #solution(color:red)[
        $display(f'(x) = e^(tan(x)) sec^2(x))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = "arcsin"(x^2))$]
      #solution(color:red)[
        $display(f'(x) = 1/sqrt(1 - x^4) dot 2x = (2x)/sqrt(1 - x^4))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = "arctan"(e^x))$]
      #solution(color:red)[
        $display(f'(x) = 1/(1 + e^(2x)) dot e^x = (e^x)/(1 + e^(2x)))$
      ]
    ],
        [
      #subquestion()[$display(f(x) = e^(sin(x)) + "ln"(tan(x)))$]
      #solution(color:red)[
        $display(f'(x) = e^(sin(x)) cos(x) + 1/tan(x) sec^2(x) = e^(sin(x)) cos(x) + (sec^2(x))/tan(x))$
      ]
    ]
    )
  ],
   [
    #question()[Calcula la derivada de las siguientes funciones en los puntos indicados:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = "sen"(x/2) cos(x/2) "en" x=pi)$]
      #solution()[
        $display(f'(x) = "cos"(x/2) cos(x/2) (1/2) + "sen"(x/2)(-sin(x/2) (1/2)) = (1/2)[ "cos"^2(x/2) - "sen"^2(x/2)])$

        $display(f'(pi) = (1/2)[ "cos"^2(pi/2) - "sen"^2(pi/2)] = 1/2(0-1) = -1/2)$
      ]      
    ],
    [
      #subquestion()[$display(f(x) = x "ln"(x) "en" x=1)$]
      #solution()[
        $display(f'(x) = 1 dot "ln"(x) + x dot (1/x) = "ln"(x) + 1)$

        $display(f'(1) = "ln"(1) + 1 = 0 + 1 = 1)$
      ]      
    ],
    [
      #subquestion()[$display(f(x) = e^(2x) "en" x=0)$]
      #solution()[
        $display(f'(x) = 2e^(2x))$

        $display(f'(0) = 2e^(0) = 2)$
      ]      
    ],
    [
      #subquestion()[$display(f(x) = (x^2 + 1)/(x - 1) "en" x=2)$]
      #solution()[
        $display(f'(x) = ((2x)(x - 1) - (x^2 + 1)(1))/(x - 1)^2 = (2x^2 - 2x - x^2 - 1)/(x - 1)^2 = (x^2 - 2x - 1)/(x - 1)^2)$

        $display(f'(2) = (2^2 - 2 dot 2 - 1)/(2 - 1)^2 = (4 - 4 - 1)/1 = -1)$
      ]      
    ],
    [
      #subquestion()[$display(f(x) = "arctan"(x) "en" x=1)$]
      #solution()[
        $display(f'(x) = 1/(1 + x^2))$

        $display(f'(1) = 1/(1 + 1^2) = 1/2)$
      ]      
    ],
    [
      #subquestion()[$display(f(x) = sqrt(x^2 + x + 1) "en" x=0)$]
      #solution()[
        $display(f'(x) = (1/2)(x^2 + x + 1)^(-1/2)(2x + 1) = (2x + 1)/(2 sqrt(x^2 + x + 1)))$

        $display(f'(0) = (2 dot 0 + 1)/(2 sqrt(0^2 + 0 + 1)) = 1/2)$
      ]   
    ],
    [
      #subquestion()[$display(f(x) = "ln"(sqrt(x + 1)) "en" x=3)$]
      #solution(color:red)[
        $display(f'(x) = 1/(sqrt(x + 1)) (1/2)(x + 1)^(-1/2)(1) = 1/(2(x + 1)))$

        $display(f'(3) = 1/(2(3 + 1)) = 1/8)$
      ]   
    ],
    [
      #subquestion()[$display(f(x) = root(3, x^2 + 1) "en" x=1)$]
      #solution(color:red)[
        $display(f'(x) = (1/3)(x^2 + 1)^(-2/3)(2x) = (2x)/(3 root(3, (x^2 + 1)^2)))$

        $display(f'(1) = (2 dot 1)/(3 root(3, (1^2 + 1)^2)) = 2/(3 root(3, 4)))$
      ]   
    ]
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones, aplicando derivación logarítmica:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = (x^2 + 1)^(x))$]
      #solution()[
      $display("Ln"(f(x)) = "Ln"((x^2+1)^x) => "Ln"(f(x)) = x dot "Ln"((x^2+1)) =>)$
      
      $display(["Ln"(f(x))]' = [x dot "Ln"(x^2+1)]' => (f'(x))/(f(x)) = 1 dot "Ln"(x^2+1) + x dot 1/(x^2+1) dot 2x) =>$

      $display((f'(x))/(f(x)) = "Ln"(x^2+1) + (2x^2)/(x^2+1) => f'(x) = f(x) [ "Ln"(x^2+1) + (2x^2)/(x^2+1)]) =>$

      $display(f'(x) = (x^2 + 1)^(x) [ln(x^2 + 1) + (x(2x)/(x^2 + 1))])$
      ]
    ],
    [
      #subquestion()[$display(f(x) = x^("sen"(x)))$]
      #solution()[
      $display("Ln"(f(x)) = "ln"(x^("sen"(x))) => "ln"(f(x)) = "sen"(x) dot "ln"(x) =>)$
      
      $display(["Ln"(f(x))]' = ["sen"(x) dot "Ln"(x)]' => (f'(x))/(f(x)) = "cos"(x) dot "Ln"(x) + "sen"(x) dot 1/x) =>$

      $display((f'(x))/(f(x)) = "cos"(x) dot "Ln"(x) + ("sen"(x))/x => f'(x) = f(x) ["cos"(x) dot "Ln"(x) + ("sen"(x))/x]) =>$

      $display(f'(x) = x^("sen"(x)) ["cos"(x) dot "Ln"(x) + ("sen"(x))/x])$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (x^2 + 1)^(sqrt(x)))$]
      #solution(color:red)[
        $display("ln"(f(x)) = "ln"((x^2+1)^(sqrt(x))) => "ln"(f(x)) = sqrt(x) dot "ln"((x^2+1)) =>)$
        
        $display(["ln"(f(x))]' = [sqrt(x) dot "ln"(x^2+1)]' => (f'(x))/(f(x)) = (1/(2 sqrt(x))) dot "ln"(x^2+1) + sqrt(x) dot 1/(x^2+1) dot 2x) =>$

        $display((f'(x))/(f(x)) = (1/(2 sqrt(x))) dot "ln"(x^2+1) + (2x sqrt(x))/(x^2+1) => f'(x) = f(x) [ (1/(2 sqrt(x))) dot "ln"(x^2+1) + (2x sqrt(x))/(x^2+1)]) =>$

        $display(f'(x) = (x^2 + 1)^(sqrt(x)) [ (1/(2 sqrt(x))) dot "ln"(x^2+1) + (2x sqrt(x))/(x^2+1)])$
      ]
    ],
    [
      #subquestion()[$display(f(x) = ("sen"(x))^(x^2))$]
      #solution(color:red)[
        $display("ln"(f(x)) = "ln"(("sen"(x))^(x^2)) => "ln"(f(x)) = x^2 dot "ln"("sen"(x)) =>)$
        
        $display(["ln"(f(x))]' = [x^2 dot "ln"("sen"(x))]' => (f'(x))/(f(x)) = 2x dot "ln"("sen"(x)) + x^2 dot 1/"sen"(x) dot "cos"(x)) =>$

        $display((f'(x))/(f(x)) = 2x dot "ln"("sen"(x)) + (x^2 cos(x))/"sen"(x) => f'(x) = f(x) [ 2x dot "ln"("sen"(x)) + (x^2 "cos"(x))/"sen"(x)]) =>$

        $display(f'(x) = ("sen"(x))^(x^2) [ 2x dot "ln"("sen"(x)) + (x^2 "cos"(x))/"sen"(x)])$
      ]
    ],
    [
      #subquestion()[$display(f(x) = e^(sqrt(x^2 + 1)))$]
      #solution(color:red)[
        $display(f'(x) = e^(sqrt(x^2 + 1)) (1/2)(x^2 + 1)^(-1/2)(2x) = (x e^(sqrt(x^2 + 1)))/(sqrt(x^2 + 1)))$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (x^3 + 1)^(root(3, x)))$]
      #solution(color:red)[
        $display("Ln"(f(x)) = "Ln"((x^3 + 1)^(root(3, x))) => "Ln"(f(x)) = root(3, x) dot "Ln"(x^3 + 1) =>)$
        
        $display(["Ln"(f(x))]' = [root(3, x) dot "Ln"(x^3 + 1)]' => (f'(x))/(f(x)) = (1/(3 x^(2/3))) dot "Ln"(x^3 + 1) + root(3, x) dot 1/(x^3 + 1) dot 3x^2 =>)$

        $display((f'(x))/(f(x)) = (1/(3 x^(2/3))) dot "Ln"(x^3 + 1) + (3x^2 root(3, x))/(x^3 + 1) => f'(x) = f(x) [ (1/(3 x^(2/3))) dot "Ln"(x^3 + 1) + (3x^2 root(3, x))/(x^3 + 1)] =>)$

        $display(f'(x) = (x^3 + 1)^(root(3, x)) [ (1/(3 x^(2/3))) dot "Ln"(x^3 + 1) + (3x^2 root(3, x))/(x^3 + 1)])$
      ]
    ]
    )
  ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = x^n)$:]
    #solution()[
      $display(f'(x) = n x^(n-1))$

      $display(f''(x) = n(n-1) x^(n-2))$

      $display(f'''(x) = n(n-1)(n-2) x^(n-3))$

      $display(f^(4)(x) = n(n-1)(n-2)(n-3) x^(n-4))$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = n! x^(n-n) = n!)$
      ]
  ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = "ln"(x))$:]
    #solution()[
      $display(f'(x) = 1/x)$

      $display(f''(x) = -1/x^2)$

      $display(f'''(x) = 2/x^3)$

      $display(f^(4)(x) = -6/x^4)$

      $display(f^(5)(x) = 24/x^5)$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = (-1)^(n-1) dot (n-1)!/x^n)$
      ]
  ],
  [
    #question()[Calcula la derivada enésima $display(f(x) = "sen"(x))$:]
    #solution()[
      $display(f'(x) = "cos"(x) = "sen"(x + pi/2))$

      $display(f''(x) = - "sen"(x) = "sen"(x + pi))$

      $display(f'''(x) = "cos"(x) = "sen"(x + (3pi)/2))$

      $display(f^(4)(x) = "sen"(x) = "sen"(x + 2pi))$

      Por tanto, la derivada enésima es:
      $display(f^(n)(x) = "sen"(x + n dot (pi/2)))$    
    ]   
  ],

  [
    #question()[Para la predicción de la evolución de epidemias se utiliza la función de Gompertz, 
    $ display(f(x) = a e^(-b e^(-c x))) $
     donde a, b y c son constantes positivas. Calcula su derivada:]
    #solution()[
      $display(f'(x) = a dot e^(-b e^(-c x)) dot (-b) dot e^(-c x) dot (-c) = a b c e^(-c x) e^(-b e^(-c x)))$
    ]
  ],
  [#question()[La función logística, curva logística o curva en forma de S es una función matemática que aparece en diversos modelos de crecimiento de poblaciones, propagación de enfermedades epidémicas y difusión en redes sociales. 
    $ display(P(t) = 1/(1+e^(-t))) $   
    Calcula la tasa de crecimiento de la población en función del tiempo:]
    #solution()[  
      $display(P'(t) = (0 dot (1 + e^(-t)) - 1 dot (-e^(-t)))/(1 + e^(-t))^2 = e^(-t)/(1 + e^(-t))^2)$]
  ],
  [#question()[Calcula el valor de m y n para que la función $f(x)$ sea derivable en $x=1$:
     $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                  & m x + 5 & "si" & x <= 2,
                  & n x^2 + x - 1 & "si" & x > 2,
                ) $ ]
    #solution()[
      Para que la función sea derivable en $x=2$, debe ser continua en ese punto y sus derivadas laterales deben coincidir.

      Primero, igualamos los valores de la función en $x=1$:
      $display(m dot 1 + n = 1^2 - 1 => m + n = 0 => n = -m)$

      Ahora, calculamos las derivadas laterales:
      Derivada por la izquierda:
      $display(f'_-(x) = m)$

      Derivada por la derecha:
      $display(f'_+(x) = 2x => f'_+(1) = 2 dot 1 = 2)$

      Igualamos las derivadas laterales:
      $display(m = 2)$

      Sustituyendo en la ecuación para n:
      $display(n = -m => n = -2)$

      Por lo tanto, los valores son:
      $display(m = 2)$
      ]
  ],
  [
    #question()[Indica los valores de $x$ donde la función $f(x)$ es derivable:
     $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                  & 0 & "si" & x < -2,
                  & 1 & "si" & -2 <= x < 1,
                  & x & "si" & 1 <= x < 3,
                  & x^2 - 6x +12 & "si" & x >= 3,
                ) $
    ]
    #solution()[
      La función es derivable en los intervalos abiertos $(-infinity, -2)$, $(-2, 1)$, $(1, 3)$ y $(3, infinity)$.

      Ahora, comprobamos la derivabilidad en los puntos críticos $x=-2$, $x=1$ y $x=3$:

      En $x=-2$:
      La función es continua, pero las derivadas laterales son:
      $display(f'_-(x) = 0)$
      $display(f'_+(x) = 0)$
      Por lo tanto, es derivable en $x=-2$.

      En $x=1$:
      La función es continua, pero las derivadas laterales son:
      $display(f'_-(x) = 0)$
      $display(f'_+(x) = 1)$
      Por lo tanto, no es derivable en $x=1$.

      En $x=3$:
      La función es continua, pero las derivadas laterales son:
      $display(f'_-(x) = 1)$
      $display(f'_+(x) = 2x - 6 => f'_+(3) = 0)$
      Por lo tanto, no es derivable en $x=3$.

      En conclusión, la función es derivable en los intervalos:
      $display((-oo, -2] union (-2, 1) union (1, 3) )$
    ]
  ]
)

