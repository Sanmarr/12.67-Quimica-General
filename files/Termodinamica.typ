// ---------- Cajas de estilo ----------
// Fórmula destacada (centrada, fondo azul)
#let redbold(body) = text(fill: red)[*#body*]
#let redtext(body) = text(fill: red)[#body]

#let formula(body) = align(center,
  block( stroke: 1pt + rgb("#bf3030"), inset: 9pt, radius: 4pt, body))

// Definición / concepto clave
#let def(term, body) = block(width: 100%, fill: rgb("#eefaf0"),
  stroke: (left: 3pt + rgb("#2f855a")), inset: 9pt, radius: 2pt,
  [*#term:* #body])

// Cuadro IMPORTANTE (amarillo)
#let imp(body) = block(width: 100%, fill: rgb("#fff4d6"),
  stroke: (left: 3pt + rgb("#d69e2e")), inset: 9pt, radius: 2pt,
  [*¡Importante!* \ #body])

// Cuidado / error común (rojo)
#let warn(body) = block(width: 100%, fill: rgb("#ffe9e9"),
  stroke: (left: 3pt + rgb("#c53030")), inset: 9pt, radius: 2pt,
  [*Cuidado:* #body])

// Lugar para pegar imágenes después
#let img(desc) = block(width: 100%, inset: 14pt, radius: 4pt,
  stroke: (paint: gray, dash: "dashed"),
  align(center, text(fill: gray, style: "italic")[\[ Imagen: #desc \]]))
// ============================================================

= Termodinámica

== Conceptos básicos

- *Sistema*: Porción de materia en estudio. 
- *Medio o alrededores*: lo que lo rodea. 
- *Universo* = Sistema + medio.


Dentro del concepto de sistema, se pueden distinguir 2 tipos:

- Sistema *Abierto*: intercambia materia con el medio.
- Sistema *Cerrado*: no intercambia materia. 
 + *Adiabático*: Cerrado que no intercambia calor. 
 + *Aislado*: Cerrado que no interacciona con el medio.

*Variables de estado*: Definen el estado termodinámico del sistema.  _Presion, Volumen, Temperatura, Composición, Masa, Densidad_ son las más frecuentes. De cambiar, habra un #redbold[cambio de estado].

Las #highlight[variables de estado son funciones de estado]: su variación en un proceso es independiente del camino recorrido por el sistema para ir del estado inicial al estado final. Dependen del estado inicial y final únicamente y no de cómo se llega de uno a otro.

#def("Función de estado")[Su variación depende *solo* del estado inicial y final, *no* del camino recorrido. Ejemplo: la temperatura.]

#def("Calor (Q) y trabajo (W)")[Son formas de energía que aparecen en un cambio de estado. *NO son funciones de estado* (dependen del camino).]

#box(stroke: 1pt, inset: 5pt, radius: 3pt, width: 100%)[
#align(center)[
  Variables de estado = Funciones de estado = Prop. Termodinámicas = Funciones termodinámicas = Funciones de punto
]
]

#table(columns: (1fr, 1fr, 1fr), align: center,
  table.header[*Variable*][*Valor absoluto*][*Unidad típica*],
  [Energía interna $U$], [No se conoce, solo $Delta U$], [kJ/mol],
  [Entalpía $H$], [No se conoce, solo $Delta H$], [kJ/mol],
  [Entropía $S$], [*Sí* se conoce ($S > 0$)], [J/(mol·K)],
  [Energía libre $G$], [No se conoce, solo $Delta G$], [kJ/mol],
)
#v(2pt)
_Ojo: en el libro de Whitten la energía interna figura como $E$ en vez de $U$._

== Principios de la termodinámica

=== Ley 0: Equilibrio térmico

#box(stroke: 1pt, inset: 10pt,  width: 100%, fill: rgb("#dffce4"))[
#align(center)[
_Si dos sistemas están en equilibrio térmico de manera independiente con un tercer sistema, deben estar en equilibrio térmico entre sí. Este precepto nos ayuda a definir la temperatura._
]
]

=== Ley 1: Conservacion de la Energia

#box(stroke: 1pt, inset: 10pt, width: 100%, fill: rgb("#dffce4"))[
#align(center)[
_Un sistema cerrado puede intercambiar energía con su entorno en forma de trabajo y de calor, acumulando energía en forma de energía interna. La ley es una generalización del principio de conservación de la energía mecánica._

$ 
Delta U = Q + W 
$
]
]

=== Ley 2: La entropía
#box(stroke: 1pt, inset: 10pt,  width: 100%, fill: rgb("#dffce4"))[
#align(center)[
En cualquier proceso espontáneo, la entropía (el grado de desorden o dispersión de la energía) del universo siempre aumenta

]]

=== Ley 3: El cero absoluto
#box(stroke: 1pt, inset: 10pt,  width: 100%, fill: rgb("#dffce4"))[
#align(center)[
La entropía de un sistema se aproxima a un valor constante a medida que la temperatura se aproxima al cero absoluto
]]

== Primer principio y convención de signos

#quote[Energía es la capacidad para realizar trabajo o transferir calor.]

La energía se clasifica en dos tipos generales: *cinética* y *potencial*. La energía cinética es la energía del movimiento mientras energía potencial es la energía que posee un sistema en virtud de su posición o composición.La energía del universo es constante, es decir, *La cantidad combinada de materia y energía en el universo es constante.*

#formula[$ Delta U = Q + W $]

=== Reacciones exotermicas y endotermicas

Las reacciones en las que #highlight[se libera energía en forma de calor reciben el nombre de *reacciones exotérmicas*]. Las reacciones de combustión de los combustibles fósiles son ejemplos conocidos de reacciones exotérmicas

$
  "CH"_4(g) + 2 dot O_2(g) arrow.r "CO"_2(g) + 2 dot "H2O"(l) + 890 "kJ"
$

#figure(
  image("/files/images/2P/exo2.png", width: 50%),
  caption: "Ejemplo de reaccion exotermica"
) <fig:exo2>


Un proceso en el que #highlight[se absorbe energía de los alrededores recibe el nombre de *endotérmico*]

$
H_2 O (s) + 6.02 "kJ" arrow.r  H_2 O(l)
$


=== Convencion de signos
#table(columns: (1fr, 1fr, 1fr), align: center,
  table.header[*Magnitud*][*> 0*][*< 0*],
  [Calor $q$], [El sistema *recibe* calor (endotérmico)], [El sistema *cede* calor (exotérmico)],
  [Trabajo $W$], [El medio hace trabajo sobre el sistema (*compresión*)], [El sistema hace trabajo sobre el medio (*expansión*)],
)

#redtext[No son funciones de estado].

#figure(
  image("/files/images/2P/signos.png", width: 70%),
  caption: "Convencion de signos"
) <fig:signos>


== Entalpía ($H$)

#quote[Casi todas las reacciones químicas y los cambios físicos ocurren a presión (generalmente atmosférica) constante]
#def("Entalpia")[
La cantidad de calor que se transfiere a o sale de un sistema cuando está experimentando un cambio químico o físico a presión constante, $Q_p$, se define como el *cambio de entalpía*, $Delta H$, del proceso. 



En una reacción química ($V_"cte"$ o $P_"cte"$).

- $Delta H > 0$: reacción *endotérmica*.
- $Delta H < 0$: reacción *exotérmica*.


]
No se puede determinar de manera absoluta cuál es su valor: $ underbrace(H = U + P dot V, "No puedo saberlo!")$ . 

Se conoce con respecto a un estado de referencia: $Delta H = H_f - H_i = H_"productos" - H_"reactivos"$

Una ecuación química balanceada, junto con su valor de $Delta H$, recibe el nombre de *ecuación termoquímica*. 
Los coeficientes en una ecuación termoquímica balanceada deben 
interpretarse como número de moles de cada reactivo y producto. 
Se hace referencia a esta cantidad de reacción 
como un #highlight[ *mol de reacción*, la cual se escribe en forma abreviada “*mol de rxn*”]

#box(stroke: 1pt, inset: 6pt, radius: 3pt, width: 100%)[
Ejemplos:
$
  C_2 H_5 O H + 1 3 dot O_2 (g) arrow.r 2 dot C O_2(g) + 3 dot H_2 O + 1367 "kJ"
$
#figure(
  image("/files/images/2P/ex-exo.png", width: 100%)
) <fig:ex-exo>
]


El *estado termodinámico estándar* de una sustancia es su forma pura más estable a presión estándar (una atmosfera)\* y a cierta temperatura específica (25 °C o 298 K, a menos que se es
pecifique otra cosa).

1. Para una sustancia _pura_ en fase líquida o sólida, el estado estándar es el líquido o sólido puro. 
2. Para un gas, el estado estándar es el gas a una presión de _una atmosfera_; en una mezcla de gases, su presión parcial debe ser igual a una atmosfera.
3. Para una sustancia en solución, el estado estándar se refiere a una concentración de _uno molar_.

#def([Cambio de entalpía estándar ($Delta H^0_"rxn"$)])[
$
  "reactivos" arrow.r "productos"
$

Se refiere al valor de $Delta H$ cuando la cantidad especificada de moles de reactivos, todos en su estado estándar, se convierte por completo en la cantidad especificada de moles de productos, todos en su estado estándar.
]

Ejemplo: 
$
 H_2(g) +  dot "Br"_2 (l) arrow.r  2 dot "HBr"(g) quad quad  Delta H^0_"rxn"  = -72.8 ( "kJ"/"mol de rxn")
$

#def([Entalpía estándar de formación ($Delta H^0_f$)])[
es el cambio de entalpía que se produce cuando se forma _1 mol de un compuesto a partir de sus elementos en sus estados estándar_. Por convención, el valor de $Delta H^0_f$ de cualquier elemento en su estado estándar es cero.
$ Delta H^0_f ("elementos en su estado más estable") = 0 $
]


Ejemplo: 

$
1/2 dot H_2(g) + 1/2 dot "Br"_2 arrow.r  "HBr"(g) quad quad  Delta H^0_"f"  = -36.4 ( "kJ"/("mol de" "HBr"(g)) )
$



#imp[
$Delta H^0_"f"$ es a 1 atm, pero puede ser a cualquier temperatura. O sea que hay infinitos $Delta H^0_"f"$. Están tabulados a 25◦C.
#figure(
  image("/files/images/2P/table.png", width: 70%)
) <fig:table>

]

=== Leyes de Laplace y de Hess (valen para cualquier función de estado)

- *Laplace*: invertir la reacción cambia el signo. $Delta H_(A arrow B) = - Delta H_(B arrow A)$
- *Hess*: los $Delta H$ de reacciones sucesivas se suman. $Delta H_(A arrow C) = Delta H_(A arrow B) + Delta H_(B arrow C)$



#formula[$ Delta H^0_r = sum Delta H^0_f ("productos") - sum Delta H^0_f ("reactivos") $]



(Igual para $Delta G^0_r$ y $Delta S^0_r$ con sus valores tabulados.)

#figure(
  image("/files/images/2P/hess.png", width: 40%),
  caption: "Representación esquemática de la ley de Hess"
) <fig:table>

Combinándolas, para $a "A" + b "B" arrow c "C" + d "D"$:

$ Delta H^0_r = (c dot  Delta H^0_f "C" + d dot Delta H^0_f "D") - (a dot Delta H^0_f "A" + b dot Delta H^0_f "B") $

== Expansión/Compresión (solo gases): $P_"ext"$ = cte y  $T$ = cte

Quien ejerce presión es el sistema sobre el medio o el medio sobre el sistema, la expansión o la 
compresión van a ser en contra de la presión exterior

$ W = "Fuerza" dot "Distantacia"$  

$P = "Fuerza" / "Area"$

$ W = "Presion" dot "Volumen"$

#formula[$ W = - P_"ext" dot (V_f - V_0) $]

=== Sin Reaccion Quimica
Solo hay intercambio de calor y trabajo.

- Expansión: $V$ aumenta $arrow.r$ $W < 0$. 
- Compresión: $V$ disminuye $arrow.r$ $W > 0$. Por eso el signo $(-)$.

=== Con Reaccion Quimica

Parte de un equilibrio con el medio y llega a otro, $P = P_"ext"$:

$   W &= - P_"ext" dot (V_f - V_0) \
      &= - (n_f dot R T - n_0 dot R T) \ 
      &= - (n_f - n_0)  dot R T$

#formula[$ W = - Delta n dot R T $]

donde $Delta n = n_f - n_0$ y *solo cuentan los moles gaseosos*.

Ejemplo: 

#figure(
  image("/files/images/2P/ex-comprension.png", width: 40%),
  caption:  "Ejemplo de compresión a presion y temperatura constante"
) <fig:table>

=== Cambio de Estado de Agregacion

Interesa si  $V_"líq" << V_"gas"$

$   W &= - P_"ext" dot (V_f - V_0) \
      &= - P_"ext" dot (V_"gas" - V_"liq") \ 
      & approx - n_"gas" dot R T$
    

#formula[$ W = - n_"gas" dot R T $]

== Relacion entre $Delta U$ y $Delta H$
En un proceso a temperatura y presión constantes, $Delta H = Delta U + P_"ext" dot Delta V$

Sabiendo que $Delta U = Q + W$,

y sabiendo que $W = - P_"ext" dot Delta V $ 

Obtenemos:

#formula[$ Delta H = Delta U + P_"ext" dot Delta V$]

 Es una medida del *contenido calórico* del sistema.

#imp[
La relación $Delta H = Delta U + P_"ext" dot Delta V$ es válida para todo proceso que tenga lugar a *temperatura* y *presión constantes*. Resulta muy útil en cambios físicos que comprenden cambios de volumen, como expansión o compresión de un gas.  En un gas ideal: $P_"ext" dot Delta V = Delta n dot R T$
]


#imp[El calor *no* es función de estado, pero *es igual* a una función de estado si el proceso es a $V_"cte"$ o $P_"cte"$.

$V_"cte"$ : $Q_V = Delta U$  

$P_"cte"$ : $Q_P = Delta H$ 
]


== Espontaneidad
#quote[¿Cuáles serán más estables en las condiciones dadas, los 
reactivos o los productos? ]

 - Favorece la formación de *productos* $arrow.r$ Espontaneo
 - Favorece la formación de *reactivos* $arrow.r$ #redbold[No]-Espontaneo

El concepto de espontaneidad tiene una interpretación muy específica en termodinámica. Una reacción química o #highlight[un cambio físico espontáneo es aquel que sucede sin que haya una influencia externa que lo impulse].

#pagebreak()
== Calorimetría

- *Calor específico* [$c_e$]: calor que hay que dar a 1 g (o 1 mol) para subir su $T$ en 1 °C. Unidad: J/(g·°C) o J/(mol·°C).
- *Capacidad calorífica* [$C$]: Calor entregado a una determinada masa (o moles) de una sustancia para que su temperatura aumente 1⁰C. 

#formula[$ Q = m dot c_e dot Delta T $]
*Ecuación general de la calorimetría* → calor *sensible* (hay cambio de $T$).

#warn[No se puede usar cuando el proceso ocurre a $T$ = cte (*calor latente*): cambios de estado de agregación o reacciones químicas.]

*Calorímetro*: recipiente adiabático, por lo que $sum q = 0$.
- A $P$ = cte (calorímetro común): $Q_"reacción" = n dot Delta  H_"reacción"$.
- A $V$ = cte (*bomba calorimétrica*, se usa cuando se generan gases): $Q_"reacción" = n dot Delta U_"reacción"$.

#imp[Calor *sensible* = hay cambio de temperatura. Calor *latente* = $T$ constante (cambio de estado, reacción química).]

#figure(
  image("/files/images/2P/calorimetro.png", width: 80%),
  caption: "Calorimetro (P = cte) y Bomba Calorimétrica (V =cte)"
) <fig:calorimetro>

=== Ejemplos de balance de calor


*Sin reacción*: $Q_"reaccion" eq 0$

Metal a $T_1$ se introduce en un calorímetro a $P_"cte"$ que contiene agua a $T_2 eq.not T_1$. 

#align(center)[
$ underbrace(m_"metal" dot c_(e,"metal") dot (T_f - T_1), Q_"metal") 
+ underbrace(m_"agua" dot c_(e,"agua") dot (T_f - T_2), Q_"agua") 
+ underbrace(underbrace(c_"e,cal" dot m_"cal", C_"cal") dot (T_f - T_2) = 0, Q_"calorimetro") $
]

*Con reacción*: $Q_"reaccion" eq.not 0$

A y B estan a $T_1$ y se introduce en un calorímetro a $P_"cte"$ o $V_"cte"$ que contiene agua a $T_2 eq.not T_1$.

#align(center)[
$ Q_"reacción" + underbrace(m_"agua" dot c_(e,"agua") dot (T_f - T_2), Q_"agua") + underbrace(C_"cal" dot (T_f - T_2), Q_"calorimetro") + underbrace(m_C dot c_(e,C) dot (T_f - T_1), Q_"productos") + underbrace(m_("exceso") dot c_(e,"exc") dot (T_f - T_1), Q_"reactivos en exceso") = 0 $
]

*Presion Constante* : 

$
  Q_p = Delta H arrow.r Delta H_"reaccion" = Q_p / m "ó" Q_p / n 
$

*Volumen Constante* : 
$
  Q_p = Delta U arrow.r Delta H_"reaccion" = Q_p / m "ó" Q_p / n 
$

Finalmente:

$
  Delta H = Delta U +  Delta n dot R T 
$

=== Cambios de estado a $P_"cte"$
#formula[
$
  Q = n dot Delta H_"cambio de  estado"
$
]

#pagebreak()
== Entropía ($S$) 

#def("Entropía")[Medida del *desorden* del sistema. A mayor desorden, mayor $S$. 

La dispersión de la energía y la materia se describe mediante la función de estado termodinámica]

- $S("gas") > S("liquido") > S("solido")$.
- Si en una reacción hay más moles gaseosos en productos que en reactivos, $S$ aumenta.

#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: 100%)[
#highlight[*Segundo principio*]: En todo proceso espontáneo la entropía del *universo* aumenta.

#formula[$ Delta S_U = Delta S_"sistema" + Delta S_"medio" $]

$Delta S_U > 0$ espontáneo, $quad Delta S_U < 0$ no espontáneo, $quad Delta S_U = 0$ equilibrio.
]


#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: auto)[
#highlight[*Tercer principio*]: La entropía de una sustancia pura y cristalina a 0 K vale 0. Por eso se conoce la entropía *absoluta* ($S > 0$ siempre).

#formula[$ Delta S^0_r = sum S^0 ("productos") - sum S^0 ("reactivos") $]
]

#warn[$Delta S^0_r$ *no* es criterio de espontaneidad, porque $Delta S^0_r eq.not Delta S_U$ (solo mide el sistema).]

== Energía libre de Gibbs ($G$) y espontaneidad

Energía libre (disponible) = calor de reacción − energía que el sistema usa para ordenarse/desordenarse. Para $T$ y $P$ constantes:

#formula[$ Delta G = Delta H - T dot Delta S $]

- #redbold[$Delta G = 0$: *equilibrio*].

- #redbold[ $Delta G < 0$: *espontánea*]: El sistema entregó energía al medio y así se produjo la reacción

- #redbold[$Delta G > 0$: *no espontánea*]. El sistema recibió energía al medio y así se  produjo la reacción

Recordando las leyes de Laplace y de Hess y aplicando el concepto de 
energía libre de formación, podemos obtener que

#formula[$ Delta G^0_r = sum Delta G^0_f ("productos") - sum Delta G^0_f ("reactivos") quad quad Delta G^0 = Delta H^0 - T Delta S^0 $]

#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: 50%)[
_Ejemplo:_

$a dot A + b dot B #sym.arrow.r c dot C + d dot D \
Delta G^0_r = (c dot Delta G^0_"f,C" + d dot Delta G^0_"f,D") - (a dot Delta G^0_"f,A" + b dot Delta G^0_"f,B")
$
]

- $Delta H^0$ y $Delta S^0$ se consideran *independientes de $T$* (valores de tabla a 25 °C). $Delta G$ *sí* varía mucho con $T$.
- *Criterio de espontaneidad: $Delta G < 0$* (no $Delta G^0 < 0$).

#let verde = rgb("#D9EAD3")
#let rojo = rgb("#F4CCCC")
#align(center)[
#table(
  columns: (auto, auto, 5cm, auto, auto),
  align: center + horizon,

  table.header(
    [$Delta H$],
    [$Delta S$],
    [$Delta G$],
    [*Reacción*],
    [*Temperatura*],
  ),

  // Fila 1
  table.cell(fill: rojo)[$< 0$],
  table.cell(fill: verde)[$> 0$],
  table.cell(fill: rojo)[$< 0$],
  [Espontánea],
  [Cualquiera],

  // Fila 2
  table.cell(fill: verde)[$> 0$],
  table.cell(fill: rojo)[$< 0$],
  table.cell(fill: verde)[$> 0$],
  [No espontánea],
  [Cualquiera],

  // Fila 3
  table.cell(fill: verde)[$> 0$],
  table.cell(fill: verde)[$> 0$],
  [
    #block(fill: rojo, inset: 3pt, width: 100%)[
      $< 0$ si $Delta H < T Delta S$
    ]
    #block(fill: verde, inset: 3pt, width: 100%)[
      $> 0$ si $Delta H > T Delta S$
    ]
  ],
  [Espontánea \ No espontánea],
  [Alta \ Baja],

  // Fila 4
  table.cell(fill: rojo)[$< 0$],
  table.cell(fill: rojo)[$< 0$],
  [
    #block(fill: rojo, inset: 3pt, width: 100%)[
      $< 0$ si $|Delta H| > |T Delta S|$
    ]
    #block(fill: verde, inset: 3pt, width: 100%)[
      $> 0$ si $|Delta H| < |T Delta S|$
    ]
  ],
  [Espontánea \ No espontánea],
  [Baja \ Alta],
)
]

== Constante de equilibrio

#formula[$ Delta G = Delta G^0 + R T  dot ln Q $]

En equilibrio: $Delta G = 0$ y $Q = K$, entonces

#formula[$ Delta G^0 = - R T dot ln K quad arrow.double quad K = e^(- (Delta G^0)/(R T)) $]

$K$ depende de la temperatura. Si el sistema es gaseoso se obtiene $K_P$; si es solución acuosa, $K_c$; si hay mezcla de gases y disueltos, se la llama simplemente $K$.

#imp[
- $W = - Delta n dot R T$ cuando hay reacción química (solo moles gaseosos).
- Diferenciar calor sensible de calor latente.
 - *Calor sensible*: Se manifiesta cuando hay cambio de temperatura
 - *Calor latente*: Se manifiesta cuando hay cambio de estado de agregación o reacción química (a $T$ = cte).
- Calorímetro a: 
 - $P_"cte"$: $Q_"reacción" = n dot Delta H_"reacción"$. 
 - $V_"cte"$: $Q_"reacción" = n dot Delta U_"reacción"$.
- Criterio de espontaneidad: $Delta G$.
- Unidades: entropía en J/(mol·K), entalpía en kJ/mol → *conversión de unidades*.
- $K_P$ cuando hay gases.
]

== Ejercicios

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*80*. Suponiendo que todos los gases son ideales, calcule la cantidad de trabajorealizado (en Joules) en cada una de las reacciones siguientes. En cadacaso,¿es el trabajo realizado por o sobre el sistema?

a) La oxidación de un mol de HCl (g) a 200°C

4 HCl (g) + O2 (g) → 2 Cl2 (g) + 2 H2O (g)

b) La descomposición de un mol de NO (un contaminante del aire) a 300°C

2 NO (g) → N2 (g) + O2 (g)
]

#figure(
  image("/files/images/2P/ej80.png", width: 66%)
) <fig:ej80>

]

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*81.* Cuando un gas ideal se expande a temperatura constante, no hay cambio en la energía cinética molecular (la energía cinética es proporcional a la temperatura) y tampoco hay cambio en la energía potencial debido a lasinteracciones moleculares (éstas son de cero en un gas ideal); por lo tanto, en laexpansión isotérmica de un gas ideal, ΔU = 0. Suponga que se permiten laexpansión isotérmica de un gas ideal de 2,5 L a 5,5 L en dos etapas: a) contrauna presión externa constante de 3,5 atm hasta alcanzar el equilibrio, y luego b) contra una presión externa constante de 2,5 atm hasta alcanzar el equilibrio. Calcule q y w de esta expansión en dos etapas.

]
#figure(
  image("/files/images/2P/ej81.png", width: 66%)
) <fig:ej80>

]

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*130.* Calcule ΔU para la vaporización de 12,5 g de etanol liquido (C2H5OH) a 1 atm a 78°C para formar etanol gaseoso en las mismas condiciones. Para simplificar, considere que la densidad del etanol liquido es de 0,789 g/mL a esatemperatura y que mediante la ecuación de los gases ideales puede describirseel etanol gaseoso en forma adecuada. El calor de vaporización del mismo es de855 J/g.
]
#figure(
  image("/files/images/2P/ej130.png", width: 66%)
) <fig:ej130>
]

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*A2*. Se tiene 1 mol de un gas a 14 atmósferas y 25°C en un cilindro cerrado con
un émbolo móvil. El gas se expande contra una presión constante de 1
atmósfera. En el equilibrio, la presión y el volumen del gas son 1 atm y 20 L
respectivamente. El calor específico del gas es: 0,026 J/(mol°C). Calcular $Delta U$
para el proceso.
]

#figure(
  image("/files/images/2P/ejA4.png", width: 66%)
) <fig:ejA4>
]

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*A5*. En un calorímetro a presión constante se coloca una muestra de 40 g de un
metal desconocido a 95°C. El calorímetro contiene 80 g de agua a 24°C, siendo
la temperatura final del sistema de 28°C. Calcular el calor específico del metal.
Capacidad calorífica del calorímetro: 12 J/°C
]

#figure(
  image("/files/images/2P/ejA14.png", width: 66%)
) <fig:ejA14>
]



#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*A6*. Una muestra de 2 moles de un ácido orgánico sólido, inicialmente a 17°C se
deja fundir a esa temperatura y después se calienta hasta su temperatura de
ebullición que es 118°C a 1 atm. La muestra se deja evaporar a 118°C y entonces
rápidamente se enfría a 17°C regenerándose el sólido. Calcular el H del
proceso total.
]

#figure(
  image("/files/images/2P/ejA15.png", width: 66%)
) <fig:ejA15>
]