// #import "@preview/shiroa:0.1.1": *
#import "mod.typ": *

= Página 1

== Prueba de pagina 1

#lorem(100)

== Prueba de página 2

#lorem(100)

#let t = cross-link("/page2.typ")[Página 2]

En lace a #t muy bonito.

*Ejemplo*:

```typ
= Página 1

== Prueba de pagina 1

#lorem(100)

== Prueba de página 2

#lorem(100)
```
