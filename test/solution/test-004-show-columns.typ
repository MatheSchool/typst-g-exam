#import "../../src/lib.typ": *


#show: exam.with(
  language: "es",
  decimal-separator: ",",
  date: datetime(year: 2025, month: 9, day: 1),
  show-student-data: false,
  show-grade-table: false,
  show-solutions: true,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)
// #set math.cases(reverse: true)

#questions-pages(  
  [
    #question()[Calcula el valor de los siguientes límites, si existieran:]

    #questions-columns(max-columns: 3, [
      #subquestion()[$display(limits("lím")_(x->1) (3x^3-9x^2+6)/(x+1))$]
      #solution()[
        $limits("lím")_(x->1)(3x^3 - 9x^2 + 6) / (x + 1)
        = (3(1)^3 - 9(1)^2 + 6) / (1 + 1)
        = (3 - 9 + 6) / 2
        = 0 / 2
        = 0$
      ]
      #subquestion(
        solution: [$display(=3)$]
      )[$display(limits("lím")_(x->-2) sqrt(3x^2-8)/(x+2))$]

      #subquestion(
        solution: [$display(=+infinity)$]
      )[$display(limits("lím")_(x->0)1000/x^2)$]

      #subquestion(
        solution: [$display(= +infinity)$]
      )[$display(limits("lím")_(x->0^+) 1/x^3)$]

      #subquestion(
        solution: [$display(= -infinity)$]
      )[$display(limits("lím")_(x->0^-) 1/x^3)$]

      #subquestion(
        solution: [$display(exists.not)$ (ya que el límite lateral por la izquierda es $-infinity$ y por la derecha $+infinity)$.]
      )[$display(limits("lím")_(x->0) 1/x^3)$]

      #subquestion(
        solution: [$display(=-infinity)$]
      )[$display(limits("lím")_(x->0^+) -1/x^3)$]

      #subquestion(
        solution: [$display(=+infinity)$]
      )[$display(limits("lím")_(x->0^-) -1/x^3)$]

      #subquestion(
        solution: [$display(exists.not)$ (ya que el límite lateral por la izquierda es $-infinity$ y por la derecha $-infinity)$.]
      )[$display(limits("lím")_(x->0) -1/x^3)$]

      #subquestion(
        solution: [$display(=-infinity)$]
      )[$display(limits("lím")_(x->0) -10/(x^2))$]

      #subquestion(
        solution: [$display(=0)$]
      )[$display(limits("lím")_(x->1^+) sqrt(x^2+2x-3))$]

      #subquestion(
        solution: [#h(0.1cm) $display(exists.not)$]
      )[$display(limits("lím")_(x->1^-) sqrt(x^2+2x-3))$]
      #solution()[
      $display(limits("lím")_(x -> 1^-) sqrt(x^2 + 2x - 3)
        = limits("lím")_(x -> 1^-) sqrt((x + 3)(x - 1)))$

        Cuando $x->1^-, (x - 1) < 0$
        ⇒ El argumento de la raíz es negativo
        ⇒ El límite no existe cuando $x->1^-$.
      ]

      #subquestion(
        solution: [#h(0.1cm) $display(exists.not)$ ya que el límite lateral por la izquierda no existe.]
      )[$display(limits("lím")_(x->1) sqrt(x^2+2x-3))$]

      #subquestion(
        solution: [$display(=-infinity)$]
      )[$display(limits("lím")_(x->1^+) ln(x^2+2x-3))$]

      #subquestion(
        solution: [
          $display(limits("lím")_(x -> 1^-) ln(x^2 + 2x - 3)
            = limits("lím")_(x -> 1^-) ln((x + 3)(x - 1)))$

          Cuando $x->1^-, (x - 1) < 0$
          ⇒ El argumento de la raíz es negativo
          ⇒ El límite no existe cuando $x->1^-$.
        ]
      )[$display(limits("lím")_(x->1^-) ln(x^2+2x-3))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->1) ln(x^2+2x-3))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2^+) 1/root(4, x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2^-) 1/root(4, x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2) 1/root(4, x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2^+) 1/ln(x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2^-) 1/ln(x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2) 1/ln(x^4-16))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2) 1/sqrt(x^2+x-6))$]

      #subquestion(
        solution: [$display(=)$]
      )[$display(limits("lím")_(x->2) 1/ln(x^2+x-6))$]

    ])
  ],
// [
//   #question()[Resuelve los siguientes limites comparando infinitos:]

//   #clarification("Este tipo de límite en un examen es recomendable que se resuelvan por L'Hôpital.")
//   #questions-columns([
//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^+) x/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^-) x/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0) x/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^+) (ln x)/x)$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^-) (ln x)/x)$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0) (ln x)/x)$]
    

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^-) sqrt(x)/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0^+) sqrt(x)/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0) sqrt(x)/(ln x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->0) e^x/sqrt(x))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->1) e^x/sqrt(x-1))$]
    
//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->1) e^x/sqrt(x-1))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->1) e^x/sqrt(x^2-1))$]

//     #subquestion(
//       solution: [$display(=)$]
//     )[$display(limits("lím")_(x->1) e^x/ln(x^2-1))$]

//   ])
// ],
// // #question()[Resuelve los siguientes limites observando la gráfica de las funciones y comparando infinitos:]

// // #clarification("Este tipo de límite en un examen, es recomendable que se resuelvan por L'Hôpital.")
// // #columns(2, [
// //   #subquestion()[$display(limits("lím")_(x->(pi/2)^+) (1+tan(x))/cos(x))$]
// //   #subquestion()[$display(limits("lím")_(x->(pi/2)^-) (1+tan(x))/cos(x))$]
// //   #subquestion()[$display(limits("lím")_(x->pi/2) (1+tan(x))/cos(x))$]

// //   #colbreak()
// //   #subquestion()[$display(limits("lím")_(x->0) (tan(x) dot (1-cos(x))) / (x^3))$]
// //   #subquestion()[$display(limits("lím")_(x->1) ("sen"(x-1))/(x^2-1))$]

// //   #subquestion()[$display(limits("lím")_(x->0) ("sen"(2x)/x))$]
// // ])
// [
// #question()[Si $limits("lím")_(x->a) f(x)=-2$, $limits("lím")_(x->a) g(x)=2$ y $limits("lím")_(x->a) h(x)=5$] 

// #columns(2, [
//   #subquestion()[$display(limits("lím")_(x->a) [2f(x) - 2g(x) + h(x)])$]

//   #subquestion()[$display(limits("lím")_(x->a) 12/(f(x)+g(x)))$]

//   #colbreak()

//   #subquestion()[$display(limits("lím")_(x->a) sqrt(f(x)^2 + g(x)^2))$]

//   #subquestion()[$display(limits("lím")_(x->a) [f(x)/g(x) - (f(x) + g(x))/h(x)]) $]

// ])
// ],
// [
// #question()[Determina los siguientes límites de funciones distinguiendo, si es necesario, los dos límites laterales.]
// #columns(2, [
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->0) (3x^4)/(x^3+x^2))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->2) (x-2)/(x^2-4) - (x^2-4)/(x-2) )$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->3) (2x+1)/(3-x))$]  

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->4) (x^2+x-20)/(x^2-7x+12))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->-4) (x^2-7x+16)/(x^2-2x-24))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->1) (x-1)/(x^2+1))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->1) (x^2+1)/(x-1))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->3) (x^2-9)/(x^2-4))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->3) (x^2-x-6)/(x^2+4x-21))$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->1) (x^4-x^3-3x^2+5x-2)/(x^2-2x+1))$]

//   #colbreak()
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->-1) (x^3-2x^2+2x+5)/(x^2-6x-7))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->4) (x^3 - x^2 - 14 x + 8)/(x^4 - 2 x^3 - 11 x^2 + 12 x))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->0) (x^2-5x+2)/(x^2+2x) - (x^3+2x+1)/(x^3+x))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->1) (x^2-2x+1)/(x^4-x^3-3x^2+5x-2))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->-1) [(x+1)(3x+2)/(x^3+x^2)])$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->2) (x^2-4)/(x^3-8))$]
  
//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->-4) (x^3+3x^2-24x-80)/(x^2+x-12) )$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->1) [2/(x-1)^2-1/(x(x-1))])$]

//   #subquestion(
//     solution: [$display(=)$]
//   )[$display(limits("lím")_(x->2) [3/(x^2-5x+6)-1/(x-2)])$]

// ])
// ],
// [
//   #question()[Determina los siguientes límites de funciones distinguiendo, si es necesario, los dos límites laterales.]
//     #columns(2, [
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->sqrt(5)) (x-sqrt(5)) / (x^2-5))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->5) (x^2-25) / (sqrt(x)-sqrt(5)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->3) (x^2-3x)/(2-sqrt(2x-2)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) (sqrt(1-x)-1)/x)$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->3) (sqrt(x+1)-2)/(x-3))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->2) (x^2-4)/(3-sqrt(x+7)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4) (2-sqrt(x))/(3-sqrt(x+5)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4) (sqrt(6+x)-2)/(1-sqrt(3+x)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->-3) sqrt(x^2+2x-3)/root(3, x^3+3x^2))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->1) root(4, x^3-x)/sqrt(x^2+x-2))$]
//       ]
//     )
//   ],
//   [
//     #question()[Dada la función,
//         $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
//                     & x/(x-2) &"si" & x < 1,
//                     & 2x-1 &"si" & 1<=x< 4,
//                     & sqrt(x) + x +1 &"si" & x>=4
//                   ) $ 
//     Calcula:
//     ]
//     #columns(4, [
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->1^-) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->1^+) f(x))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->1) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4^-) f(x))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4^+) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4) f(x))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->2) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->5) f(x))$]

//     ])
//   ],
//   [
//     #question()[Dada la función,
//         $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
//                     & e^x &"si" & x <= 0,
//                     & 1-x^2 &"si" & 0 < x < 2,
//                     & 3/(x-3) &"si" & x>2
//                   ) $ 
//     Calcula:
//     ]
//     #columns(4, [
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->-infinity) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) f(x))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->2) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->3) f(x))$]
      
//       #colbreak()
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->4) f(x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->+infinity) f(x))$]

//     ])
//   ],
//   [
//     #question()[Determina los siguientes límites de funciones distinguiendo.]
//     #questions-columns([
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->-1) ((3-2x)/(x^2+1))^(x/(x+3)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->7) ((x^2-7x+4)/(x-3))^((x+1)/(x-7)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) ((x^2+1)/(2x+1))^(1/x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) ((2x^2-x-1)/(7-x))^(1/(x-2)))$]

//     ])
//   ],
//   [
//     #question()[Determina los siguientes límites de funciones distinguiendo.]
//     #columns(2, [
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->-1) ((3-2x)/(x^2+1))^(x/(x+3)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->7) ((x^2-7x+4)/(x-3))^((x+1)/(x-7)))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) ((x^2+1)/(2x+1))^(1/x))$]
      
//       #subquestion(
//         solution: [$display(=)$]
//       )[$display(limits("lím")_(x->0) ((2x^2-x-1)/(7-x))^(1/(x-2)))$]

//     ])
//   ]
)