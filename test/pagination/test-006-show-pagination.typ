#import "../../src/lib.typ": *

#show: exam.with(
  show-student-data: false,
  show-grade-table: false,
  show-solutions: false,
  // draft: true,
  question-points-position: right,
//   question-text-parameters: (size: 14pt, spacing:150%)

  // question-text-parameters: (size: 16pt, spacing:200%, font:"OpenDyslexic")
)

#questions-pages(
  [
  #question()[Calcula el valor de los siguientes límites, si existieran:]

  #questions-columns([
    #subquestion()[$display(limits("lím")_(x->1) (3x^3-9x^2+6)/(x+1))$]
    #solution()[
      $display(limits("lím")_(x->1)(3x^3 - 9x^2 + 6) / (x + 1)
      = (3(1)^3 - 9(1)^2 + 6) / (1 + 1)
      = (3 - 9 + 6) / 2
      = 0 / 2
      = result(0))$
    ]
  ],
  [
    #subquestion(
      solution: [$display(=3)$]
    )[$display(limits("lím")_(x->-2) sqrt(3x^2-8)/(x+2))$]
  ],
  [
    #subquestion(
      solution: [$display(=+infinity)$]
    )[$display(limits("lím")_(x->0)1000/x^2)$]
  ],
  [
    #subquestion(
      solution: [$display(= +infinity)$]
    )[$display(limits("lím")_(x->0^+) 1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(= -infinity)$]
    )[$display(limits("lím")_(x->0^-) 1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(exists.not)$ (ya que el límite lateral por la izquierda es $-infinity$ y por la derecha $+infinity)$.]
    )[$display(limits("lím")_(x->0) 1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(=-infinity)$]
    )[$display(limits("lím")_(x->0^+) -1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(=+infinity)$]
    )[$display(limits("lím")_(x->0^-) -1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(exists.not)$ (ya que el límite lateral por la izquierda es $-infinity$ y por la derecha $-infinity)$.]
    )[$display(limits("lím")_(x->0) -1/x^3)$]
  ],
  [
    #subquestion(
      solution: [$display(=-infinity)$]
    )[$display(limits("lím")_(x->0) -10/(x^2))$]
  ],
  [
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->1^+) sqrt(x^2+2x-3))$]
  ],
  [
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
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$ ya que el límite lateral por la izquierda no existe.]
    )[$display(limits("lím")_(x->1) sqrt(x^2+2x-3))$]
  ],
  [
    #subquestion(
      solution: [$display(=-infinity)$]
    )[$display(limits("lím")_(x->1^+) ln(x^2+2x-3))$]
  ],
  [
    #subquestion(
      solution: [
        $display(limits("lím")_(x -> 1^-) ln(x^2 + 2x - 3)
          = limits("lím")_(x -> 1^-) ln((x + 3)(x - 1)))$

        Cuando $x->1^-, (x - 1) < 0 - delta$
        ⇒ El argumento de la raíz es negativo
        ⇒ El límite no existe cuando $x->1^-$.
      ]
    )[$display(limits("lím")_(x->1^-) ln(x^2+2x-3))$]
  ],
  [
    #subquestion(
      solution: [
        $display(limits("lím")_(x -> 1) ln(x^2 + 2x - 3)
          = limits("lím")_(x -> 1) ln((x + 3)(x - 1)))$

      Cuando $x->1^-, (x - 1) < 0$
        ⇒ El argumento de la raíz es negativo
        ⇒ El límite no existe cuando $x->1^-$.
      ]
    )[$display(limits("lím")_(x->1) ln(x^2+2x-3))$]
  ],
  [
    #subquestion(
      solution: [$display(= +infinity)$]
    )[$display(limits("lím")_(x->2^+) 1/root(4, x^4-16))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->2^-) 1/root(4, x^4-16))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->2) 1/root(4, x^4-16))$]
  ],
  [
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->2^+) 1/ln(x^4-16))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$
      
      Cuando $x < 2 => (x^4-16)<0$ y el $ln$ no existe.
      ]
    )[$display(limits("lím")_(x->2^-) 1/ln(x^4-16))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$
      
      Cuando $x < 2 => (x^4-16) < 0$ y el $ln$ no existe.
      ]
    )[$display(limits("lím")_(x->2) 1/ln(x^4-16))$]
  ],
  [
    #subquestion(
      solution: [$display(exists.not)$

        $display(limits("lím")_(x->2^+) 1/sqrt(x^2+x-6) = limits("lím")_(x->2^+) 1/sqrt((x+3)(x-2)) = 1/sqrt(0) = 1/0 = result(+infinity))$

        $display(limits("lím")_(x->2^-) 1/sqrt(x^2+x-6) = limits("lím")_(x->2^+) 1/sqrt((x+3)(x-2)) exists.not)$ ya que $(x+3)(x-2) < 0 "cuando" x < 2 - delta $

        Como no existe $display(limits("lím")_(x->2^-) 1/sqrt(x^2+x-6))$ tampoco existe $display(limits("lím")_(x->2) 1/sqrt(x^2+x-6))$
      ]
    )[$display(limits("lím")_(x->2) 1/sqrt(x^2+x-6))$]
  ],
  [
    #subquestion(
      solution: [$display(exists.not)$

        $display(limits("lím")_(x->2^+) 1/sqrt(x^2+x-6) = limits("lím")_(x->2^+) 1/ln((x+3)(x-2)) = 1/ln(0) = 1/(-infinity) = result(0))$

        $display(limits("lím")_(x->2^-) 1/ln(x^2+x-6) = limits("lím")_(x->2^+) 1/ln((x+3)(x-2)) exists.not)$ ya que $(x+3)(x-2) < 0 "cuando" x < 2 - delta $

        Como no existe $display(limits("lím")_(x->2^-) 1/ln(x^2+x-6))$ tampoco existe $display(limits("lím")_(x->2) 1/ln(x^2+x-6))$
      ]
    )[$display(limits("lím")_(x->2) 1/ln(x^2+x-6))$]
  ])
],
[
  #question()[Resuelve los siguientes limites comparando infinitos:]

  #clarification("Este tipo de límite en un examen es recomendable que se resuelvan por L'Hôpital.")
  #questions-columns([
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->0^+) x/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0^-) x/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0) x/(ln x))$]
  ],
  [
    #subquestion(
      solution: [$display(= +infinity)$]
    )[$display(limits("lím")_(x->0^+) (ln x)/x)$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0^-) (ln x)/x)$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0) (ln x)/x)$]
  ],
  [   
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->0^+) sqrt(x)/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0^-) sqrt(x)/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0) sqrt(x)/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(= + infinity)$]
    )[$display(limits("lím")_(x->0^+) sqrt(x)/(ln x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0^-) e^x/sqrt(x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->0) e^x/sqrt(x))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) e^x/sqrt(x-1))$]
  ],
  [   
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) e^x/sqrt(x-1))$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) e^x/sqrt(x^2-1))$]
  ],
  [
    #subquestion(
    solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) e^x/ln(x^2-1))$]
  ])
],
[
  #question()[Si $limits("lím")_(x->a) f(x)=-2$, $limits("lím")_(x->a) g(x)=2$ y $limits("lím")_(x->a) h(x)=5$] 

  #questions-columns([
    #subquestion(
      solution: [$= -3$]
    )[$display(limits("lím")_(x->a) [2f(x) - 2g(x) + h(x)])$]
    #solution[
      $display(limits("lím")_(x->a) [2f(x) - 2g(x) + h(x)] = limits("lím")_(x->a) 2f(x) - limits("lím")_(x->a) 2g(x) + limits("lím")_(x->a) h(x) 
      =  2 limits("lím")_(x->a) f(x) - 2 limits("lím")_(x->a) g(x) + limits("lím")_(x->a) h(x) = \
      = 2 dot (-2) - 2 dot 2 +5 = (-4) dot (-4) + 5) = result(-3)$
    ]
  ],
  [
    #subquestion(
      solution: [$display(= 12 / (-2 + 2) = 12/0 = result(+infinity))$]
    )[$display(limits("lím")_(x->a) 12/(f(x)+g(x)))$]
  ],
  [

    #subquestion(
      solution: [$display(= sqrt((-2)^2 +  (2)^2) = sqrt(4 + 4) = sqrt(8) = result(2 sqrt(2)))$]
    )[$display(limits("lím")_(x->a) sqrt(f(x)^2 + g(x)^2))$]
  ],
  [

    #subquestion(
      solution: [$display( = (-2)/2 - ((-2)+2)/5 = result(-))$]
      )[$display(limits("lím")_(x->a) [f(x)/g(x) - (f(x) + g(x))/h(x)]) $]
  ])
],
[
  #question()[Determina los siguientes límites de funciones distinguiendo, si es necesario, los dos límites laterales.]
  #questions-columns(max-columns: 1, [
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->0) (3x^4)/(x^3+x^2))$]
  ],
  [
    #subquestion(
      solution: [$display(=-3/2)$]
    )[$display(limits("lím")_(x->2) (x-2)/(x^2-4) - (x^2-4)/(x-2) )$]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->3) (2x+1)/(3-x))$]  
    #solution()[ // no se muestra en columna, cuando no se define max-columns.
      $display(limits("lím")_(x->3^+) (2x+1)/(3-x) = -infinity \
      limits("lím")_(x->3^-) (2x+1)/(3-x) = +infinity)$
    ]
  ],
  [
    #subquestion(
      solution: [$display(=9)$]
    )[$display(limits("lím")_(x->4) (x^2+x-20)/(x^2-7x+12))$]
    #solution()[
      $display(limits("lím")_(x->4) (x^2+x-20)/(x^2-7x+12) 
      = limits("lím")_(x->4) ((x+5)cancel((x-4)))/((x-3)cancel((x-4))) 
      = limits("lím")_(x->4) ((x+5))/((x-3)) 
      = (4+5)/(4-3) = 9/1 = result(9))$ \
      En este caso, no hay problema con el signo, porque al cancelarse x-4 en numerador y denominador, el signo a la izquierda y a la derecha de $4$ no cambia.
    ]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->-4) (x^2-7x+16)/(x^2-2x-24))$]
    #solution()[ 
      $display(limits("lím")_(x->-4^-) (x^2-7x+16)/(x^2-2x-24) = limits("lím")_(x->-4^-) (x^2-7x+16)/((x+4)(x-4)) = (0^+)/(0^+ dot 0^-) = (0^+)/(0^-) = +infinity)$  \ 
      ya que si $x<4 => (x-4) < 0$ \
      $display(limits("lím")_(x->-4^+) (x^2-7x+16)/(x^2-2x-24) = limits("lím")_(x->-4^+) (x^2-7x+16)/((x+4)(x-4)) = (0^+)/(0^+ dot 0^+) = (0^+)/(0^+) = -infinity)$ \ 
      ya que si  $x>4 => (x-4) > 0$ \
    ]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) (x-1)/(x^2+1))$]
  ],
  [
    #solution()[ 
      $display(limits("lím")_(x->1^-) (x-1)/(x^2+1) = (0^-)/(0^+) = -infinity)$  ya que si $x<1 => (x-1)< 0$  \
          $display(limits("lím")_(x->1^+) (x-1)/(x^2+1) = (0^+)/(0^+)= = +infinity)$ ya que $x>1 => (x-1)< 0$ 
    ]
  ],
  [
    #subquestion(
      solution: [#h(0.1cm) $display(exists.not)$]
    )[$display(limits("lím")_(x->1) (x^2+1)/(x-1))$]
    #solution()[ 
      $display(limits("lím")_(x->1^-) (x^2+1)/(x-1) = (0^+)/(0^-) = -infinity)$  ya que si $x<1 => (x-1)< 0$  \
          $display(limits("lím")_(x->1^+) (x^2+1)/(x-1) = (0^+)/(0^+)= = +infinity)$ ya que $x>1 => (x-1)< 0$ 
    ]
  ],
  [
    #subquestion(
      solution: [$display(= 0)$]
    )[$display(limits("lím")_(x->3) (x^2-9)/(x^2-4))$]
  ],
  [   
    #subquestion(
      solution: [$display(= 1/2)$]
    )[$display(limits("lím")_(x->3) (x^2-x-6)/(x^2+4x-21) = x^3 - 3 x + 2)$]
    #solution()[ 
      $display(limits("lím")_(x->3) (x^2-x-6)/(x^2+4x-21) = 0/0 "(indeterminado)" \ 
      limits("lím")_(x->3) (x^2-x-6)/(x^2+4x-21) = limits("lím")_(x->3) ((x + 2) cancel((x - 3)))/((x + 7) cancel((x - 3))) = limits("lím")_(x->3) (x + 2)/(x + 7) = (3+2)/(3+7) = 5/10 = 1/2)$ // #rect[$display(1/2)$] )
    ]
  ],
  [
    #subquestion(
      solution: [$display(=0)$]
    )[$display(limits("lím")_(x->1) (x^4-x^3-3x^2+5x-2)/(x^2-2x+1))$]
    #solution()[ 
      $display(limits("lím")_(x->1) (x^4-x^3-3x^2+5x-2)/(x^2-2x+1) = 0/0 "(indeterminado)" \ 
      limits("lím")_(x->1) (x^4-x^3-3x^2+5x-2)/(x^2-2x+1) = limits("lím")_(x->1) (cancel((x-1))(x^3 - 3 x + 2))/(cancel((x-1))(x-1)) =  0/0 "(indeterminado)" \
      limits("lím")_(x->1) (x^3 - 3 x + 2)/(x-1) = limits("lím")_(x->1) (cancel((x-1))(x^2 + x - 2))/cancel(x-1) = limits("lím")_(x->1) x^2 + x - 2 = result(0) )$
    ]
  ],
  [ 
    #subquestion(
      solution: [$display(=-9/8)$]
    )[$display(limits("lím")_(x->-1) (x^3-2x^2+2x+5)/(x^2-6x-7))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=13/42)$]
    )[$display(limits("lím")_(x->4) (x^3 - x^2 - 14 x + 8)/(x^4 - 2 x^3 - 11 x^2 + 12 x))$]
  ],
  [     
    #subquestion(
      solution: [$display(= -5)$]
    )[$display(limits("lím")_(x->0) (x^2-5x+2)/(x^2+2x) - (x^3+2x+1)/(x^3+x))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=-oo)$]
    )[$display(limits("lím")_(x->1) (x^2-2x+1)/(x^4-x^3-3x^2+5x-2))$]
  ],
  [
    #subquestion(
      solution: [$display(=-1)$]
    )[$display(limits("lím")_(x->-1) [(x+1)(3x+2)/(x^3+x^2)])$]
    #solution()[     
      $display(limits("lím")_(x->-1) [(x+1)(3x+2)/(x^3+x^2)] = [(-1+1) dot (3(-1)+2)/((-1)^3+(-1)^2)] = 0 dot (-1)/0 = 0 dot (-oo))$ (indeterminado) \ 
      $display(limits("lím")_(x->-1) [(x+1)(3x+2)/(x^3+x^2)] = limits("lím")_(x->-1) [(cancel(x+1)(3x+2))/(x^2 dot cancel((x+1)))] = limits("lím")_(x->-1) [(3x+2)/(x^2)] = (3(-1) +2)/(-1)^2 = -1/1 = -1)$
    ]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->2) (x^2-4)/(x^3-8))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->-4) (x^3+3x^2-24x-80)/(x^2+x-12) )$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->1) [2/(x-1)^2-1/(x(x-1))])$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->2) [3/(x^2-5x+6)-1/(x-2)])$]
  ])
],
[
  #question()[Determina los siguientes límites de funciones distinguiendo, si es necesario, los dos límites laterales.]
  #questions-columns([
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->sqrt(5)) (x-sqrt(5)) / (x^2-5))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->5) (x^2-25) / (sqrt(x)-sqrt(5)))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->3) (x^2-3x)/(2-sqrt(2x-2)))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->0) (sqrt(1-x)-1)/x)$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->3) (sqrt(x+1)-2)/(x-3))$]
  ],
  [     
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->2) (x^2-4)/(3-sqrt(x+7)))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4) (2-sqrt(x))/(3-sqrt(x+5)))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4) (sqrt(6+x)-2)/(1-sqrt(3+x)))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->-3) sqrt(x^2+2x-3)/root(3, x^3+3x^2))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->1) root(4, x^3-x)/sqrt(x^2+x-2))$]
  ])
],
[
  #question()[Dada la función,
      $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                  & x/(x-2) &"si" & x < 1,
                  & 2x-1 &"si" & 1<=x< 4,
                  & sqrt(x) + x +1 &"si" & x>=4
                ) $ 
  Calcula:
  ]
  #questions-columns(
  [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->1^-) f(x))$]
  ],
  [    
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->1^+) f(x))$]  
  ],
  [ 
   #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->1) f(x))$]
  ],
  [     
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4^-) f(x))$]
  ],
  [     
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4^+) f(x))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4) f(x))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->2) f(x))$]
  ],
  [     
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->5) f(x))$]
  ])
],
[
  #question()[Dada la función,
      $ f(x) = cases(reverse: #false, delim: "{", gap: #1em,
                  & e^x &"si" & x <= 0,
                  & 1-x^2 &"si" & 0 < x < 2,
                  & 3/(x-3) &"si" & x>2
                ) $ 
  Calcula:
  ]
  #questions-columns([
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->-infinity) f(x))$]
  ],
  [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->0) f(x))$]
  ],
  [     
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->2) f(x))$]
  ],
  [ 
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->3) f(x))$]
    
  ],
  [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->4) f(x))$]
  ],
  [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->+infinity) f(x))$]

  ])
],
[
  #question()[Determina los siguientes límites de funciones distinguiendo.]
  #questions-columns(max-columns: 3, 
    [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->-1) ((3-2x)/(x^2+1))^(x/(x+3)))$]
    ],
    [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->7) ((x^2-7x+4)/(x-3))^((x+1)/(x-7)))$]
    ],
    [
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->0) ((x^2+1)/(2x+1))^(1/x))$]
    ],
    [   
    #subquestion(
      solution: [$display(=)$]
    )[$display(limits("lím")_(x->0) ((2x^2-x-1)/(7-x))^(1/(x-2)))$]
  ]
  )
]
)