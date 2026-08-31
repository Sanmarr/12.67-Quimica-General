= Presion de Vapor

_Fuerza que ejerce la fase gaseosa de una sustancia sobre su fase líquida o sólida en un recipiente cerrado cuando ambas se encuentran en equilibrio dinámico_.

En un recipiente al vacío se coloca una gota de líquido. Éste va a empezar a 
*evaporarse* y la presión aumentará hasta que *haya tantas moléculas de gas 
que las fuerzas intermoleculares logran vencer la energía cinética del gas y 
pasarán al estado líquido*. Así, se llegará a un equilibrio entre moléculas que pasan de líquido a gas y las que pasan de gas a líquido

 - $p_"ext" = p_v$ #sym.arrow.r *Equilibrio* entre el gas y el líquido.
 - $p_"ext" > p_v$ #sym.arrow.r *Licuacion del gas*. as moléculas de gas tienen menos espacio disponible y se sienten más atraídas por las vecinas
 - $p_"ext" < p_v$ #sym.arrow.r Las moléculas tienen más espacio disponible y sienten menos la atracción de las vecinas, así  se dará una mayor evaporación

#box(stroke: 1pt, inset: 10pt)[
#sym.arrow.t Fuerzas de atraccion #sym.arrow.r.double #sym.arrow.b Presion de Vapor
]

== Volatilidad

Una sustancia es más *volátil* cuando tiene mayor presión de vapor a 
una dada temperatura, por ende, menor temperatura de ebullición a la 
misma presión exterior

#figure(
  image("images/volatil.png", width: 80%),
)

== Diagrama de Fases 

 - *Curvas de equilibrio*: coexisten 2 estados de agregación.
 - *Punto triple*: coexisten los 3 estados.
 - *Punto crítico*: donde termina la curva de equilibrio L - G. Por encima de este puntono se puede licuar un gas para obtener líquido, se tienen los fluidos supercríticos.

#figure(
  image("images/diagFases.png", width: 65%),
)

= Propiedades Coligativas de las soluciones

Las propiedades físicas de las soluciones que dependen del _número_, no del _tipo_, de partículas de soluto en una cantidad dada de solvente, reciben el nombre de *propiedades coligativas*.

Las propiedades son:
+  Abatimiento de la presión de vapor, 
+  Elevación del punto de ebullición, 
+  Depresión del punto de congelación  
+  Presión osmótica.

Si el soluto es *electrolito*, en solución *se disocia en iones*. Si es no 
electrolito, no se disocia.

#box(stroke: 1pt, inset: 10pt)[
#text(weight: "bold", fill: red)[Las propiedades coligativas dependen del número de partículas disueltas. No dependen de su naturaleza.]

_Por ejemplo, 1 L de solución 1 M de sacarosa tiene 1 mol de partículas porque es no electrolito y 1 L de 
solución 1 M de NaCl tiene 2 moles de partículas porque es electrolito. Las propiedades coligativas de estas dos 
soluciones serán diferentes, aunque tengan la misma cantidad de solución y su concentración molar sea la 
misma. Pero, por ejemplo, las propiedades coligativas de 1 L de solución 0,5 M de NaCl serán iguales a las de 1 
L de solución 1 M de sacarosa_


*Factor de van’t Hoff (i)*: Es la suma de los coeficientes estequiométricos que resultan de la disociación del 
electrolito, siempre y cuando la solución se comporte idealmente.

#figure(
  image("images/vanHoff.png", width: 35%)
)
]

== Descenso de la presión de vapor

#box(stroke: 1pt, inset: 5pt)[
#text(weight: "bold", fill: red)[La presión de vapor de una solución es menor que la del solvente puro].
]

Si se tiene un solvente puro, las moléculas líquidas pasan a la fase vapor 
hasta llegar al equilibrio. #highlight[Si se agrega un soluto no volátil], sucederá lo mismo, 
#highlight[pero ahora hay menos moléculas de solvente en la superficie, ya que 
también hay moléculas de soluto], entonces la velocidad de evaporación será 
menor, con la consiguiente #highlight[menor presión de vapor]


La presión de vapor total es la suma de las presiones de 
vapor parciales

$
  p_"v solucion" = p_"v solvente" + p_"v soluto" = p_"v solvente" 
$

=== Ley de Raoult

Como la presión de vapor es menor que la del solvente puro, será sólo una 
fracción de ésta. #text(weight: "bold", fill: red)[Una solución es ideal si cumple la Ley de Raoult].

#figure(
  image("images/raoult.png", width: 60%)
)

#figure(
  image("images/raoult2.png", width: 55%)
)

Hay que tener cuidado en cómo se calcula la fracción molar si es 
electrolito (los moles del soluto se disocian en iones) o no electrolito

$
  X_"sv" = (n_"sv")/(n_"sv" + i dot n_"sto") 
  #h(1cm) 
  X_"sto" = (i dot n_"sto")/(n_"sv" + i dot n_"sto")
  #h(2cm)
  #text(weight: "bold")[Soluto Electrolitico]
$

Para cada composición de la 
solución, habrá una presión de 
vapor, que siempre será menor que 
la del solvente puro. Por lo tanto, en 
un diagrama de fases, realizado para 
una solución de una determinada 
composición, #highlight[la curva de equilibrio 
líquido - vapor, estará corrida hacia 
una menor presión para cada 
temperatura. Si la solución es más 
concentrada, la diferencia entre 
ambas curvas será más grande].


#figure(
  image("images/curve.png", width: 45%)
)

== Ascenso ebulloscópico
#box(stroke: 1pt, inset: 5pt)[
#text(weight: "bold", fill: red)[La temperatura de ebullición de la solución es mayor que la del solvente puro].
]

$
  T_"eb"-T_"eb"^0 = Delta T_"eb" = K_"eb" dot i dot m
  #h(3cm)
  #text(weight: "bold")[Soluto Electrolitico] 
$
donde:

 - $m$: molalidad (moles de soluto disueltos en 1 kg de solvente). Se usa porque no varía con la temperatura. No podemos emplear molaridad, puesto que varía con la temperatura, porque el volumen es función de la temperatura.
 - $K_"eb"$: constante ebulloscópica. Se define como el ascenso ebulloscópico de una solución 1 molal. Sus unidades son ⁰C/molal y depende solamente del solvente. 
 - $T"eb"$: temperatura de ebullición de la solución.
 - $T"eb"^0$: temperatura de ebullición del solvente puro.
 - $Delta$Teb: ascenso ebulloscópico

 #figure(
  image("images/teb.png", width: 45%)
)

_Cuando ponemos a hervir agua para hacer fideos, luego de un rato, 
alcanza su temperatura de ebullición. Si en ese momento o luego, 
agregamos sal, vemos que se detiene la ebullición. Ahora tenemos una 
solución y para alcanzar la nueva temperatura de ebullición, que es 
más elevada, tendremos que seguir calentando por un tiempo_

== Descenso crioscópico

#box(stroke: 1pt, inset: 5pt)[
#text(weight: "bold", fill: red)[La temperatura de congelación de una solución es menor que la del solvente puro.].
]

Si se tiene un solvente puro, al disminuir la temperatura, las partículas 
disminuyen su energía cinética y las fuerzas de atracción entre ellas se 
sentirán con más intensidad, así congelará a una determinada 
temperatura. #highlight[Si hay partículas de soluto disueltas, las partículas de 
solvente se encuentran más alejadas entre sí, lo que provoca fuerzas 
intermoleculares más débiles, dando lugar a una menor temperatura 
de congelación].

$
  T_"c"^0-T_"c" = Delta T_"c" = K_"c" dot i dot m
  #h(3cm)
  #text(weight: "bold")[Soluto Electrolitico] 
$
donde:

 - $m$: molalidad (moles de soluto disueltos en 1 kg de solvente). Se usa porque no varía con la temperatura. No podemos emplear molaridad, puesto que varía con la temperatura, porque el volumen es función de la temperatura.
 - $K_c$: constante crioscópica. Se define como el descenso crioscópico de una  solución 1 molal. Sus unidades son ⁰C/molal. Depende solamente del solvente. Está tabulada. .
 - $T_c$: temperatura de congelamiento de la solución.
 - $T_c⁰$: temperatura de congelamiento del solvente puro.
 - $Delta T_c$: descenso crioscópico.

 #figure(
  image("images/crio.png", width: 45%)
)

_Cuando hay nieve en la calle, se arroja sal, porque baja la temperatura 
de congelación del agua, así se evita tener hielo y los autos no resbalan_

== Presión osmótica

Se llama ósmosis cuando un solvente atraviesa una membrana 
semipermeable que lo separa de una solución donde se encuentra 
disolviendo a un soluto. #text(weight: "bold", fill: red)[Solo permite el paso del solvente]. Este proceso ocurre cuando se tiene un solvente puro y una solución o 
bien dos soluciones de diferente concentración.

$
 pi = i dot M dot R dot T
  #h(3cm)
  #text(weight: "bold")[Soluto Electrolitico] 
$
donde:

 - $pi$: presión osmótica (atm).
 - $M$: molaridad. Se puede usar porque no varía la temperatura
 - $R$: constante de los gases ($0,082 ("L" dot "atm")/("K" dot"mol")$).

Cuando la #highlight[presión] 
que ejerce esta columna es lo 
#highlight[suficientemente grande como para 
impedir el paso de solvente], el flujo 
del mismo cesará. La presión que 
ahora ejerce la columna se llama 
#highlight[*presión osmótica*]

#figure(
  image("images/pressure.png", width: 45%)
)

