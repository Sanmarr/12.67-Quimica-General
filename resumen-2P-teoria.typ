// ============================================================
//  Resumen 2P - Química I (ITBA)
//  Termodinámica · Celdas galvánicas · Electrólisis · Precipitación y complejos
// ============================================================

#set page(paper: "a4", margin: (x: 2cm, y: 2cm), numbering: "1")
#set text(lang: "es", size: 10.5pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => {
  v(0.6em)
  block(width: 100%, fill: rgb("#1a365d"), inset: 8pt, radius: 3pt,
    text(fill: white, size: 15pt, weight: "bold", it))
  v(0.3em)
}
#show heading.where(level: 2): set text(fill: rgb("#2b6cb0"))

// ---------- Cajas de estilo ----------
// Fórmula destacada (centrada, fondo azul)
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

// ============================================================
= Celdas galvánicas (condiciones normales)

== Idea general

Si se pone una chapita de Zn en $"CuSO"_4(a q)$, ocurre espontáneamente ($Delta G < 0$):

$ "Cu"^(2+) + 2 e^- arrow "Cu" quad quad "Zn" arrow "Zn"^(2+) + 2 e^- $

Los electrones se transfieren sobre la superficie del Zn, así que no se puede aprovechar la energía. Una *celda galvánica (pila)* es el dispositivo armado para transformar la energía de una reacción química en *energía eléctrica*.

#img("pila de Daniell: electrodos de Zn y Cu, puente salino, voltímetro, circuito externo")

== Componentes de la pila

- *Electrodos*: superficies donde ocurren la oxidación y la reducción (por extensión, cada hemicelda).
- *Ánodo (−)*: se produce la *oxidación*; expulsa electrones. *Cátodo (+)*: se produce la *reducción*; atrae electrones.
- Los electrones circulan por el *circuito externo* (cable metálico).
- *Puente salino*: solución saturada de un electrolito fuerte muy soluble ($"Na"^+$, $"K"^+$, $"Cl"^-$, $"NO"_3^-$, $"SO"_4^(2-)$) en agar-agar. Los $(+)$ van al cátodo y los $(-)$ al ánodo, manteniendo la neutralidad eléctrica para que los electrones sigan circulando. La pila se agota antes que el puente salino.
- *Voltímetro*: mide la diferencia de potencial entre ánodo y cátodo.

#imp[#strong[Ánodo = Oxidación, Cátodo = Reducción] (en pila: ánodo −, cátodo +; en electrólisis la polaridad se invierte).]

== Electrodo de referencia (ENH / EEH)

No se puede calcular un potencial absoluto, así que se toma una referencia: el *electrodo normal de hidrógeno* (Pt en contacto con $"H"_2$ 1 atm y $"H"^+$ 1 M, $T$ = 25 °C).

#formula[$ 2 "H"^+(a q) + 2 e^- arrow "H"_2(g) quad quad E^degree_("H"^+ slash "H"_2) = 0 $]

*Condiciones normales*: soluciones 1 M, gases 1 atm (ideales), potenciales tabulados a 25 °C.

Ejemplos: $E^degree_("Cu"^(2+) slash "Cu") = 0","34 "V"$ y $E^degree_("Zn"^(2+) slash "Zn") = -0","76 "V"$. Para la pila de Daniell: $Delta E^degree = 0","34 - (-0","76) = 1","10 "V"$.

== ¿Qué ocurre en cada electrodo?

#imp[
- Se *reduce* el de *mayor* potencial de reducción; se *oxida* el de *menor* potencial de reducción.
- *Siempre* se trabaja con potenciales de *reducción* (aunque la especie se oxide, se "da vuelta" mentalmente la reacción).
- Esto vale siempre, no solo en condiciones normales.
]

#formula[$ Delta E = E_"reduce" - E_"oxida" = E_"cátodo" - E_"ánodo" $]

== Relación entre $Delta E$ y $Delta G$

#formula[$ W = Q dot Delta E quad quad Q = n F quad quad F = 96500 "C/mol" $]

La energía liberada por la reacción se usa como trabajo eléctrico: $Delta G = - W$.

#formula[$ Delta G = - n F Delta E quad quad Delta G^degree = - n F Delta E^degree $]

$Delta G < 0 arrow.l.r.double Delta E > 0$ → celda *espontánea* (galvánica). ($Q$ acá es la carga, no el cociente de reacción.)

== Notación de una celda

#formula[$ "Zn"(s) | "Zn"^(2+) (1 "M") || "Cu"^(2+) (1 "M") | "Cu"(s) $]

#align(center)[ánodo (−) a la *izquierda* #h(0.8em) | interfase #h(0.8em) || puente salino #h(0.8em) cátodo (+) a la *derecha*. Especies disueltas en la misma fase se separan con *coma*.]

// ============================================================
= Celdas galvánicas (condiciones no estándar)

== Ecuación de Nernst

Permite hallar el potencial con cualquier concentración o presión. Partiendo de $Delta G = Delta G^degree + R T ln Q$ y $Delta G = - n F Delta E$:

#formula[$ Delta E = Delta E^degree - (R T)/(n F) ln Q quad arrow.double quad Delta E = Delta E^degree - 0.059/n log Q $]

Con $F = 96500$ C/mol, $R = 8","31$ J/(K·mol), $T = 298$ K y $ln a = 2","3 log a$.

Si todo es 1 M y 1 atm: $log Q = 0$, entonces $Delta E = Delta E^degree$. La reacción es espontánea si $Delta E > 0$.

*Potencial de un electrodo* (siempre planteando la reducción):

#formula[$ E_"electrodo" = E^degree_"electrodo" - 0.059/n log ([upright("Reducido")])/([upright("Oxidado")]) $]

*Ejemplo*: $"Zn"(s) | "Zn"^(2+) (0","5 "M") || "Cu"^(2+) (0","8 "M") | "Cu"(s)$

$ Delta E = 0","34 + 0","76 - 0.059/2 log (0","5)/(0","8) = 1","11 "V" $

(También: $E_"Cu" = 0","337$ V, $E_"Zn" = -0","77$ V, y $Delta E = E_"cátodo" - E_"ánodo" = 1","11$ V.)

== Influencia del pH

Si en la reacción participan $"H"^+$ u $"OH"^-$, el potencial depende del pH. Ejemplo:

$ 2 "IO"_3^- + 10 "I"^- + 12 "H"^+ arrow 6 "I"_2(s) + 6 "H"_2"O"(l) $

$ Delta E = Delta E^degree - 0.059/10 log 1/(["IO"_3^-]^2 ["I"^-]^10 ["H"^+]^12) $

Con $["IO"_3^-]$ y $["I"^-]$ constantes, $Delta E$ es una recta decreciente en el pH: $Delta E = "cte" - (0.059 dot 12)/10 dot "pH"$.

- Existe un pH con $Delta E = 0$ ($Delta G = 0$): *equilibrio*.
- pH menor → $Delta E > 0$, espontánea. pH mayor → $Delta E < 0$, no espontánea.

#img("gráfico de ΔE en función del pH (recta con pendiente negativa, corte con el eje en el pH de equilibrio)")

== Celda de concentración

Mismo electrodo con distinta concentración: $"Ag"^+ (X) | "Ag"$ y $"Ag"^+ (Y) | "Ag"$, con $X < Y$. Como $Delta E^degree = 0$:

#formula[$ Delta E = - 0.059/n log (["Ag"^+]_"ánodo")/(["Ag"^+]_"cátodo") $]

Para que sea galvánica, $Delta E > 0$, o sea $["Ag"^+]_"ánodo" < ["Ag"^+]_"cátodo"$: el electrodo *más diluido* es el *ánodo* y el *más concentrado* es el *cátodo*.

== Constante de equilibrio

En equilibrio $Delta E = 0$ y $Q = K$:

#formula[$ 0 = Delta E^degree - 0.059/n log K quad arrow.double quad K = 10^(n Delta E^degree slash 0.059) $]

// ============================================================
= Celdas electrolíticas

La energía eléctrica se transforma en energía química: se produce una reacción *no espontánea* ($Delta G > 0$, $Delta E < 0$).

- *Ánodo (+)*: *oxidación*; conectado al polo (+) de la fuente de CC, atrae aniones. Los electrones van del electrodo a la fuente.
- *Cátodo (−)*: *reducción*; conectado al polo (−), atrae cationes. Los electrones llegan desde la fuente.
- *Cambia la polaridad* respecto de la pila. Normalmente ánodo y cátodo comparten el recipiente (no hay puente salino).

#img("celda electrolítica: fuente de CC, ánodo (+), cátodo (−), electrolito")

#imp[En una electrólisis de solución acuosa neutra: $["H"^+] = ["OH"^-] = 10^(-7)$ M → *NO es condición estándar*. Hay que calcular los potenciales con Nernst.]

*Criterio*: en el cátodo se reduce la especie de *mayor* potencial; en el ánodo se oxida la de *menor* potencial. El voltaje mínimo a aplicar es $|Delta E|$ con $Delta E = E_"cátodo" - E_"ánodo" < 0$.

== Electrólisis de KI(aq) 0,1 M (electrodos inertes)

- *Cátodo (−)*: compiten $"K"^+$ ($E = -2","98$ V) y $"H"_2"O"$: $2 "H"_2"O" + 2 e^- arrow "H"_2 + 2 "OH"^-$ ($E = -0","42$ V). Se reduce el *agua*.
- *Ánodo (+)*: compiten $2 "I"^- arrow "I"_2 + 2 e^-$ ($E = 0","60$ V) y $2 "H"_2"O" arrow "O"_2 + 4 "H"^+ + 4 e^-$ ($E = 0","82$ V). Se oxida el *$"I"^-$*.
- $Delta E = -0","42 - 0","60 = -1","02$ V → hay que aplicar al menos *1,02 V*.

== Electrólisis de $"CuSO"_4$(aq) 0,1 M

*Con ánodo inerte (Pt o grafito):*
- Cátodo: $"Cu"^(2+) + 2 e^- arrow "Cu"$ ($E = 0","31$ V, gana frente al agua con $-0","42$ V).
- Ánodo: solo puede oxidarse el agua: $2 "H"_2"O" arrow "O"_2 + 4 "H"^+ + 4 e^-$ ($E = 0","82$ V). El $"SO"_4^(2-)$ no se oxida.
- $Delta E = 0","31 - 0","82 = -0","51$ V → mínimo *0,51 V*.

*Con ánodo de Cu (activo):*
- Cátodo: $"Cu"^(2+) + 2 e^- arrow "Cu"$.
- Ánodo: $"Cu" arrow "Cu"^(2+) + 2 e^-$ ($E = 0","31$ V, menor que $0","82$ V del agua). Se oxida el *propio electrodo*: el Cu se disuelve en el ánodo y se deposita en el cátodo.

== Ley de Faraday

La cantidad de sustancia oxidada o reducida es *proporcional a la carga* que pasa por la celda.

#formula[$ Q = i dot t quad quad 1 "mol de" e^- = 1 "Faraday" = 96500 "C" $]

$Q$ en C, $i$ en A (1 A = 1 C/s), $t$ en s. Se usa el *balance de masa* con los coeficientes de la semirreacción ($n$ electrones por mol de sustancia).

#imp[
- Keq: $0 = Delta E^degree - 0.059/n log K$.
- Balance de masa = *coeficientes*.
- Para $E_"electrodo"$ siempre se plantea la *reducción*.
- Electrólisis: cambia la polaridad, cátodo (−) y ánodo (+).
- 1 mol de electrones = 1 Faraday = 96500 C.
]

// ============================================================
= Equilibrio de precipitación

Aplica a sales, ácidos y bases *poco solubles* en agua.

- *Solución saturada*: en equilibrio con soluto precipitado a una $T$ dada. Su concentración es la *solubilidad* ($s$).
- *Insaturada*: concentración menor que la solubilidad. *Sobresaturada*: mayor (muy inestable).
- Lo que se disuelve, se disocia.

#img("solución saturada con soluto precipitado en el fondo")

== Kps y solubilidad

#def([Solubilidad ($s$)])[moles que se disuelven en 1 L de solución saturada a una $T$ dada.]

#def([Kps])[constante del producto de solubilidad; depende de $T$.]

$ "PbCl"_2(s) harpoons.rtlb "Pb"^(2+) + 2 "Cl"^- quad quad K_"ps" = ["Pb"^(2+)] ["Cl"^-]^2 = s (2 s)^2 = 4 s^3 $

$ "CaCO"_3(s) harpoons.rtlb "Ca"^(2+) + "CO"_3^(2-) quad quad K_"ps" = ["Ca"^(2+)] ["CO"_3^(2-)] = s^2 $

#imp[Para saber qué compuesto es *más soluble*, *NO se mira el Kps*: se *calcula $s$* y se compara. El Kps solo sirve cuando la relación entre $s$ y Kps es la misma para ambos.]

== ¿Se forma precipitado?

#formula[$ Q_"ps" = ["Ag"^+]["Cl"^-] quad quad Q_"ps" > K_"ps" arrow.double "precipita" quad quad Q_"ps" < K_"ps" arrow.double "no precipita" $]

*Ejemplo*: 50 mL de $"AgNO"_3$ $10^(-4)$ M + 50 mL de NaCl $10^(-3)$ M, con $K_"ps"("AgCl") = 2 dot 10^(-10)$. Tras mezclar: $["Ag"^+] = 5 dot 10^(-5)$ y $["Cl"^-] = 5 dot 10^(-4)$, entonces $Q_"ps" = 2","5 dot 10^(-8) > K_"ps"$ → *precipita*.

*¿Cuánto agregar para que empiece a precipitar?* $["Cl"^-] = K_"ps" slash ["Ag"^+] = 2 dot 10^(-10) slash 10^(-4) = 2 dot 10^(-6)$ M.

== ¿Cuánto precipita y cuánto queda disuelto?

200 mL de $"AgNO"_3$ 0,2 M + 300 mL de NaCl 0,4 M (volumen final 0,5 L): $["Ag"^+]_0 = 0","08$ M, $["Cl"^-]_0 = 0","24$ M, $Q_"ps" = 0","0192 > K_"ps"$.

*Truco*: como Kps es muy chico, se piensa que *precipita todo* lo que está en defecto y *luego se redisuelve una parte* $x$:

#table(columns: 4, align: center,
  table.header[], [$"AgCl"(s)$], [$"Ag"^+$], [$"Cl"^-$],
  [Tras precipitar todo], [—], [0], [$0","24 - 0","08 = 0","16$],
  [Equilibrio], [—], [$x$], [$0","16 + x$],
)

$ K_"ps" = x (0","16 + x) = 2 dot 10^(-10) arrow.double x = 1","25 dot 10^(-9) "M" $

$["Ag"^+] = 1","25 dot 10^(-9)$ M, $["Cl"^-] approx 0","16$ M, y $n_"AgCl" = 0","08 dot 0","5 = 0","04$ mol precipitados.

== Efecto de ion común

#imp[El efecto de ion común *disminuye la solubilidad* (Le Châtelier: el equilibrio se desplaza hacia el precipitado).]

- $"AgCl"$ en agua: $s = sqrt(2 dot 10^(-10)) = 1","41 dot 10^(-5)$ M.
- $"AgCl"$ en NaCl 0,01 M: $K_"ps" = s' (0","01 + s') approx s' dot 0","01 arrow.double s' = 2 dot 10^(-8)$ M.

Siempre se desprecia $s'$ frente a la concentración del ion común (y se verifica que $s' << 0","01$ y $s' << 1","41 dot 10^(-5)$).

== Cómo disolver un precipitado

#table(columns: (auto, 1fr), align: left,
  table.header[*Método*][*Explicación*],
  [*Temperatura*], [Disolución endotérmica → se favorece *subiendo* $T$ (ej: $"KClO"_3$). Exotérmica → se favorece *bajando* $T$ (ej: $"Ce"_2("SO"_4)_3$).],
  [*pH*], [Si el precipitado tiene carácter básico (ej: $"Mg"("OH")_2$, $"CaCO"_3$) se agrega un *ácido*: consume $"OH"^-$ y el equilibrio se desplaza hacia la derecha.],
  [*Redox*], [Si algún ion es oxidante o reductor (ej: $"AgI"$): al agregar Zn se reduce el $"Ag"^+$, o con $"Cr"_2"O"_7^(2-)$ se oxida el $"I"^-$. Se disuelve porque el equilibrio se desplaza a la derecha.],
  [*Complejos*], [Se forma un ion complejo con el catión (ver más abajo).],
)

// ============================================================
= Precipitación de sulfuros

Los sulfuros iónicos son muy poco solubles (salvo $"Na"_2"S"$, $"K"_2"S"$, $("NH"_4)_2"S"$) y su solubilidad depende mucho del *pH*.

Se burbujea $"H"_2"S"$ hasta saturar: $["H"_2"S"]_"sat" = 0","1$ M (constante).

$ "H"_2"S" + "H"_2"O" harpoons.rtlb "HS"^- + "H"_3"O"^+ quad (K_(a 1)) quad quad "HS"^- + "H"_2"O" harpoons.rtlb "S"^(2-) + "H"_3"O"^+ quad (K_(a 2)) $

#formula[$ "PI"_("H"_2"S") = K_(a 1) K_(a 2) ["H"_2"S"]_"sat" = ["S"^(2-)] ["H"_3"O"^+]^2 $]

*Producto iónico del ácido sulfhídrico*: relaciona $["S"^(2-)]$ con el pH.

Para precipitar un catión como sulfuro (ej: CuS) se *aumenta el pH*: al agregar base se desplazan hacia la izquierda los equilibrios de hidrólisis del $"S"^(2-)$, aumenta $["S"^(2-)]$ y se obtiene más precipitado.

// ============================================================
= Complejos

#def("Ion complejo")[ion central (generalmente un elemento de transición) unido a *ligandos* (iones negativos o moléculas) por *uniones covalentes dativas*: el ion central tiene orbitales $d$ vacíos y los ligandos tienen pares de electrones libres. El número de ligandos es el *número de coordinación*.]

#table(columns: 4, align: center,
  table.header[*Ion complejo*][*Ion central*][*Ligando*][*N.º de coordinación*],
  [$"Ag"("NH"_3)_2^+$], [$"Ag"^+$], [$"NH"_3$], [2],
  [$"AgCl"_3^(2-)$], [$"Ag"^+$], [$"Cl"^-$], [3],
  [$"Fe"("CN")_6^(3-)$], [$"Fe"^(3+)$], [$"CN"^-$], [6],
  [$"Fe"("CN")_6^(4-)$], [$"Fe"^(2+)$], [$"CN"^-$], [6],
  [$"Cu"("NH"_3)_4^(2+)$], [$"Cu"^(2+)$], [$"NH"_3$], [4],
  [$"Cd"("NH"_3)_4^(2+)$], [$"Cd"^(2+)$], [$"NH"_3$], [4],
)

Los iones complejos van acompañados de iones de carga contraria formando *compuestos complejos*, que son electrolitos fuertes muy solubles (se disocian por completo). Luego el ion complejo se disocia para alcanzar el equilibrio:

$ "Ag"("NH"_3)_2^+ harpoons.rtlb "Ag"^+ + 2 "NH"_3 quad quad K_i = (["Ag"^+]["NH"_3]^2)/(["Ag"("NH"_3)_2^+]) $

#formula[$ K_f = (["Ag"("NH"_3)_2^+])/(["Ag"^+]["NH"_3]^2) quad quad K_i = 1/K_f $]

$K_i$: constante de inestabilidad (o disociación). $K_f$: constante de formación. Los complejos son muy estables: *$K_f$ muy alta, $K_i$ muy baja*.

*Ejemplo*: $"K"_3"Fe"("CN")_6$ $10^(-3)$ M, con $K_i = 1","3 dot 10^(-44)$. Se disocia el compuesto ($3 "K"^+ + "Fe"("CN")_6^(3-)$) y luego el complejo:

$ K_i = (x (6 x)^6)/(10^(-3) - x) approx (46656 x^7)/10^(-3) arrow.double x = 4","31 dot 10^(-8) "M" $

($x << 10^(-3)$ porque $K_i$ es muy chica.) Resultado: $["Fe"^(3+)] = 4","31 dot 10^(-8)$ M, $["CN"^-] = 2","59 dot 10^(-7)$ M, $["Fe"("CN")_6^(3-)] approx 10^(-3)$ M, $["K"^+] = 3 dot 10^(-3)$ M.

== Complejos y disolución de precipitados

Al agregar un ligando que forme un complejo con el catión, baja $["catión"]$ y el precipitado se disuelve. Ejemplo:

$ "AgCl"(s) harpoons.rtlb "Ag"^+ + "Cl"^- quad quad "Ag"^+ + 2 "NH"_3 harpoons.rtlb "Ag"("NH"_3)_2^+ $

Se consume $"Ag"^+$, entonces *aumenta la solubilidad* del AgCl.

#imp[
- Para saber quién es más soluble: *NO* miro Kps, *calculo la solubilidad*.
- Efecto de ion común → *disminuye* la solubilidad.
- Los *nitratos* son muy solubles.
- Para saber si precipita: comparo $Q_"ps"$ con $K_"ps"$.
- Sulfuros: $"PI"_("H"_2"S") = ["H"_3"O"^+]^2 ["S"^(2-)]$.
- Complejos: $K_f = 1 slash K_i$.
- Recordar *cambios de volumen y diluciones* al mezclar soluciones.
]
