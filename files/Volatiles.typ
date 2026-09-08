= Soluciones de 2 componentes volatiles

== Soluciones Ideales

*No electrolitos* porque ambos son volátiles. Ya no se habla mas de soluto y solvente

Estos #text(weight: "bold", fill: red)[cumplen la ley de Raoult]:

$
 p_1 = x_1 dot p_1^0 #h(2cm) p_2 = x_2 dot p_2^0
$

- $p_i$: presión parcial
- $p_i^0$: presión parcial del componente puro
- $x_i$: fracción molar en la fase líquida

Estos #text(weight: "bold", fill: red)[cumplen la ley de Dalton]:

$
  P &= p_1 + p_2 \
  P &= x_1 dot p_1^0 + x_2 dot p_2^0 \
  P &= p_2^0 + (p_1^0 - p_2^0) dot x_1
$
La presión de vapor total de la solución se puede expresar en función de la fracción molar de los
componentes en la fase vapor aplicando la ley de Raoult y la Ley de Dalton

$
  P_1 &= y_1 dot P_1 #h(2cm) P_2 = y_2 dot P \
$
donde $y_i$ es la fracción molar del componente i en la fase gaseosa.

=== Equilibrio líquido-vapor

En un diagrama de temperatura-composición a presión constante aparecen dos curvas:

- *Curva de líquido o de burbuja*: por debajo de ella existe solamente líquido.
- *Curva de gas o de rocío*: por encima de ella existe solamente vapor.
- Entre ambas curvas coexisten las fases líquida y gaseosa.

#figure(
  image("images/liqvap.png", width: 70%)
)

La temperatura de ebullición de una mezcla se encuentra entre las temperaturas de ebullición de los componentes puros. #highlight[El componente *más volátil* tiene mayor presión de vapor] y #highlight[menor temperatura de ebullición].



#box(stroke: 1pt, inset: 8pt)[
  #text(weight: "bold", fill: red)[La fase vapor es más rica en el componente más volátil y la fase líquida es más rica en el menos volátil.]
]

Para conocer las composiciones de ambas fases a una temperatura dada, se traza una línea horizontal hasta cortar las curvas: el corte con la curva de líquido da $x_1$ y el corte con la curva de gas da $y_1$.

=== Regla de la palanca inversa

Permite calcular la cantidad de cada fase a partir de las distancias en el diagrama:

#figure(
  image("images/diagg.png", width: 50%)
)


$ "AB"/"AC" = n_G/n_"tot" #h(2cm) "BC"/"AC" = n_L/n_"tot" $

Por lo tanto, cuanto más cerca esté la composición global de una curva, mayor será la cantidad de la fase correspondiente a la otra curva. La composición global se ubica entre las composiciones del líquido y del vapor y cumple:

$ n_"tot" = n_L + n_G $

=== Destilación

La destilación separa componentes aprovechando que tienen distintas temperaturas de ebullición. El vapor formado queda enriquecido en el componente más volátil y luego se condensa.

*Destilación simple*

Se utiliza principalmente para separar un líquido de sustancias sólidas disueltas o cuando los puntos de ebullición son muy diferentes. El destilado obtenido contiene más componente volátil, pero no suele ser completamente puro; para aumentar la separación habría que repetir el proceso.

*Destilación fraccionada*

Se utiliza para separar dos líquidos volátiles. La columna de fraccionamiento funciona como una sucesión de destilaciones simples: en cada superficie el vapor condensa y vuelve a evaporarse, enriqueciéndose progresivamente en el componente más volátil.

Cuanto más cercanas sean las temperaturas de ebullición de los componentes, más alta y eficiente debe ser la columna. Durante el proceso, el líquido del fondo se empobrece en el componente más volátil y el vapor que asciende se enriquece en él.

#figure(
  image("images/fracc.png", width: 70%)
)


== Soluciones de dos componentes volátiles no ideales

Una solución es no ideal cuando no cumple la ley de Raoult. La desviación depende de la composición y de la intensidad relativa de las interacciones entre partículas. Una solución diluida puede comportarse aproximadamente de forma ideal.

=== Desviación negativa

Las #highlight[*fuerzas entre componentes* diferentes son *más intensas* de lo esperado]. La evaporación resulta más difícil y la presión de vapor total es menor que la predicha por Raoult.

En un diagrama de presión de vapor aparece un mínimo. Equivalentemente, en un diagrama de temperatura de ebullición aparece un máximo. Este extremo corresponde a un #text(weight: "bold", fill: red)[azeótropo de temperatura de ebullición máxima].

#figure(
  image("images/desvNeg.png", width: 30%)
)

=== Desviación positiva

Las #highlight[*fuerzas entre componentes* diferentes *son más débiles* de lo esperado]. La evaporación resulta más fácil y la presión de vapor total es mayor que la predicha por Raoult.

#figure(
  image("images/desvPos.png", width: 30%)
)

En un diagrama de presión de vapor aparece un máximo. Equivalentemente, en un diagrama de temperatura de ebullición aparece un mínimo. Este extremo corresponde a un #text(weight: "bold", fill: red)[azeótropo de temperatura de ebullición mínima].

=== Azeótropos

En la composición azeotrópica coinciden la temperatura de burbuja y la de rocío. La mezcla hierve a una única temperatura y la composición del líquido es igual a la del vapor:

$ x_1 = y_1 $

#box(stroke: 1pt, inset: 8pt)[
  #text(weight: "bold", fill: red)[Una mezcla azeotrópica no puede separarse en sus componentes puros mediante destilación fraccionada.]
]

