// ---------- Cajas de estilo ----------
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

= Electroquímica

== Celdas galvánicas (condiciones estándar)

=== Ejemplo introductorio

Si se coloca una chapita de Zn en una solución acuosa de $"CuSO"_4$ (azul), con el tiempo la solución se decolora (hay menos $"Cu"^(2+)$) y sobre la chapita aparece una capa rojiza de Cu metálico. Entonces ocurrieron dos reacciones:

$ "Cu"^(2+) + 2 e^- arrow.r "Cu" quad quad "(se consumen electrones)" $

$ "Zn" arrow.r "Zn"^(2+) + 2 e^- quad quad "(se generan electrones)" $

La transferencia de electrones se produce sobre una *superficie conductora* (el Zn metálico). *Los electrones no se mueven por la solución* . El proceso es #redbold[espontáneo ($Delta G < 0$)], pero así no se puede aprovechar la energía como energía eléctrica.

#def("Celda galvánica (pila)")[Dispositivo armado de tal manera que la energía liberada en una reacción química (espontánea) se transforma en energía eléctrica.]

=== Pila de Daniell



#figure(
  image("/files/images/2P/pila.png", width: 100%)
) <fig:pila>

Los electrones migran por el *circuito externo* (cable metálico) y así se obtiene la energía eléctrica.

#let rojo = rgb("#F4CCCC")
#let azul = rgb("#ccd3f4")

- *Electrodos*: superficies donde ocurren las reacciones de oxidación y de reducción. Por extensión, cada *hemicelda* recibe el mismo nombre.
- #highlight(fill: azul)[*Ánodo*: se produce la *oxidación*]. Expulsa electrones, es el polo #highlight(fill: azul)[*(−)*].
- #highlight(fill: rojo)[*Cátodo*: se produce la *reducción*]. Atrae electrones, es el polo #highlight(fill: rojo)[*(+)*].
- *Voltímetro*: mide la diferencia de potencial entre ánodo y cátodo.

#imp[Regla mnemotécnica _RED CAT_: la *reducción ocurre en el cátodo*.]

#table(columns: (auto, 1fr, 1fr), align: center + horizon,
  table.header[*Electrodo*][#highlight(fill: azul)[*Ánodo (Zn)*]][#highlight(fill: rojo)[*Cátodo (Cu)*]],
  [Proceso], [#highlight(fill: azul)[Oxidación]: $"Zn" arrow.r "Zn"^(2+) + 2 e^-$], [#highlight(fill: rojo)[Reducción]: $"Cu"^(2+) + 2 e^- arrow.r "Cu"$],
  [Polaridad], [#highlight(fill: azul)[(−)]], [#highlight(fill: rojo)[(+)]],
  [Cargas + en la solución], [Aumentan (cada segundo hay más)], [Disminuyen (cada segundo hay menos)],
  [El electrodo], [Se va haciendo más "flaquita"], [Se va haciendo más "gordita"],
)

==== Puente salino

A medida que ocurre la reacción, en el cátodo hay menos cargas positivas y en el ánodo hay más. Entonces los electrones son menos atraídos por el cátodo y más por el ánodo, y *dejarían de circular*. Para compensar las cargas se incorpora el puente salino.

- Es una #highlight[solución *saturada de un electrolito fuerte y muy soluble*] ($"Na"^+$, $"K"^+$, $"Cl"^-$, $"NO"_3^-$, $"SO"_4^(2-)$) sobre un soporte (agar-agar).
- Las cargas (+) van al cátodo y las (−) al ánodo: #highlight[las soluciones permanecen *eléctricamente neutras*] y los electrones siguen circulando por el circuito externo.
- Asegura que no se acabe la pila rápidamente: #highlight[la pila se agota antes que el puente salino].

=== Electrodo estándar de hidrógeno (ENH o EEH)

#def("Diferencia de potencial (potencial, voltaje, FEM o tensión)")[Es el impulso que necesita una carga eléctrica para fluir por el conductor de un circuito. La corriente cesa cuando ambos puntos igualan su potencial eléctrico.]

*No se puede calcular un potencial absoluto*, por eso se toma uno de *referencia*: el ENH.

- Sobre una superficie de Pt (inatacable por el HCl; _atacar = oxidar_) están en contacto $"H"_2$ (g) y $"H"^+$ (aq).
- $"HCl"$: 1 M, $"H"_2$: 1 atm, $T$ = 25 °C.

#formula[$ 2 "H"^+ ("aq") + 2 e^- arrow.r "H"_2 ("g") quad quad E^0_("H"^+ \/ "H"_2) = 0 $]

#figure(
  image("/files/images/2P/pt.png", width: 25%),
  caption: "Electrodo Normal de Hidrógeno"
) <fig:pt>

#imp[Cuanto *mayor* es el potencial de reducción de una especie, mayor tendencia tiene a reducirse y es *más oxidante*. Cuanto menor es, es menos oxidante.]

*Condiciones normales o estándar*: soluciones 1 M, gases a 1 atm (comportamiento ideal). Los potenciales estándar están tabulados a 25 °C (libro de Whitten).

=== Cómo se miden los potenciales estándar

#figure(
  image("/files/images/2P/electrodoHidrogeno.png", width: 70%)
) <fig:electrodoHidrogeno>

*Cu con el ENH*: el $"Cu"^(2+)$ se reduce y el $"H"_2$ se oxida. El voltímetro mide 0,34 V.

#figure(
  image("/files/images/2P/ex-2.png", width: 80%)
) <fig:ex-2>

#formula[$ Delta E^0 = E^0_("Cu"^(2+) \/ "Cu") - E^0_("H"^+ \/ "H"_2) = 0.337 "V" quad arrow.r quad E^0_("Cu"^(2+) \/ "Cu") = 0.34 "V" $]

*Zn con el ENH*: el Zn se oxida y el $"H"^+$ se reduce. El voltímetro mide 0,76 V.


#figure(
  image("/files/images/2P/ex-1.png", width: 80%)
) <fig:ex-1>

#formula[$ Delta E^0 = E^0_("H"^+ \/ "H"_2) - E^0_("Zn"^(2+) \/ "Zn") = 0.76 "V" quad arrow.r quad E^0_("Zn"^(2+) \/ "Zn") = -0.763 "V" $]


#redtext[Siempre se escribe el potencial de *reducción*, entonces "miro al revés" la reacción que se oxida.]

No hace falta conectar siempre el ENH: con la pila de Daniell ($Delta E^0 = 1.10$ V) y el $E^0_("Cu"^(2+) \/ "Cu")$ ya conocido:

$ E^0_("Zn"^(2+) \/ "Zn") = 0.34 "V" - 1.10 "V" = -0.76 "V" $

=== ¿Qué reacción ocurre en cada electrodo?

#box(stroke: 1pt, inset: 10pt, width: 100%, fill: rgb("#dffce4"))[
#align(center)[
Si se conectan dos electrodos cualesquiera, *siempre se reduce el que tiene mayor potencial de reducción* y se oxida el que tiene menor.
]]

Ejemplo:

$ "Cu"^(2+) ("aq") + "Zn" ("s") arrow.l.r "Cu" ("s") + "Zn"^(2+) ("aq") quad quad Delta E^0 = 0.34 - (-0.76) = 1.10 "V" $

$
  E^0_("Zn"^(2+) \/ "Zn") &= -0.76 \
  E^0_("Cu"^(2+) \/ "Cu") &= 0.34 \
  E^0_("oxidante") = E^0_("Zn"^(2+) \/ "Zn") quad &< quad E^0_("Cu"^(2+) \/ "Cu") = E^0_("reductor")
  
$



#formula[$ Delta E = E_"reduce" - E_"oxida" = E_"cátodo" - E_"ánodo" $]

#imp[
Lo siguiente es *siempre válido, no solo en condiciones normales*:
- Se reduce el de mayor potencial de reducción; se oxida el de menor.
- La reacción de reducción se escribe con su potencial de reducción.
- La reacción de oxidación *también* se plantea con el potencial de *reducción* (mentalmente "damos vuelta" la reacción).
- $Delta E$ de la celda = potencial de reducción del que se reduce $-$ potencial de reducción del que se oxida (dado vuelta).
]

=== Relación entre $Delta E$ y $Delta G$: espontaneidad

$ W = Q dot Delta E quad quad Q = n dot F quad arrow.r quad W = n dot F dot Delta E $

- $W$: trabajo eléctrico (J).
- $Q$: carga eléctrica que circula (C). _No confundir con el cociente de reacción ni con calor._
- $Delta E$: diferencia de potencial (V), la fuerza impulsora para que la carga circule.
- $F$: constante de Faraday, 96500 C/mol.

La energía entregada por la reacción se usa como trabajo eléctrico: $Delta G = - W$ (el sistema entrega energía libre; los signos son opuestos).

#formula[$ Delta G = - n dot F dot Delta E quad quad quad Delta G^0 = - n dot F dot Delta E^0 $]

$Delta G < 0$ (espontánea) $arrow.double$ $Delta E > 0$.


=== Ejercicios

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*50*. El potencial estándar de reducción del par: Cl2(g)/Cl- es 1,36 V; Ag+/Ag(s) es 
0,799 V; Cu+/Cu(s) es 0,521 V; Cu2+/Cu(s) es 0,337 V; Fe2+/Fe(s) es -0,44 V; 
Na+/Na(s) es -2,71 V; K+/K(s) es -2,925 V. a) Ordene los agentes oxidantes 
según su fuerza creciente. b) ¿Cuáles de los agentes oxidantes oxidarán al Cu 
en condiciones de estado estándar? 
]

#figure(
  image("/files/images/2P/ej-50.png", width: 100%)
) <fig:ej-50>
]

#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*58*. ¿Oxidara el Fe3+ al Sn2+ a Sn4+ en solución acida en condiciones estándar? 
b) ¿Los iones dicromato oxidaran a los iones fluoruro a flúor libre en solución 
acida en condiciones estándar? 
]

#figure(
  image("/files/images/2P/ej-58.png", width: 100%)
) <fig:ej-58>
]


#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*66*.  ¿Cuáles de las siguientes reacciones son espontáneas en celdas voltaicas funcionando en condiciones estándar?

a) H2(g) → H+ (ac) + H- (ac)

b) Zn(s) + 4 CN- (ac) + Ag2CrO4 (s) → Zn(CN)42-(ac) + 2 Ag (s) + CrO42- (ac)

c) MnO2(s) + 4 H+ (ac) + Sr (s) → Mn2+ (ac) + 2 H2O (l) + Sr2+ (ac)

d) Cl2 (g) + H2O (l) + ZnS (s) → 2 HClO (ac) + H2S (ac) + Zn (s) 
]

#figure(
  image("/files/images/2P/ej-66.png", width: 60%)
) <fig:ej-66>
]


#box(stroke: 1pt, inset: 4pt, radius: 0pt, width: auto)[
#box(stroke: 0pt, inset: 6pt, radius: 4pt, width: 100%, fill: rgb(210,210,210))[  
*A7*.  Los valores en módulo de los E° de los metales X e Y son:

X2+ (ac) + 2e- → X (s)  $quad quad quad$ |E° X2+/X|= 0,25 V                       

Y2+ (ac) + 2e- → Y (s)  $quad quad quad$ E° Y2+/Y|= 0,34  V                       




Cuando se conectan las medias celdas X e Y, los electrones circulan de X a Y. Cuando X se conecta al ENH los electrones circulan 
de X a ENH.
a) ¿Cuáles son los signos de E°?
b) Escribir la reacción que se produce y calcular E° celda.
c) Escribir la forma simplificada de la celda. Indicar nombre y polaridad de los electrodos
e
solución X2+(1.0M)
. 
]

#figure(
  image("/files/images/2P/ej-a7.png", width: 90%)
) <fig:ej-a7>
]



#pagebreak()
== Celdas galvánicas (condiciones no estándar)

=== Ecuación de Nernst

Permite conocer el potencial de una celda con *cualquier concentración y presión* de sus especies, y así saber si es espontánea.

$Delta G = Delta G^0 + R T ln Q \
 -n F Delta E = - n F Delta E^0 + R T ln Q  \
Delta E = Delta E^0 - (R T)/(n F) ln Q$

Con $F$ = 96500 C/mol, $R$ = 8,31 J/(K·mol), $T$ = 298 K y $ln a = 2.3 log a$:

#formula[$ Delta E = Delta E^0 - 0.059/n log Q $]

- Si hay un gas, se pone su presión en atm. *Los sólidos no se ponen en $Q$.*
- Si todas las concentraciones son 1 M y las presiones 1 atm: $log Q = 0$ y entonces $Delta E = Delta E^0$.
- Espontánea $arrow.r$ $Delta G < 0$ $arrow.r$ $Delta E > 0$.
- Cuando $Delta E = 0$, $Q = K_"eq"$.
- $Delta E^0 = E^0_"HR" - E^0_"HO"$ (pero siempre con valores de *reducción*).

*Ejemplo:*

#box(stroke: 1pt, inset: 10pt, radius: 0pt, width: 100%)[
$"Zn" ("s") "/" "Zn"^(2+) (0.5 "M") "//" "Cu"^(2+) (0.8 "M") "/" "Cu" ("s")$

$ "Cu"^(2+) + "Zn" arrow.l.r "Cu" + "Zn"^(2+) $

$Delta E =  Delta E^0- 0.059/2 log ["Zn"^"2+"]/["Cu"^"2+"] $

$Delta E = (0.34 + 0.76) - 0.059/2 log (0.5)/(0.8) = 1.11 "V" $


También se puede calcular por electrodo y luego restar:

$E_("Cu"^(2+) \/ "Cu") = 0.34 - 0.059/2 log 1/0.8 = 0.337 "V" \ 
E_("Zn"^(2+) \/ "Zn") = -0.76 - 0.059/2 log 1/0.5 = -0.77 "V" $

$ Delta E = E_"cátodo" - E_"ánodo" = 0.337 - (-0.77) = 1.11 "V" $
]
=== Influencia del pH

Reacción clásica para recordar (el $"I"_2$ es de color ocre):

$ 2 "IO"_3^- + 12 "H"^+ + 10 e^- arrow.r "I"_2 + 6 "H"_2"O" $
$ (2 "I"^- arrow.r "I"_2 + 2 e^-) dot 5 $
$ 2 "IO"_3^- + 10 "I"^- + 12 "H"^+ arrow.r 6 "I"_2 ("s") + 6 "H"_2"O" ("l") $

Se mantienen $["IO"_3^-]$ y $["I"^-]$ constantes (se agrega tan poco ácido que no las modifica). Si aumenta $["H"^+]$ la reacción se favorece hacia la derecha (si se desplaza a la derecha, funciona la celda).

$ Delta E = 1.20 - 0.54 - 0.059/10 log 1/(["IO"_3^-]^2 ["I"^-]^10) - (0.059 dot 12)/10 "pH" $

Es una *variación lineal* en el pH ($-log["H"^+] = log(1\/["H"^+])$): el primer término es una constante ("b") y el pH es la variable ("x") con pendiente negativa ("m").

- Al pH donde $Delta E = 0$ ($Delta G = 0$): *equilibrio*.
- A menores pH: $Delta E > 0$, la reacción ocurre espontáneamente.
- A mayores pH: $Delta E < 0$, no ocurre espontáneamente.

#img[Gráfico de $Delta E$ en función del pH (recta decreciente)]

=== Celda de concentración

Dos electrodos del mismo metal con distinta concentración, por ejemplo $"Ag"^+$ (X M) / Ag y $"Ag"^+$ (Y M) / Ag, con X < Y.

$ "Cátodo (+)": "Ag"^+ + 1 e^- arrow.r "Ag" quad quad "Ánodo (−)": "Ag" arrow.r "Ag"^+ + 1 e^- $

$ Delta E = underbrace(Delta E^0, 0) - 0.059/1 log (["Ag"^+]_"ánodo")/(["Ag"^+]_"cátodo") $

#redtext[$Delta E^0$ es 0!] Para tener una celda galvánica $Delta E > 0$, entonces el log debe ser negativo: el argumento debe ser menor que 1, o sea $["Ag"^+]_"ánodo" < ["Ag"^+]_"cátodo"$. Por lo tanto *X (la más diluida) es el ánodo e Y (la más concentrada) es el cátodo*.

=== Constante de equilibrio

Para $"Cu"^(2+) + "Zn" arrow.l.r "Cu" + "Zn"^(2+)$, en equilibrio $Delta E = 0$ y $Q = K$:

$ 0 = Delta E^0 - 0.059/n log K quad arrow.r quad log K = (n Delta E^0)/0.059 $

#formula[$ K = 10^((n Delta E^0)/0.059) $]

Solo valida para reacciones redox

== Celdas electrolíticas

#def("Celda electrolítica")[La energía eléctrica se transforma en energía química y así se produce una reacción *no espontánea* ($Delta G > 0$ y $Delta E < 0$).]

#img("Celda electrolítica: batería, ánodo (+), cátodo (−)")

- *Ánodo*: se produce la *oxidación*. Se conecta al polo *(+)* de la fuente de CC y atrae *aniones*. Los electrones van desde este electrodo hacia la fuente.
- *Cátodo*: se produce la *reducción*. Se conecta al polo *(−)* de la fuente de CC y atrae *cationes*. Los electrones llegan desde la fuente a este electrodo.
- Como la reacción no es espontánea, los $e^-$ corren de + hacia −; en las reacciones espontáneas corren de − a +.
- Salvo casos particulares donde los productos reaccionan entre sí, no se separan ánodo y cátodo en recipientes distintos.

#table(columns: (auto, 1fr, 1fr), align: center + horizon,
  table.header[][*Celda galvánica*][*Celda electrolítica*],
  [Energía], [Química $arrow.r$ eléctrica], [Eléctrica $arrow.r$ química],
  [Espontaneidad], [$Delta G < 0$, $Delta E > 0$], [$Delta G > 0$, $Delta E < 0$],
  [Ánodo (oxidación)], [Polo (−)], [Polo (+)],
  [Cátodo (reducción)], [Polo (+)], [Polo (−)],
  [Circulación de $e^-$], [De − a +], [De + a −],
)

#imp[En la electrólisis *cambia la polaridad*: cátodo (−) y ánodo (+). Los elementos (+) y neutros se acercan al cátodo (−); los elementos (−) y neutros se acercan al ánodo (+). Es útil para armar las ecuaciones.]

#warn[En una electrólisis de solución acuosa neutra, $["H"^+] = ["OH"^-] = 10^(-7)$ M. *No son condiciones estándar*: hay que usar Nernst con esas concentraciones (salen de $K_w$). Cuando el agua se reduce se forman $"OH"^-$; cuando se oxida se forman $"H"^+$.]

*Criterio para competir*: una especie se *reduce* más fácilmente cuanto *mayor* es su potencial; una especie se *oxida* más fácilmente cuanto *menor* es su potencial. Los metales de los grupos 1 y 2 tienen potenciales muy bajos en módulo alto, por lo que difícilmente se reducen en solución acuosa (lo hace el agua).

=== Electrólisis de KI (aq) 0,1 M

Electrodos inatacables ($"Pt"$ o $"C"$ grafito), gases a 1 atm. $"KI" arrow.r "K"^+ + "I"^-$ (lo que se disuelve se disocia si es electrolito; no hay hidrólisis y la solución es neutra). En solución hay $"I"^-$, $"K"^+$ y $"H"_2"O"$.

#table(columns: (auto, 1fr, 1fr), align: center + horizon,
  table.header[][*Cátodo (−): se reduce $"K"^+$ o agua*][*Ánodo (+): se oxida $"I"^-$ o agua*],
  [Opción 1], [$"K"^+ + e^- arrow.r "K"$ \ $E = -2.92 - 0.059 log(1\/0.1) = -2.98$ V], [$2 "I"^- arrow.r "I"_2 + 2 e^-$ \ $E = 0.54 - 0.059/2 log 0.1^2 = 0.60$ V],
  [Opción 2], [$2 "H"_2"O" + 2 e^- arrow.r "H"_2 + 2 "OH"^-$ \ $E = -0.83 - 0.059/2 log[1 dot (10^(-7))^2] = -0.42$ V], [$2 "H"_2"O" arrow.r "O"_2 + 4 "H"^+ + 4 e^-$ \ $E = 1.23 - 0.059/4 log[1\/(1 dot (10^(-7))^4)] = 0.82$ V],
  [Ocurre], [*Agua* (mayor potencial: $-0.42 > -2.98$)], [*$"I"^-$* (menor potencial: $0.60 < 0.82$)],
)

$ "Cátodo (−)": 2 "H"_2"O" + 2 e^- arrow.r "H"_2 + 2 "OH"^- quad quad "Ánodo (+)": 2 "I"^- arrow.r "I"_2 + 2 e^- $

$ Delta E = E_("H"_2"O" \/ "H"_2) - E_("I"_2 \/ "I"^-) = -0.42 - 0.60 = -1.02 "V" < 0 $

Hay que aplicar *como mínimo 1,02 V* para que se produzca la reacción (no espontánea).

=== Electrólisis de $"CuSO"_4$ (aq) 0,1 M con ánodo inerte

Electrodos inatacables (*siempre Pt o C*). $"CuSO"_4 arrow.r "Cu"^(2+) + "SO"_4^(2-)$; solución neutra. El $"Cu"^(2+)$ va al cátodo (−) y el $"SO"_4^(2-)$ al ánodo (+).

- *Cátodo*: pueden reducirse el $"Cu"^(2+)$ y el agua (el $"SO"_4^(2-)$ no se reduce porque está en el ánodo).
- *Ánodo*: solo puede oxidarse el agua (el S del $"SO"_4^(2-)$ ya tiene $n°"ox." = 6$).

$ "Cu"^(2+) + 2 e^- arrow.r "Cu" quad E = 0.34 - 0.059/2 log(1\/0.1) = 0.31 "V" $
$ 2 "H"_2"O" + 2 e^- arrow.r "H"_2 + 2 "OH"^- quad E = -0.42 "V" $

Ocurre la reducción del $"Cu"^(2+)$ (mayor potencial).

$ "Cátodo (−)": "Cu"^(2+) + 2 e^- arrow.r "Cu" quad quad "Ánodo (+)": 2 "H"_2"O" arrow.r "O"_2 + 4 "H"^+ + 4 e^- $

$ Delta E = E_("Cu"^(2+) \/ "Cu") - E_("O"_2 \/ "H"_2"O") = 0.31 - 0.82 = -0.51 "V" < 0 $

Hay que aplicar *como mínimo 0,51 V*. Las concentraciones de $"H"^+$ y $"OH"^-$ para calcular $Delta E$ salen de $K_w$.

=== Electrólisis de $"CuSO"_4$ (aq) 0,1 M con ánodo de Cu

Ahora el ánodo *no es inerte*, entonces el Cu del electrodo también puede oxidarse.

- *Cátodo*: igual que antes, se reduce el $"Cu"^(2+)$ ($0.31$ V frente a $-0.42$ V del agua).
- *Ánodo*: compiten $"Cu" arrow.r "Cu"^(2+) + 2 e^-$ ($E = 0.31$ V) y la oxidación del agua ($E = 0.82$ V). Se oxida lo de *menor* potencial: el *Cu*.

$ "Cátodo (−)": "Cu"^(2+) + 2 e^- arrow.r "Cu" quad quad "Ánodo (+)": "Cu" arrow.r "Cu"^(2+) + 2 e^- $

=== Ley de Faraday de la electrólisis

La cantidad de sustancia que se reduce u oxida en una electrólisis es *directamente proporcional a la cantidad de electricidad* que pasa por la celda.

- Un *coulomb* (C) es la carga que pasa por un punto cuando circula 1 *ampère* (A) durante 1 segundo: 1 A = 1 C/s.
- 1 *Faraday* (F) = 96485 C. Por simplicidad se usa *96500 C*.

#formula[$ Q = i dot t $]

$Q$ en C, $i$ (intensidad de corriente) en A y $t$ en s.

#imp[$1 "F" = 96500 "C" = 1 "mol de" e^-$ que pasan por el sistema.]


