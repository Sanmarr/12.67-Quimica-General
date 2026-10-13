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