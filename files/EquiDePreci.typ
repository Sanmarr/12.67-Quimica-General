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
