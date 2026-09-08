= Cinética Química

La cinética química #highlight[estudia la velocidad con la que los reactivos se transforman en productos]. La velocidad se expresa como cambio de concentración por unidad de tiempo.

Para la reacción:

$ a dot A + b dot B -> p dot P $

la velocidad promedio es:


$ v = -1/a dot (Delta [A])/(Delta t) = -1/b dot (Delta [B])/(Delta t) = 1/p dot (Delta [P])/(Delta t) $


Los signos negativos aparecen porque las concentraciones de los reactivos disminuyen. La velocidad instantánea se obtiene reemplazando los cocientes por derivadas. La velocidad de una reacción es única, aunque cada especie cambie a una rapidez distinta.

*Factores que afectan la velocidad*

- *Concentración*: aumenta la cantidad de colisiones entre partículas.
- *Temperatura*: al aumentar, crece la energía cinética y la fracción de colisiones eficaces.
- *Naturaleza de los reactivos*: depende del tipo de enlace, estado físico y estructura.
- *Catalizadores*: modifican la rapidez mediante un mecanismo alternativo.

#figure(
  image("images/com-act.png", width: 70%),
  caption: "Teoria del Complejo Actividad"
)

== Ley de velocidad

Para una reacción general, la ley de velocidad se determina experimentalmente:

$ v = k dot [A]^alpha dot [B]^beta $

- $alpha$ y $beta$ son los #text(weight: "bold", fill: red)[órdenes parciales] y *no* necesariamente coinciden con los coeficientes estequiométricos.
- $n = alpha + beta$ es el #text(weight: "bold", fill: red)[orden total] (max. 3).
- $k$ es la #text(weight: "bold", fill: red)[constante específica de velocidad] y depende de la temperatura. Sus unidades dependen del orden de la reacción.

Para una reacción elemental sí puede relacionarse la ley de velocidad con la molecularidad, pero una ecuación global no permite deducir los órdenes por sus coeficientes.

=== Leyes integradas

Para $a dot A -> P$, si la ley es $v = k [A]^a = -1/a dot (partial C_A)/ (partial t)$, las formas integradas más usadas son:

#table(
  columns: 3,
  align: center,
  stroke: 0.5pt,
  inset: 8pt,

  [*Orden*], [*Ecuación*], [*Gráfico lineal*],

  [0], $ [A] = [A]_0 - a k t $, $[A] "vs." t$,

  [1], $ ln([A]) = ln([A]_0) - a k t $, $ln([A]) "vs." t$,

  [2], $ 1 / [A] = 1 / [A]_0 + a k t $, $1 / [A] "vs." t$,
)

El gráfico que resulta lineal permite identificar el orden. La pendiente permite hallar $k$.

#figure(
  image("images/orden.png", width: 100%)
)

=== Tiempo de vida media

Es el tiempo necesario para que la concentración del reactivo se reduzca a la mitad: $t  arrow.r A_0/2$:

#table(
  columns: 2,
  align: center,
  stroke: 0.5pt,
  inset: 8pt,

  [Orden], [$t_(1 \/ 2)$],
  [0], $[A]_0 / (2 dot a dot k)$,
  [1], $ln(2) / (a dot k)$,
  [2], $1 / (a dot k dot [A]_0)$,
)

En una reacción de primer orden, la vida media es independiente de la concentración inicial.

== Temperatura 

La constante de velocidad aumenta al aumentar la temperatura. #text(weight: "bold", fill: red)[La relación de Arrhenius es]:

$ k = A dot e^(-E_a/(R dot T)) $

- $E_a$ es la energía de activación.
- R: Constnte de los gases ($8.31 (J)/(°K."mol")$)
- $A$ es el factor de frecuencia de choques.
- Una representación de $ln(k)$ frente a $1/T$ es lineal, con pendiente $-E_a/R$.

== Catalizadores

Un catalizador modifica la velocidad porque ofrece un mecanismo alternativo con menor energía de activación. No cambia la composición final, la constante de equilibrio ni la espontaneidad de la reacción. Participa en las etapas del mecanismo y se regenera al final. La catálisis puede ser homogénea o heterogénea.

Un catalizador negativo, son aquellos caminos que se utilizan cuando *no* quiero que ocurran ciertas reacciones. Por la baja energía de activación de la 
primera etapa, la reacción toma el 
camino catalizado, pero luego no puede 
superar el segundo pico. Hay inhibición
#figure(
  image("images/ej-cat.png", width: 40%),
  caption: "Catalizador Negativo"
)

=== Mecanismo de reacción

Una reacción global puede ocurrir mediante varias etapas elementales. Las especies que aparecen en el mecanismo pero no en la reacción global son intermediarios. La etapa lenta suele controlar la velocidad observada, pero la ley de velocidad debe ser compatible con el mecanismo completo y con los datos experimentales.


