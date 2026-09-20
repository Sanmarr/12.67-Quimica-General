= Equilibrio Ácido-Base

Según Brønsted-Lowry, un #text(fill: rgb("#d11141"))[ *ácido* es una especie capaz de *ceder un protón* ($H^+$)] y una #text(fill: rgb("#00a86b"))[ *base* es una especie *capaz de aceptarlo ($"HO"^-$)* ]. Una transferencia de protón siempre ocurre entre un ácido y una base. Las especies que difieren en un protón forman un *par conjugado*.

$ "HA" + H_2 O harpoons.rtlb A^- + H_3 O^+ $
$ "B" + H_2 O harpoons.rtlb "BH"^+ + "OH"^- $

Aquí $"HA"$ es el ácido y $A^-$ su base conjugada; $"B"$ es la base y $"BH"^+$ su ácido conjugado.

#box(stroke: 1pt + rgb("#cccccc"), inset: 8pt, radius: 4pt, fill: rgb("#f9f9f9"))[
  *Relación de fuerza entre pares conjugados:*
  - Un ácido fuerte tiene una base conjugada prácticamente nula (inerte).
  - Un ácido débil tiene una base conjugada relativamente fuerte (capaz de reaccionar con el agua).
  - La fuerza de una base se relaciona de manera inversa con la de su ácido conjugado.
]

== Autoionización del agua, pH y pOH

El *agua* es una sustancia anfótera: #highlight[tiene comportamiento ácido frente a bases y básico frente a ácidos]. Se ioniza parcialmente a sí misma:

$ H_2 O + H_2 O harpoons.rtlb H_3 O^+ + "OH"^- $

La constante de este equilibrio es el producto iónico del agua ($K_w$):
$ K_w = [H_3 O^+] dot ["OH"^-] = 1.0 dot 10^(-14) #h(1cm) (25 "°C") $

En agua pura (medio neutro), $[H_3 O^+] = ["OH"^-] = 10^(-7) M$.

#table(
  columns: (1fr, 1.5fr, 1fr),
  align: center,
  stroke: 0.5pt + rgb("#dddddd"),
  inset: 6pt,
  [*Medio*], [*Relación de concentraciones*], [*Valor de pH*],
  [Ácido], $[H_3 O^+] > 10^(-7) M quad (["OH"^-] < 10^(-7) M)$, [$"pH" < 7$],
  [Neutro], $[H_3 O^+] = ["OH"^-] = 10^(-7) M$, [$"pH" = 7$],
  [Básico], $["OH"^-] > 10^(-7) M quad ([H_3 O^+] < 10^(-7) M)$, [$"pH" > 7$]
)

=== Escalas logarítmicas: pH y pOH

$ "pH" = -log [H_3 O^+] #h(2cm) "pOH" = -log ["OH"^-] $
$ "pH" + "pOH" = 14 #h(2cm) (25 "°C") $

#highlight[En los cálculos habituales se desprecia la ionización del agua frente a la de un ácido o base, *excepto cuando la concentración del soluto es extremadamente pequeña* ($C < 10^(-6) M$)].

== Ácidos y bases fuertes

#text(weight: "bold", fill: rgb("#d11141"))[Se disocian completamente en solución acuosa] (reacción irreversible, $-->$). No hay constante de equilibrio.

=== Ácidos Fuertes Comunes
Los más habituales son $"HCl"$ (_cloruro de hidrogeno_), $"HBr"$ (_bromuro de hidrogeno_), $"HI"$ (_yoduro de hidrogeno_), $"HNO"_3$ (_acido nitrico_), $"HClO"_4$ (_acido hipocloroso_) y $H_2 "SO"_4$(_acido sulfurico_).

- *Monopróticos:* $"HCl" + H_2 O -> H_3 O^+ + "Cl"^- #h(1cm) ==> [H_3 O^+] = C_A$
- *Dipróticos:* $H_2 "SO"_4 + 2 H_2 O -> 2 H_3 O^+ + "SO"_4^(2-) #h(1cm) ==> [H_3 O^+] = 2 C_A$

=== Bases Fuertes Comunes
Principalmente los hidróxidos solubles de metales alcalinos (Grupo 1A) y alcalinotérreos (Grupo 2A).

#figure(
  image("images/grupo1ygrupo2.png", width: 70%),
  caption: "Bases fuertes"
)

- *Monohidroxílicas:* $"KOH" -> "K"^+ + "OH"^- #h(1cm) ==> ["OH"^-] = C_B$
- *Dihidroxílicas:* $"Ca(OH)"_2 -> "Ca"^(2+) + 2 "OH"^- #h(1cm) ==> ["OH"^-] = 2 C_B$

#box(stroke: 1pt + rgb("#005580"), inset: 10pt, radius: 4pt, fill: rgb("#f0f8ff"))[
  *Ejemplo Resuelto 1 (Ácido y Base Fuerte):*

  *a)* Calcular el pH de una solución $0.020 M$ de $"HCl"$.
  
  _Solución:_ Como el $"HCl"$ es fuerte, $[H_3 O^+] = C_A = 0.020 M$.
  $"pH" = -log(0.020) = 1.70$.

  *b)* Calcular el pH de una solución $0.015 M$ de $"Ca(OH)"_2$.
  
  _Solución:_ Como se disocia totalmente liberando $2 "OH"^-$, $["OH"^-] = 2 dot C_B = 2 dot 0.015 M = 0.030 M$.
  $"pOH" = -log(0.030) = 1.52 ==> "pH" = 14 - 1.52 = 12.48$.
]

== Ácidos y bases débiles

#text(weight: "bold", fill: rgb("#005580"))[Se ionizan parcialmente en agua], alcanzando un equilibrio químico ($harpoons.rtlb$).

=== Ácidos Débil Monoprótico
Para un ácido monoprótico $"HA"$ con concentración inicial $C_A$:

$ "HA (aq)" + H_2 O harpoons.rtlb A^- ("aq") + H_3 O^+ ("aq")$

#table(
  columns: 4,
  align: center,
  stroke: 0.5pt + rgb("#dddddd"),
  inset: 5pt,
  [*Estado*], [*[HA]*], [*[$A^-$]*], [*[$H_3 O^+$]*],
  [Inicial], [$C_A$], [$0$], [$0$],
  [Equilibrio], [$C_A - x$], [$x$], [$x$]
)

La constante de acidez es:
$ K_a = ([A^-] dot [H_3 O^+]) / ["HA"] = x^2 / (C_A - x) $

#box(stroke: 1pt + rgb("#e67e22"), inset: 8pt, radius: 4pt, fill: rgb("#fdfefe"))[
  *Aproximación fundamental:* Si $x < 5\%$ de $C_A$ (lo cual ocurre habitualmente cuando $C_A / K_a > 100$), se puede aproximar $C_A - x approx C_A$.
  Entonces:
  $ [H_3 O^+] = x approx sqrt(K_a dot C_A) $
]

Si tengo dos ácidos débiles, *el que tiene mayor $K_a$ es más fuerte*

*Grado de ionización ($alpha$):*
$ alpha = x / C_A #h(1.5cm) %"Ionización" = alpha dot 100 $

=== Bases Débiles
Para una base débil $"B"$ (como amoníaco $"NH"_3$ o aminas) con concentración inicial $C_B$:

$ "B" + H_2 O harpoons.rtlb "BH"^+ + "OH"^- $
$ K_b = (["BH"^+] dot ["OH"^-]) / ["B"] = x^2 / (C_B - x) approx x^2 / C_B ==> ["OH"^-] approx sqrt(K_b dot C_B) $

=== Relación entre pares conjugados
Para todo par ácido-base conjugado ($"HA" / A^-$ o $"BH"^+ / "B"$):
$ K_a dot K_b = K_w = 1.0 dot 10^(-14) #h(1.5cm) "pK"_a + "pK"_b = 14 $

=== Ácidos Polipróticos
Poseen más de un protón ionizable (ej. $H_2 "CO"_3$, $H_3 "PO"_4$). Se ionizan en etapas sucesivas con constantes $K_("a1") >> K_("a2") >> K_("a3")$.
Para el cálculo de pH, la primera ionización predomina ampliamente y la segunda suele despreciarse porque la especie negativa resultante retiene más a los protones y el medio ya contiene $H_3 O^+$.

#box(stroke: 1pt + rgb("#005580"), inset: 10pt, radius: 4pt, fill: rgb("#f0f8ff"))[
  *Ejemplo Resuelto 2 (Ácido Débil):*
  
  Calcular el pH y el $\%$ de ionización de una solución $0.10 M$ de ácido acético ($"CH"_3 "COOH"$), sabiendo que $K_a = 1.8 dot 10^(-5)$.
  
  _Solución:_
  $K_a = x^2 / (0.10 - x) approx x^2 / 0.10 = 1.8 dot 10^(-5)$ 

  $ arrow.r.squiggly x = sqrt(1.8 dot 10^(-5) dot 0.10) = sqrt(1.8 dot 10^(-6)) = 1.34 dot 10^(-3) M = [H_3 O^+]$

  $arrow.r.squiggly arrow.r.squiggly"pH" = -log(1.34 dot 10^(-3)) = 2.87$
  
  Verificación de la aproximación: $\% "Ionización" = (1.34 dot 10^(-3) / 0.10) dot 100 = 1.34\% < 5\%$ (aprobada).
]

== Hidrólisis de sales

Una sal soluble disuelta en agua se disocia completamente en sus cationes y aniones. La *hidrólisis* es la reacción química de estos iones con el agua para alterar el pH.

#figure(
  image("images/pizarra.png", width: 90%)
)
#table(
  columns: (1.2fr, 1.5fr, 1fr, 1fr, 1.2fr),
  align: center,
  stroke: 0.5pt + rgb("#cccccc"),
  inset: 6pt,
  [*Tipo de Sal*], [*Origen de los Iones*], [*¿Hidrólisis?*], [*pH resultante*], [*Ejemplo*],
  [ÁF + BF], [Catión inerte / Anión inerte], [Ninguno], [Neutro ($"pH" = 7$)], [$"NaCl"$, $"KNO"_3$],
  [ÁD + BF], [Catión inerte / Anión básico], [Anión ($A^-$)], [Básico ($"pH" > 7$)], [$"NaCH"_3 "COO"$],
  [ÁF + BD], [Catión ácido / Anión inerte], [Catión ($"BH"^+$)], [Ácido ($"pH" < 7$)], [$"NH"_4 "Cl"$],
  [ÁD + BD], [Catión ácido / Anión básico], [Ambos], [Según $K_a$ vs $K_b$], [$"NH"_4 "CH"_3 "COO"$]
)

=== Ecuaciones e Ionización por Hidrólisis

1. *Anión de ácido débil (Sal ÁD + BF):*
   $ A^- + H_2 O harpoons.rtlb "HA" + "OH"^- $
   Constante de hidrólisis básica ($K_"hb"$):
   $ K_("hb") = (["HA"] dot ["OH"^-]) / [A^-] = K_w / K_a $
   $ ["OH"^-] approx sqrt(K_("hb") dot C_S) = sqrt((K_w / K_a) dot C_S) $

2. *Catión de base débil (Sal ÁF + BD):*
   $ "BH"^+ + H_2 O harpoons.rtlb "B" + H_3 O^+ $
   Constante de hidrólisis ácida ($K_"ha"$):
   $ K_("ha") = (["B"] dot [H_3 O^+]) / ["BH"^+] = K_w / K_b $
   $ [H_3 O^+] approx sqrt(K_"ha" dot C_S) = sqrt((K_w / K_b) dot C_S) $

3. *Sales de aniones polipróticos (ej. $"Na"_2 "CO"_3$):*
   La primera hidrólisis es la predominante ($K_("hb1") = K_w / K_("a2") >> K_("hb2") = K_w / K_("a1")$), por lo que la segunda hidrólisis se desprecia en los cálculos habituales.



#box(stroke: 1pt + rgb("#005580"), inset: 10pt, radius: 4pt, fill: rgb("#f0f8ff"))[
  *Ejemplo Resuelto 3 (Hidrólisis de Sal Básica):*
  
  Calcular el pH de una solución $0.20 M$ de acetato de sodio ($"NaCH"_3"COO"$). Dato: $K_a("CH"_3 "COOH") = 1.8 dot 10^(-5)$.
  
  _Solución:_
  $"NaCH"_3 "COO" -> "Na"^+ + "CH"_3 "COO"^-$ (disociación total, $C_S = 0.20 M$).
  
  $"CH"_3 "COO"^- + H_2 O harpoons.rtlb "CH"_3 "COOH" + "OH"^-$
  
  $K_("hb") = K_w / K_a = (1.0 dot 10^(-14)) / (1.8 dot 10^(-5)) = 5.56 dot 10^(-10)$
  
  $["OH"^-] approx sqrt(K_("hb") dot C_S) = sqrt(5.56 dot 10^(-10) dot 0.20) = sqrt(1.112 dot 10^(-10)) = 1.05 dot 10^(-5) M$
  
  $"pOH" = -log(1.05 dot 10^(-5)) = 4.98 ==> "pH" = 14 - 4.98 = 9.02$ (Solución básica, $"pH" > 7$).
]

== Soluciones reguladoras o buffer (amortiguadoras)

Una *solución buffer* o amortiguadora resiste los cambios drásticos de pH cuando se le añaden pequeñas cantidades de ácido fuerte o base fuerte, o al diluirse.

#box(stroke: 1pt + rgb("#cccccc"), inset: 8pt, radius: 4pt, fill: rgb("#fdfefe"))[
  *Composición de un Buffer:*
  - *Buffer Ácido:* #text(weight: "bold", fill: rgb("#d11141"))[Ácido débil] + Sal de su #text(weight: "bold",fill: rgb("#00a86b"))[base conjugada].
  _ejemplo_: 
$
 underbrace("CH"_3"COOH",#text(weight: "bold", fill: rgb("#d11141"))[acido debil])  +  underbrace("NaCH"_3"COO","sal") \

 "(la sal en agua se disocia)"arrow.r.squiggly "NaCH"_3"COOH" arrow.r.long underbrace("CH"_3"COO"^-,#text(weight: "bold",fill: rgb("#00a86b"))[ion acetato]) + underbrace("Na"^+, "NaOH") \
 "CH"_3"COOH" + H_2 O harpoons.rtlb "CH"_3"COO"^- + H_3 O^+
$
  
  - *Buffer Básico:* #text(weight: "bold",fill: rgb("#00a86b"))[Base débil] + Sal de su #text(weight: "bold", fill: rgb("#d11141"))[ácido conjugado] (ej. $"NH"_3 + "NH"_4 "Cl"$).
  _ejemplo_: 
$
 underbrace("NH"_3,#text(weight: "bold", fill: rgb("#00a86b"))[base debil])+underbrace("NH"_4"Cl","sal") \
 
 "(la sal en agua se disocia)"arrow.r.squiggly "NH"_4"Cl" arrow.r.long underbrace("NH"_4^+,#text(weight: "bold",fill: rgb("#d11141"))[amonio]) + underbrace("Cl"^-, "HCl") \
 "NH"_3 + H_2 O harpoons.rtlb "NH"_4^+ + H O
$
#figure(
  image("images/pizarra2.png", width: 100%)
)
]

=== Mecanismo de Acción Reguladora
- *Al agregar ácido fuerte ($H_3 O^+$):* La base conjugada del buffer ($A^-$ o $"B"$) consume los protones agregados.
  $ A^- + H_3 O^+ -> "HA" + H_2 O $
- *Al agregar base fuerte ($"OH"^-$):* El ácido del buffer ($"HA"$ o $"BH"^+$) consume los hidroxilos agregados.
  $ "HA" + "OH"^- -> A^- + H_2 O $

=== Ecuaciones de Henderson-Hasselbalch

Despreciando la pequeña ionización/hidrólisis frente a las concentraciones apreciables de ácido y sal:

*Buffer Ácido:*
$ [H_3 O^+] = K_a dot ["Ácido"] / ["Base Conjugada"] ==> "pH" = "pK"_a + log((["Base Conjugada"]) / ["Ácido"]) $

*Buffer Básico:*
$ ["OH"^-] = K_b dot ["Base"] / ["Ácido Conjugado"] ==> "pOH" = "pK"_b + log((["Ácido Conjugado"]) / ["Base"]) $

=== Capacidad Reguladora
- Es máxima cuando las concentraciones del ácido y de la base conjugada son iguales ($["A"^-] = ["HA"]$), en cuyo punto *$"pH" = "pK"_a$*.
- Una solución reguladora se considera útil dentro del rango *$"pH" = "pK"_a +- 1$*.
- Un buffer se *rompe* (pierde su capacidad reguladora) cuando uno de sus componentes se consume por completo.

#box(stroke: 1pt + rgb("#005580"), inset: 10pt, radius: 4pt, fill: rgb("#f0f8ff"))[
  *Ejemplo Resuelto 4 (Buffer y Acción Reguladora):*
  
  Se prepara 1 L de buffer mezclando $0.40 M$ de $"NH"_3$ y $0.30 M$ de $"NH"_4"Cl"$. Dato: $K_b("NH"_3) = 1.8 dot 10^(-5)$ ($"pK"_b = 4.74$).
  
  *a)* Calcular el pH inicial del buffer.
  
  $"pOH" = "pK"_b + log(["NH"_4^+] / ["NH"_3]) = 4.74 + log(0.30 / 0.40) = 4.74 - 0.125 = 4.615 ==> "pH" = 14 - 4.615 = 9.385$.

  *b)* Calcular el pH tras agregar $0.05$ moles de $"HCl"$ gaseoso (sin cambio de volumen).
  
  _Efecto del agregado:_ El $"HCl"$ reacciona con la base $"NH"_3$:
  $"NH"_3 + "HCl" -> "NH"_4^+ + "Cl"^-$
  
  Moles de $"NH"_3$ restantes = $0.40 - 0.05 = 0.35 "moles"$
  
  Moles de $"NH"_4^+$ finales = $0.30 + 0.05 = 0.35 "moles"$
  
  $"pOH" = 4.74 + log(0.35 / 0.35) = 4.74 + log(1) = 4.74 ==> "pH" = 14 - 4.74 = 9.26$.
  
  *Variación de pH:* $Delta "pH" = 9.26 - 9.385 = -0.125$ (variación mínima).
]



== Resumen de Fórmulas Clave

#table(
  columns: (1.5fr, 2fr, 1.5fr),
  align: center,
  stroke: 0.5pt + rgb("#bbbbbb"),
  inset: 6pt,
  [*Especie / Fenómeno*], [*Fórmula de $[H_3 O^+]$ o $["OH"^-]$*], [*Ecuación de pH*],
  [Ácido Fuerte], $[H_3 O^+] = n dot C_A$, [$"pH" = -log[H_3 O^+]$],
  [Base Fuerte], $["OH"^-] = n dot C_B$, [$"pOH" = -log["OH"^-]$, $"pH" = 14 - "pOH"$],
  [Ácido Débil], $[H_3 O^+] approx sqrt(K_a dot C_A)$, [$"pH" = -log[H_3 O^+]$],
  [Base Débil], $["OH"^-] approx sqrt(K_b dot C_B)$, [$"pOH" = -log["OH"^-]$],
  [Hidrólisis Anión ($A^-$)], $["OH"^-] approx sqrt((K_w / K_a) dot C_S)$, [$"pOH" = -log["OH"^-]$],
  [Hidrólisis Catión ($"BH"^+$)], $[H_3 O^+] approx sqrt((K_w / K_b) dot C_S)$, [$"pH" = -log[H_3 O^+]$],
  [Buffer Ácido], $[H_3 O^+] = K_a dot (["Ácido"]) / (["Base Conjugada"])$, [$"pH" = "pK"_a + log((["Base Conjugada"]) / (["Ácido"]))$],
  [Buffer Básico], $["OH"^-] = K_b dot (["Base"]) / (["Ácido Conjugado"])$, [$"pOH" = "pK"_b + log((["Ácido Conjugado"]) / (["Base"]))$]
)
