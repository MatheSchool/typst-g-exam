#import "../../src/lib.typ": *

// #set text(costs: (orphan: 100%))

#show: exam.with(
  show-student-data: false,
  show-grade-table: false,
  show-solution: true,
  solution-color: red,
  // draft: true,
)


#questions-pages(
  [
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = x^3 + 5x^2 - 2x + 7)$]
      #solution(color: green)[
        $display(f'(x) = 3x^2 + 10x - 2)$
      ]
    ],
    [
      #subquestion()[$display(f(x) = (4x-3)^2)$]
      #solution(color: orange)[
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
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones trigonometricas:]
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
      ]
    )
  ],
  [
    #question()[Calcula la derivada de las siguientes funciones:]
    #questions-columns(
    [
      #subquestion()[$display(f(x) = (x^2 + 1)^(x))$]
      #solution()[
      $display("Ln"(f(x)) = "Ln"((x^2+1)^x) => "Ln"(f(x)) = x dot "Ln"((x^2+1)) =>)$
      
      $display(["Ln"(f(x))]' = [x dot "Ln"(x^2+1)]' => (f'(x))/(f(x)) = 1 dot "Ln"(x^2+1) + x dot 1/(x^2+1) dot 2x) =>$

      $display((f'(x))/(f(x)) = "Ln"(x^2+1) + (2x^2)/(x^2+1) => f'(x) = f(x) [ "Ln"(x^2+1) + (2x^2)/(x^2+1)]) =>$

      $display(f'(x) = (x^2 + 1)^(x) [ln(x^2 + 1) + (x(2x)/(x^2 + 1))])$
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
  ]
)