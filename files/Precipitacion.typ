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

= Equilibrio de precipitación y complejos

== Equilibrio de precipitación o de solubilidad

Aplica a sales, ácidos y bases *poco solubles* en agua. *Lo que se disuelve, se disocia.*

#img("Tubo de ensayo con solución saturada y soluto precipitado")

- Una solución está *saturada* cuando está en equilibrio con soluto precipitado a una dada temperatura. La concentración de esa solución saturada se llama *solubilidad*.
- Si la concentración es *menor* que la solubilidad (a esa $T$): *insaturada*.
- Si es *mayor*: *sobresaturada* (muy inestable).
- Al aumentar la $T$, la solubilidad de los *gases* baja (se evaporan más rápido).

=== Solubilidad ($s$) y producto de solubilidad ($K_"ps"$)

Cuando la solución se satura se alcanza el equilibrio:

$ "PbCl"_2 ("s") arrow.l.r "Pb"^(2+) ("aq") + 2 "Cl"^- ("aq") quad quad K_"ps" = ["Pb"^(2+)] ["Cl"^-]^2 = s (2 s)^2 = 4 s^3 $

$ "CaCO"_3 ("s") arrow.l.r "Ca"^(2+) ("aq") + "CO"_3^(2-) ("aq") quad quad K_"ps" = ["Ca"^(2+)] ["CO"_3^(2-)] = s dot s = s^2 $

#def("Solubilidad ($s$)")[Moles que se disuelven en 1 L de solución saturada a una temperatura determinada.]

#def([Constante del producto de solubilidad ($K_"ps"$)])[Depende de la temperatura, como toda constante de equilibrio.]

#warn[Para saber qué compuesto es más soluble hay que conocer $s$. Se puede mirar $K_"ps"$ directamente *solo si la estequiometría es la misma* (la relación entre $s$ y $K_"ps"$ es igual para ambos).]

=== ¿Cómo saber si se forma precipitado?

*Ejemplo*: $"AgNO"_3$ 50 mL, $10^(-4)$ M; se agregan 50 mL de $"NaCl"$ $10^(-3)$ M. $K_"ps" ("AgCl") = 2 dot 10^(-10)$.

Podrían precipitar $"AgCl"$, $"NaCl"$, $"NaNO"_3$ y $"AgNO"_3$. El $"NaCl"$ y el $"AgNO"_3$ no, porque solo se diluyen; y el $"NaNO"_3$ es extremadamente soluble. *Solo puede precipitar el $"AgCl"$.*

$ "AgCl" ("s") arrow.l.r "Ag"^+ ("aq") + "Cl"^- ("aq") $

$ Q_"ps" = ["Ag"^+] ["Cl"^-] = 5 dot 10^(-5) dot 5 dot 10^(-4) = 2.5 dot 10^(-8) > K_"ps" $

#formula[$Q_"ps" > K_"ps"$: *precipita* #h(2em) $Q_"ps" < K_"ps"$: *no precipita*]

#imp[Los *nitratos* son extremadamente solubles, entonces *NUNCA precipitan*. Y siempre hay que considerar el cambio de volumen al mezclar (diluciones).]

=== ¿Qué cantidad debe agregarse para que precipite?

*Ejemplo*: $"AgNO"_3$ 50 mL, $10^(-4)$ M. Se agrega $"NaCl"$ (s) sin cambio de volumen (la cantidad agregada es ínfima).

Se plantea $Q_"ps" = K_"ps"$, que da la concentración necesaria de cualquier ion para que haya precipitado:

$ ["Cl"^-] = K_"ps" / ["Ag"^+] = (2 dot 10^(-10))/(10^(-4)) = 2 dot 10^(-6) "M" quad arrow.r quad m_"NaCl" = 5.85 dot 10^(-6) "g" $

Es predecible mirando $K_"ps"$: es muy bajo, la Ag es muy poco soluble.

=== ¿Cuánto precipita y cuánto queda en solución?

*Ejemplo*: $"AgNO"_3$ 200 mL, 0,2 M mezclado con $"NaCl"$ 300 mL, 0,4 M (volumen final 0,5 L).

$ ["Ag"^+] = 0.08 "M" quad ["Cl"^-] = 0.24 "M" quad arrow.r quad Q_"ps" = 0.08 dot 0.24 = 0.0192 > K_"ps" quad arrow.r quad "precipita" $

*Método 1* (plantear $x$ que precipita): $2 dot 10^(-10) = (0.08 - x)(0.24 - x)$. Da $x = 0.079999999$, o sea que precipitó "toda" la Ag, pero *no se puede decir que precipita TODO*. Con $K_"ps"$ muy pequeña los resultados pueden carecer de sentido si no se tiene una calculadora programable.

*Método 2* (más simple, mismo resultado): se considera que *precipita todo y después se redisuelve una parte*, y así se llega al equilibrio entre el sólido y los iones en solución.

$ mat(delim: #none, "AgCl (s)", arrow.l.r, "Ag"^+, "+", "Cl"^-; , , 0.08, , 0.24; , , -, , 0.16; , , x, , 0.16 + x) $

(0,08 M es lo que se considera que precipitó: todo el $"Ag"^+$. Pasa de 0,24 a 0,16 por la relación estequiométrica: 0,08 mol de $"Ag"^+$ reaccionan con 0,08 mol de $"Cl"^-$.)

$ 2 dot 10^(-10) = x (0.16 + x) quad arrow.r quad x = 1.25 dot 10^(-9) "M" $

- $["Ag"^+] = x = 1.25 dot 10^(-9)$ M (concentración que *no* precipitó).
- $["Cl"^-] = 0.16 + x approx 0.16$ M.
- $n_"AgCl precipitado" = 0.08 dot 0.5 "L" = 0.04 "mol"$.

#imp[Como $K_"ps"$ es muy pequeña, no queda casi nada disuelto del reactivo que *menos* se tiene (en relación estequiométrica).]

=== Efecto de ion común

*$"AgCl"$ en agua*: $K_"ps" = s^2 = 2 dot 10^(-10)$ $arrow.r$ $s = 1.41 dot 10^(-5)$ M.

*$"AgCl"$ en $"NaCl"$ 0,01 M*:

$ mat(delim: #none, "AgCl (s)", arrow.l.r, "Ag"^+, "+", "Cl"^-; , , -, , 0.01; , , s', , 0.01 + s') $

$ K_"ps" = s' (0.01 + s') approx s' dot 0.01 = 2 dot 10^(-10) quad arrow.r quad s' = 2 dot 10^(-8) "M" $

Se verifica que $s' << 0.01$ M y que $s' << 1.41 dot 10^(-5)$ M. Hay $"Cl"^-$ presente, entonces el equilibrio se desplaza hacia la izquierda (principio de Le Châtelier).

#imp[*Efecto de ion común = disminuye la solubilidad.* Siempre se va a tener que *despreciar $s'$ frente a la cantidad presente del ion común* (aunque se pueda resolver la cuadrática).]

=== Disolución de precipitados

_No todas las técnicas sirven para cada caso._

*Temperatura*
- Disolución *endotérmica*: se favorece *aumentando* la $T$. Ej: $"KClO"_3$.
- Disolución *exotérmica*: se favorece *disminuyendo* la $T$. Ej: $"Ce"_2("SO"_4)_3$.

*Modificación del pH*: si el precipitado tiene comportamiento básico, se puede agregar un ácido. Ej: $"Mg"("OH")_2$, $"CaCO"_3$.

$ "Mg"("OH")_2 ("s") arrow.l.r "Mg"^(2+) ("aq") + 2 "OH"^- ("aq") $

$ "CaCO"_3 ("s") arrow.l.r "Ca"^(2+) ("aq") + "CO"_3^(2-) ("aq") $
$ "CO"_3^(2-) + "H"_2"O" arrow.l.r "HCO"_3^- + "OH"^- quad quad "HCO"_3^- + "H"_2"O" arrow.l.r "H"_2"CO"_3 + "OH"^- $

Si se agrega ácido, se consumen los $"OH"^-$ y el equilibrio se desplaza a la derecha.

*Reacciones redox*: si alguno de los iones es oxidante o reductor. Ej: $"AgI"$.

$ "AgI" ("s") arrow.l.r "Ag"^+ ("aq") + "I"^- ("aq") $

Si se agrega Zn, el $"Ag"^+$ se reduce; o si se agrega $"Cr"_2"O"_7^(2-)$, el $"I"^-$ se oxida (ver TP5 de laboratorio). En ambos casos el $"AgI"$ se disuelve porque el equilibrio se desplaza a la derecha.

*Formación de complejos*: ver más abajo.

== Precipitación de sulfuros

Los sulfuros iónicos son *muy poco solubles*, a excepción de $"Na"_2"S"$, $"K"_2"S"$ y $("NH"_4)_2"S"$. Su solubilidad depende mucho del pH.

Se burbujea $"H"_2"S"$ en agua hasta *saturación* (se reconoce por el olor a huevo podrido). A partir de ahí la concentración de $"H"_2"S"$ es constante e igual a 0,1 M (solubilidad del $"H"_2"S"$ a 25 °C).

$ "H"_2"S" + "H"_2"O" arrow.l.r "HS"^- + "H"_3"O"^+ quad K_"a1" = (["HS"^-]["H"_3"O"^+])/(["H"_2"S"]) $
$ "HS"^- + "H"_2"O" arrow.l.r "S"^(2-) + "H"_3"O"^+ quad K_"a2" = (["S"^(2-)]["H"_3"O"^+])/(["HS"^-]) $

$ K_"a1" dot K_"a2" = (["S"^(2-)] ["H"_3"O"^+]^2)/(["H"_2"S"]) quad ("["H"_2"S"] = cte.") $

#formula[$ "PI"_("H"_2"S") = K_"a1" dot K_"a2" dot ["H"_2"S"]_"sat" = ["S"^(2-)] ["H"_3"O"^+]^2 $]

$"PI"$ es el *producto iónico del ácido sulfhídrico*.

*Precipitar un catión como sulfuro* (ej: $"CuS"$) se logra *aumentando el pH*:

$ "CuS" ("s") arrow.l.r "Cu"^(2+) ("aq") + "S"^(2-) ("aq") $
$ "S"^(2-) + "H"_2"O" arrow.l.r "HS"^- + "OH"^- quad quad "HS"^- + "H"_2"O" arrow.l.r "H"_2"S" + "OH"^- $

Si se agrega una *base*, los dos últimos equilibrios se desplazan hacia la izquierda: aumenta el $"S"^(2-)$ y el primer equilibrio se desplaza a la izquierda, obteniendo más precipitado. *Agregar una base favorece la precipitación.*

== Disolución de precipitados por formación de complejos

=== Iones complejos

#def("Ion complejo")[Formado por un *ion central* (generalmente un elemento de transición) al que se unen iones negativos o moléculas llamados *ligandos*. El *número de coordinación* (o índice) es el número de ligandos.]

El ion central se une a cada ligando por una *unión covalente dativa*: los elementos de transición tienen orbitales d vacíos y los ligandos poseen pares de electrones libres.

#table(columns: (1fr, 1fr, 1fr, 1fr), align: center,
  table.header[*Ion complejo*][*Ion central*][*Ligando*][*Nº de coordinación*],
  [$"Ag"("NH"_3)_2^+$], [$"Ag"^+$], [$"NH"_3$], [2],
  [$"AgCl"_3^(2-)$], [$"Ag"^+$], [$"Cl"^-$], [3],
  [$"Fe"("CN")_6^(3-)$], [$"Fe"^(3+)$], [$"CN"^-$], [6],
  [$"Fe"("CN")_6^(4-)$], [$"Fe"^(2+)$], [$"CN"^-$], [6],
  [$"Cu"("NH"_3)_4^(2+)$], [$"Cu"^(2+)$], [$"NH"_3$], [4],
  [$"Cd"("NH"_3)_4^(2+)$], [$"Cd"^(2+)$], [$"NH"_3$], [4],
)

Los iones complejos siempre van acompañados de iones de carga contraria (*contraiones*), formando *compuestos complejos* o *compuestos de coordinación*. Contraión para un ion (+): $"Cl"^-$. Contraión para un ion (−): $"K"^+$ o $"Na"^+$.

Los compuestos complejos son *electrolitos fuertes* y *muy solubles en agua*, o sea que se disocian completamente:

$ "Ag"("NH"_3)_2"Cl" arrow.r "Ag"("NH"_3)_2^+ + "Cl"^- $

A su vez, el ion complejo se disocia hasta alcanzar el equilibrio:

$ "Ag"("NH"_3)_2^+ arrow.l.r "Ag"^+ + 2 "NH"_3 quad quad K_i = (["Ag"^+] ["NH"_3]^2)/(["Ag"("NH"_3)_2^+]) $

$K_i$ (ion central y ligando sobre el complejo) es la *constante de inestabilidad o de disociación*. La reacción inversa tiene la *constante de formación*:

$ "Ag"^+ + 2 "NH"_3 arrow.l.r "Ag"("NH"_3)_2^+ quad quad K_f = (["Ag"("NH"_3)_2^+])/(["Ag"^+] ["NH"_3]^2) $

#formula[$ K_i = 1/K_f $]

Los complejos son *altamente estables*: $K_f$ es muy alta, entonces $K_i$ es muy baja.

=== Concentración de los iones que forman un compuesto complejo

*Ejemplo*: $"K"_3"Fe"("CN")_6$ $10^(-3)$ M, con $K_i ("Fe"("CN")_6^(3-)) = 1.3 dot 10^(-44)$.

$ "K"_3"Fe"("CN")_6 arrow.r 3 "K"^+ + "Fe"("CN")_6^(3-) $

$ mat(delim: #none, "Fe(CN)"_6^(3-), arrow.l.r, "Fe"^(3+), "+", 6 "CN"^-; 10^(-3), , -, , -; 10^(-3) - x, , x, , 6 x) $

$ K_i = (["Fe"^(3+)] ["CN"^-]^6)/(["Fe"("CN")_6^(3-)]) quad arrow.r quad 1.3 dot 10^(-44) = (x (6 x)^6)/(10^(-3) - x) approx (46656 x^7)/10^(-3) quad arrow.r quad x = 4.31 dot 10^(-8) $

Se desprecia el $-x$ porque $x << 10^(-3)$ (el complejo es muy estable, $K_i$ es muy pequeña).

- $["Fe"^(3+)] = 4.31 dot 10^(-8)$ M
- $["CN"^-] = 6 dot 4.31 dot 10^(-8) = 2.59 dot 10^(-7)$ M
- $["Fe"("CN")_6^(3-)] = 10^(-3) - 4.31 dot 10^(-8) approx 10^(-3)$ M
- $["K"^+] = 3 dot 10^(-3)$ M

=== ¿Cómo un complejo favorece la disolución de un precipitado?

$ "AgCl" ("s") arrow.l.r "Ag"^+ ("aq") + "Cl"^- ("aq") $

Si se agrega $"NH"_3$, se forma el complejo:

$ "Ag"^+ + 2 "NH"_3 arrow.l.r "Ag"("NH"_3)_2^+ $

Así *disminuye* $["Ag"^+]$, el equilibrio de solubilidad se desplaza a la derecha y *aumenta la solubilidad* del $"AgCl"$.

== Precipitación y complejos: ¡Importante!

#imp[
- Si quiero saber *quién es más soluble*, NO miro $K_"ps"$: *calculo la solubilidad* para comparar (salvo igual estequiometría).
- *Efecto de ion común = disminuye la solubilidad.*
- *Nitratos* son muy solubles (nunca precipitan).
- Si quiero saber *si precipita o no*, comparo $Q_"ps"$ con $K_"ps"$.
- Precipitación de sulfuros: $"PI"_("H"_2"S") = ["H"_3"O"^+]^2 ["S"^(2-)]$.
- Complejos: $K_f = 1 / K_i$.
- Recordar los *cambios de volumen y diluciones*.
]
