= Equilibrio Ácido-Base

Según Brønsted-Lowry, un #text( fill: red)[*ácido* es una especie capaz de *ceder un protón*] y #text( fill: red)[una *base* es una especie *capaz de aceptarlo*]. Una transferencia de protón siempre ocurre entre un ácido y una base. Las especies que difieren en un protón forman un par conjugado.

$ 
"HA" + H_2 O harpoons.rtlb A^- + H_3 O^+ \
"HA" harpoons.rtlb A^- + H^+
$

Aquí $"HA"$ es el ácido y $A^-$ su base conjugada. Un ácido fuerte tiene una base conjugada débil; un ácido débil tiene una base conjugada relativamente más fuerte. La fuerza de una base se relaciona de manera inversa con la de su ácido conjugado.

== Autoionización del agua, pH y pOH

El *agua* se ioniza parcialmente. #highlight[Tiene comportamiento ácido frente a bases y básico frente a ácidos].

$ H_2 O + H_2 O <-> H_3 O^+ + "OH"^- $

#figure(
  image("images/water.png", width: 90%)
)

$ K_w = [H_3 O^+] dot ["OH"^-] = 1.0 dot 10^(-14) #h(1cm) (25 "°C") $

En agua pura, $[H_3 O^+] = ["OH"^-] = 10^(-7) M$. 

Una solución es:
 - *Acida* si $[H_3 O^+] > 10^(-7) M arrow.l.r.long "pH" < 7$ 
 - *Neutra* si $[H_3 O^+] =  ["OH"^-] = 10^(-7) M arrow.l.r.long "pH" = 7$
 - *Básica* si $["OH"^-] > 10^(-7) M arrow.l.r.long "pH" > 7$.

$ "pH" = -log [H_3 O^+] #h(2cm) "pOH" = -log ["OH"^-] $

$ "pH" + "pOH" = 14 #h(2cm) (25 "°C") $

#highlight[En los cálculos habituales se desprecia la ionización del agua frente a la de un ácido o base, *excepto cuando la concentración del soluto es muy pequeña*].

== Ácidos y bases fuertes

Los ácidos fuertes más comunes son $"HCl"$, $"HBr"$, $"HI"$, $"HNO"_3$, $"HClO"_4$ y $H_2 "SO"_4$. #text(weight: "bold",fill: red)[Se disocian completamente]:

$ "HCl" + H_2 O -> H_3 O^+ + "Cl"^- #h(1cm) [H_3 O^+] = C_A $

$ H_2 "SO"_4 + 2 H_2 O -> 2 H_3 O^+ + "SO"_4^(2-) #h(1cm) [H_3 O^+] = 2 C_A $

Las bases fuertes son principalmente los hidróxidos de los grupos 1 y 2:

$ "KOH" -> K^+ + "OH"^- #h(1cm) ["OH"^-] = C_B $

$ "Ca(OH)"_2 -> "Ca"^(2+) + 2 "OH"^- #h(1cm) ["OH"^-] = 2 C_B $

#figure(
  image("images/exx.png", width: 60%)
)


== Ácidos y bases débiles

Un ácido débil se ioniza parcialmente:

$ "HA" + H_2 O <-> A^- + H_3 O^+ $

Si la concentración inicial es $C_A$ y se ionizan $x$ moles por litro:

$ K_a = ([A^-] dot [H_3 O^+])/["HA"] = x^2/(C_A - x) $

Si $x$ es menor que aproximadamente el 5% de $C_A$, puede aproximarse $C_A - x approx C_A$ y entonces $[H_3 O^+] approx sqrt(K_a dot C_A)$. Cuanto mayor es $K_a$, más fuerte es el ácido.

Para un ácido diprótico, $K_"a1" > K_"a2"$. #highlight[La segunda ionización suele despreciarse porque la especie ya negativa atrae menos protones] y porque el medio ya contiene $H_3 O^+$.

Una base débil reacciona parcialmente con el agua:

$ B + H_2 O <-> "BH"^+ + "OH"^- $

$ K_b = (["BH"]^+ dot ["OH"^-])/[B] = x^2/(C_B - x) $

Si la aproximación es válida, $["OH"^-] approx sqrt(K_b dot C_B)$. Para pares conjugados:

$ K_a dot K_b = K_w $