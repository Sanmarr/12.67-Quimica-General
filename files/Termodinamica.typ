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

#def("Función de estado")[su variación depende *solo* del estado inicial y final, *no* del camino recorrido. Ejemplo: la temperatura.]

#def("Calor (q) y trabajo (W)")[son formas de energía que aparecen en un cambio de estado. *NO son funciones de estado* (dependen del camino).]

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

== Primer principio y convención de signos

_Energía es la capacidad para realizar trabajo o transferir calor._

#redbold[La energía del universo es constante].

#formula[$ Delta U = Q + W $]

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

== Trabajo de expansión / compresión (solo gases: $P_"ext"$ = cte, $T$ = cte)

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
      &= - P_"ext" dot (n_f R T - n_0 R T) \ 
      &= - Delta n dot R T$

#formula[$ W = - (n_"f" - n_"0") dot R T $]

donde $Delta n = n_f - n_0$ y *solo cuentan los moles gaseosos*.

=== Cambio de Estado de Agregacion

Interesa si  $V_"líq" << V_"gas"$

$   W &= - P_"ext" dot (V_f - V_0) \
      &= - P_"ext" dot (V_"gas" - V_"liq") \ 
      & approx - n_"gas" dot R T$
    

#formula[$ W = - n_"gas" dot R T $]


== Entalpía ($H$)

La entalpía se define como una combinación de tres funciones de estado.
Es una función de estado. 

No se puede determinar de manera absoluta cuál es su valor. Se conoce con 
respecto a un estado de referencia.

#formula[$ underbrace(H = U + P V, "No puedo saberlo!") quad quad Delta H = Delta U + Delta n dot  R T $]

 Es una medida del *contenido calórico* del sistema.

=== Proceso a $V_"cte"$:
$W = 0$

#formula[$ Delta U = Q_V $]

=== Proceso a $P_"cte"$:

#formula[$ Q_P = Delta H quad quad Delta U = Delta H - P Delta V $]

#imp[El calor *no* es función de estado, pero *es igual* a una función de estado si el proceso es a $V$ = cte ($q_V = Delta U$) o a $P$ = cte ($q_P = Delta H$).]

== Termoquímica

Estudia el intercambio de calor en una reacción química ($P$ = cte y $T$ = cte): $q_P = Delta H$.

- $Delta H > 0$: reacción *endotérmica*.
- $Delta H < 0$: reacción *exotérmica*.

*Estado estándar o normal*: gas puro a 1 atm y comportamiento ideal; sólido y líquido puros a 1 atm; solución 1 M a 1 atm. (Hay infinitos estados estándar, uno por cada $T$; las tablas están a 25 °C.)

#def([Entalpía estándar de formación ($Delta H^0_f$)])[variación de entalpía al obtener *un mol* de compuesto a partir de sus elementos en su forma más estable a 1 atm.]

#formula[$ Delta H^0_f ("elementos en su estado más estable") = 0 $]

#box(stroke: 1pt, inset: 6pt, radius: 3pt, width: auto)[
Ejemplos: 

$"C"(s) + "O"_2(g) arrow "CO"_2(g)$ \

 $1/2 dot "N"_2(g) + 3/2 dot "H"_2(g) arrow "NH"_3(g)$.\
 
]
=== Leyes de Laplace y de Hess (valen para cualquier función de estado)

- *Laplace*: invertir la reacción cambia el signo. $Delta H_(A arrow B) = - Delta H_(B arrow A)$
- *Hess*: los $Delta H$ de reacciones sucesivas se suman. $Delta H_(A arrow C) = Delta H_(A arrow B) + Delta H_(B arrow C)$

Combinándolas, para $a "A" + b "B" arrow c "C" + d "D"$:

#formula[$ Delta H^0_r = sum Delta H^0_f ("productos") - sum Delta H^0_f ("reactivos") $]

#formula[$ Delta H^0_r = c Delta H^0_f "C" + d Delta H^0_f "D" - a Delta H^0_f "A" - b Delta H^0_f "B" $]

(Igual para $Delta G^0_r$ y $Delta S^0_r$ con sus valores tabulados.)

== Calorimetría

- *Calor específico* [$c_e$]: calor que hay que dar a 1 g (o 1 mol) para subir su $T$ en 1 °C. Unidad: J/(g·°C) o J/(mol·°C).
- *Capacidad calorífica* [$C$]: Calor entregado a una determinada masa (o moles) de una sustancia para que su temperatura aumente 1⁰C. 

#formula[$ Q = m dot c_e dot Delta T $]
*Ecuación general de la calorimetría* → calor *sensible* (hay cambio de $T$).

#warn[No se puede usar cuando el proceso ocurre a $T$ = cte (*calor latente*): cambios de estado de agregación o reacciones químicas.]

*Calorímetro*: recipiente adiabático, por lo que $sum q = 0$.
- A $P$ = cte (calorímetro común): $q_"reacción" = n dot Delta  H_"reacción"$.
- A $V$ = cte (*bomba calorimétrica*, se usa cuando se generan gases): $q_"reacción" = n dot Delta U_"reacción"$.

#imp[Calor *sensible* = hay cambio de temperatura. Calor *latente* = $T$ constante (cambio de estado, reacción química).]

#figure(
  image("/files/images/2P/calorimetro.png", width: 80%),
  caption: "Calorimetro (P = cte) y Bomba Calorimétrica (V =cte)"
) <fig:calorimetro>

=== Ejemplos de balance de calor

*Sin reacción* (metal a $T_1$ en calorímetro con agua a $T_2$):
#align(center)[
#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: auto)[
$ m_"metal" dot c_(e,"metal") dot (T_f - T_1) + m_"agua" dot c_(e,"agua") dot (T_f - T_2) + underbrace(c_"e,cal" dot m_"cal", C_"cal") dot (T_f - T_2) = 0 $
]]

*Con reacción* (reactivos a $T_1$, agua a $T_2$):

#align(center)[
#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: auto)[$ Q_"reacción" + underbrace(m_"agua" dot c_(e,"agua") dot (T_f - T_2), Q_"agua") + underbrace(C_"cal" dot (T_f - T_2), Q_"cal") + underbrace(m_C dot c_(e,C) dot (T_f - T_1), Q_"productos") + underbrace(m_("exceso") dot c_(e,"exc") dot (T_f - T_1), Q_"reactivos en exceso") = 0 $
]]

Luego: $Delta H_"reacción" = q_"reacción" / n$ (o dividido por $m$). Y para pasar de $Delta U$ a $Delta H$:

$ Delta H = Delta U + Delta n R T quad ("solo moles gaseosos") $

*Determinación de $C_"cal"$* (agua a $T_1$ sobre agua a $T_2$ en el calorímetro):
#formula[$ m_1 c_e (T_f - T_1) + m_2 c_e (T_f - T_2) + C_"cal" (T_f - T_2) = 0 $]

*Cambio de estado de agregación* (a $P$ = cte):

#formula[$ \Q = n dot Delta H_"cambio de estado" $]

$Delta H_"solidif" &= - Delta H_"fusión" \
Delta H_"sublim"   &= - Delta H_"volat" \
Delta H_"conden"     &= - Delta H_"vaporiz"$. \ 

/// #img("calorímetro a P = cte y bomba calorimétrica a V = cte")

== Entropía ($S$) y segundo y tercer principio

#def("Entropía")[medida del *desorden* del sistema. A mayor desorden, mayor $S$. Función de estado. Unidad: J/(mol·K).]

- $S("H"_2"O"(g)) > S("H"_2"O"(l)) > S("H"_2"O"(s))$.
- Si en una reacción hay más moles gaseosos en productos que en reactivos, $S$ aumenta.

#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: auto)[
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

#formula[$ Delta G = Delta H - T Delta S $]

- #redbold[$Delta G = 0$: *equilibrio*].

- #redbold[ $Delta G < 0$: *espontánea*]: El sistema entregó energía al medio y así se produjo la reacción, sin necesitar que le dieran energía

- #redbold[$Delta G > 0$: *no espontánea*]. El sistema recibió energía al medio y así se  produjo la reacción, necesitando el sistema que le dieran energía

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
 - $P_"cte"$: $q_"reacción" = n dot Delta H_"reacción"$. 
 - $V_"cte"$: $q_"reacción" = n dot Delta U_"reacción"$.
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