// ---------- Cajas de estilo ----------
// Fórmula destacada (centrada, fondo azul)
#let redbold(body) = text(fill: red)[*#body*]

#let formula(body) = align(center,
  block(fill: rgb("#e8f1ff"), stroke: 1pt + rgb("#2b6cb0"), inset: 9pt, radius: 4pt, body))

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

- *Sistema*: porción de materia en estudio. *Medio o alrededores*: lo que lo rodea. *Universo* = sistema + medio.
- Sistema *abierto*: intercambia materia con el medio. *Cerrado*: no intercambia materia. *Adiabático*: cerrado que no intercambia calor. *Aislado*: cerrado que no interacciona con el medio.
- *Variables de estado* (= funciones de estado = propiedades termodinámicas): P, V, T, composición, masa, densidad, $U$, $H$, $S$, $G$.

#def("Función de estado")[su variación depende *solo* del estado inicial y final, *no* del camino recorrido. Ejemplo: la temperatura.]

#def("Calor (q) y trabajo (W)")[son formas de energía que aparecen en un cambio de estado. *NO son funciones de estado* (dependen del camino).]

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

La energía del universo es constante.

#formula[$ Delta U = q + W $]

#table(columns: (1fr, 1fr, 1fr), align: center,
  table.header[*Magnitud*][*> 0*][*< 0*],
  [Calor $q$], [El sistema *recibe* calor (endotérmico)], [El sistema *cede* calor (exotérmico)],
  [Trabajo $W$], [El medio hace trabajo sobre el sistema (*compresión*)], [El sistema hace trabajo sobre el medio (*expansión*)],
)

#img("esquema del sistema con flechas de q y W entrando/saliendo")

== Trabajo de expansión / compresión (solo gases, $P_"ext"$ = cte)

#formula[$ W = - P_"ext" Delta V = - P_"ext" (V_f - V_0) $]

- Expansión: $V$ aumenta, $W < 0$. Compresión: $V$ disminuye, $W > 0$. Por eso el signo $(-)$.
- *Con reacción química* (parte de un equilibrio con el medio y llega a otro, $P = P_"ext"$):

#formula[$ W = - Delta n dot R T $]

donde $Delta n = n_f - n_0$ y *solo cuentan los moles gaseosos*.

- *Cambio de estado de agregación* (interesa si hay gas): como $V_"líq" << V_"gas"$,

#formula[$ W = - n_"gas" R T $]

#img("diagrama del pistón con gas (Pext, T)")

== Entalpía ($H$)

#formula[$ H = U + P V quad quad Delta H = Delta U + Delta n R T $]

Es función de estado (combinación de tres funciones de estado). Se mide respecto de un estado de referencia. Es una medida del *contenido calórico* del sistema.

*Proceso a $V$ = cte* ($W = 0$):
#formula[$ Delta U = q_V $]

*Proceso a $P$ = cte:*
#formula[$ q_P = Delta H quad quad Delta U = Delta H - P Delta V $]

#imp[El calor *no* es función de estado, pero *es igual* a una función de estado si el proceso es a $V$ = cte ($q_V = Delta U$) o a $P$ = cte ($q_P = Delta H$).]

== Termoquímica

Estudia el intercambio de calor en una reacción química ($P$ = cte y $T$ = cte): $q_P = Delta H$.

- $Delta H > 0$: reacción *endotérmica*.
- $Delta H < 0$: reacción *exotérmica*.

*Estado estándar o normal*: gas puro a 1 atm y comportamiento ideal; sólido y líquido puros a 1 atm; solución 1 M a 1 atm. (Hay infinitos estados estándar, uno por cada $T$; las tablas están a 25 °C.)

#def([Entalpía estándar de formación ($Delta H^degree_f$)])[variación de entalpía al obtener *un mol* de compuesto a partir de sus elementos en su forma más estable a 1 atm.]

#formula[$ Delta H^degree_f ("elementos en su estado más estable") = 0 $]

Ejemplos: $"C"(s) + "O"_2(g) arrow "CO"_2(g)$ #h(1em) y #h(1em) $1/2 "N"_2(g) + 3/2 "H"_2(g) arrow "NH"_3(g)$.

=== Leyes de Laplace y de Hess (valen para cualquier función de estado)

- *Laplace*: invertir la reacción cambia el signo. $Delta H_(A arrow B) = - Delta H_(B arrow A)$
- *Hess*: los $Delta H$ de reacciones sucesivas se suman. $Delta H_(A arrow C) = Delta H_(A arrow B) + Delta H_(B arrow C)$

Combinándolas, para $a "A" + b "B" arrow c "C" + d "D"$:

#formula[$ Delta H^degree_r = sum Delta H^degree_f ("productos") - sum Delta H^degree_f ("reactivos") $]

#formula[$ Delta H^degree_r = c Delta H^degree_f "C" + d Delta H^degree_f "D" - a Delta H^degree_f "A" - b Delta H^degree_f "B" $]

(Igual para $Delta G^degree_r$ y $Delta S^degree_r$ con sus valores tabulados.)

== Calorimetría

- *Calor específico* $c_e$: calor que hay que dar a 1 g (o 1 mol) para subir su $T$ en 1 °C. Unidad: J/(g·°C) o J/(mol·°C).
- *Capacidad calorífica* $C = m dot c_e$ (J/°C).

#formula[$ q = m dot c_e dot Delta T $]
*Ecuación general de la calorimetría* → calor *sensible* (hay cambio de $T$).

#warn[No se puede usar cuando el proceso ocurre a $T$ = cte (*calor latente*): cambios de estado de agregación o reacciones químicas.]

*Calorímetro*: recipiente adiabático, por lo que $sum q = 0$.
- A $P$ = cte (calorímetro común): $q_"reacción" = n Delta H_"reacción"$.
- A $V$ = cte (*bomba calorimétrica*, se usa cuando se generan gases): $q_"reacción" = n Delta U_"reacción"$.

#imp[Calor *sensible* = hay cambio de temperatura. Calor *latente* = $T$ constante (cambio de estado, reacción química).]

=== Ejemplos de balance de calor

*Sin reacción* (metal a $T_1$ en calorímetro con agua a $T_2$):
#formula[$ m_"metal" c_(e,"metal") (T_f - T_1) + m_"agua" c_(e,"agua") (T_f - T_2) + C_"cal" (T_f - T_2) = 0 $]

*Con reacción* (reactivos a $T_1$, agua a $T_2$):
#formula[$ q_"reacción" + m_"agua" c_(e,"agua") (T_f - T_2) + C_"cal" (T_f - T_2) + m_C c_(e,C) (T_f - T_1) + m_("exceso") c_(e,"exc") (T_f - T_1) = 0 $]

Luego: $Delta H_"reacción" = q_"reacción" / n$ (o dividido por $m$). Y para pasar de $Delta U$ a $Delta H$:

#formula[$ Delta H = Delta U + Delta n R T quad ("solo moles gaseosos") $]

*Determinación de $C_"cal"$* (agua a $T_1$ sobre agua a $T_2$ en el calorímetro):
#formula[$ m_1 c_e (T_f - T_1) + m_2 c_e (T_f - T_2) + C_"cal" (T_f - T_2) = 0 $]

*Cambio de estado de agregación* (a $P$ = cte):
#formula[$ q = n dot Delta H_"cambio de estado" $]
$Delta H_"solidif" = - Delta H_"fusión"$, #h(0.8em) $Delta H_"sublim" = - Delta H_"volat"$, #h(0.8em) $Delta H_"cond" = - Delta H_"vaporiz"$.

#img("calorímetro a P = cte y bomba calorimétrica a V = cte")

== Entropía ($S$) y segundo y tercer principio

#def("Entropía")[medida del *desorden* del sistema. A mayor desorden, mayor $S$. Función de estado. Unidad: J/(mol·K).]

- $S("H"_2"O"(g)) > S("H"_2"O"(l)) > S("H"_2"O"(s))$.
- Si en una reacción hay más moles gaseosos en productos que en reactivos, $S$ aumenta.

*Segundo principio*: en todo proceso espontáneo la entropía del *universo* aumenta.

#formula[$ Delta S_U = Delta S_"sistema" + Delta S_"medio" $]

$Delta S_U > 0$ espontáneo, $quad Delta S_U < 0$ no espontáneo, $quad Delta S_U = 0$ equilibrio.

*Tercer principio*: la entropía de una sustancia pura y cristalina a 0 K vale 0. Por eso se conoce la entropía *absoluta* ($S > 0$ siempre).

#formula[$ Delta S^degree_r = sum S^degree ("productos") - sum S^degree ("reactivos") $]

#warn[$Delta S^degree_r$ *no* es criterio de espontaneidad, porque $Delta S^degree_r eq.not Delta S_U$ (solo mide el sistema).]

== Energía libre de Gibbs ($G$) y espontaneidad

Energía libre (disponible) = calor de reacción − energía que el sistema usa para ordenarse/desordenarse. Para $T$ y $P$ constantes:

#formula[$ Delta G = Delta H - T Delta S $]

- $Delta G < 0$: *espontánea*.
- $Delta G > 0$: *no espontánea*.
- $Delta G = 0$: *equilibrio*.

#formula[$ Delta G^degree_r = sum Delta G^degree_f ("productos") - sum Delta G^degree_f ("reactivos") quad quad Delta G^degree = Delta H^degree - T Delta S^degree $]

- $Delta H^degree$ y $Delta S^degree$ se consideran *independientes de $T$* (valores de tabla a 25 °C). $Delta G$ *sí* varía mucho con $T$.
- *Criterio de espontaneidad: $Delta G < 0$* (no $Delta G^degree < 0$).

#table(columns: 5, align: center + horizon,
  table.header[$Delta H$][$Delta S$][$Delta G$][*Reacción*][*Temperatura*],
  [$< 0$], [$> 0$], [$< 0$], [Espontánea], [Cualquiera],
  [$> 0$], [$< 0$], [$> 0$], [No espontánea], [Cualquiera],
  [$> 0$], [$> 0$], [$< 0$ si $Delta H < T Delta S$ \ $> 0$ si $Delta H > T Delta S$], [Espontánea \ No espontánea], [Alta \ Baja],
  [$< 0$], [$< 0$], [$< 0$ si $|Delta H| > |T Delta S|$ \ $> 0$ si $|Delta H| < |T Delta S|$], [Espontánea \ No espontánea], [Baja \ Alta],
)

== Constante de equilibrio

#formula[$ Delta G = Delta G^degree + R T ln Q $]

En equilibrio: $Delta G = 0$ y $Q = K$, entonces

#formula[$ Delta G^degree = - R T ln K quad arrow.double quad K = e^(- Delta G^degree slash (R T)) $]

$K$ depende de la temperatura. Si el sistema es gaseoso se obtiene $K_P$; si es solución acuosa, $K_c$; si hay mezcla de gases y disueltos, se la llama simplemente $K$.

#imp[
- $W = - Delta n R T$ cuando hay reacción química (solo moles gaseosos).
- Diferenciar calor sensible de calor latente.
- Calorímetro a $P$ = cte: $q_"reacción" = n Delta H_"reacción"$. A $V$ = cte: $q_"reacción" = n Delta U_"reacción"$.
- Criterio de espontaneidad: $Delta G$.
- Unidades: entropía en J/(mol·K), entalpía en kJ/mol → *conversión de unidades*.
- $K_P$ cuando hay gases.
]