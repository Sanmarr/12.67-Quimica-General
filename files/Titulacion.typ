= Titulación o Valoración Ácido-Base

La *titulación* es una técnica volumétrica que permite determinar la concentración desconocida de un ácido o una base (analito) mediante la adición gradual de una solución de concentración conocida (titulante) desde una bureta.

== Conceptos Clave
- *Punto de Equivalencia:* Momento teórico en el que el número de equivalentes de ácido agregados iguala exactamente al número de equivalentes de base originalmente presentes.
  $ n_(H^+) = n_("OH"^-) $
  - Para reactivos monopróticos/monohidroxílicos: $C_A dot V_A = C_B dot V_B$
  - Para ácido diprótico ($H_2 "SO"_4$ con $"NaOH"$): $2 C_A dot V_A = C_B dot V_B$
- *Punto Final:* Momento experimental en el que el *indicador* cambia de color (viraje).
- *Indicador Ácido-Base:* Ácido o base débil ($"HIn" harpoons.rtlb "In"^- + H_3 O^+$) cuyas formas conjugadas tienen colores distintos. El cambio de color ocurre en su intervalo de viraje:
  $ "pH" = "pK"_("In") +- 1 $

== Curvas de Titulación

Representan la variación del pH en función del volumen de titulante agregado.

#table(
  columns: (1.2fr, 1.2fr, 1.5fr, 1.2fr),
  align: center,
  stroke: 0.5pt + rgb("#cccccc"),
  inset: 6pt,
  [*Sistema Titulado*], [*pH en P.E.*], [*Características de la Curva*], [*Indicadores Adecuados*],
  [Ácido Fuerte + Base Fuerte], [$"pH" = 7$], [Salto de pH amplio y vertical alrededor de pH 7.], [Fenolftaleína o Rojo de Metilo],
  [Ácido Débil + Base Fuerte], [$"pH" > 7$ (básico)], [Zona buffer previa al P.E. Hidrólisis del anión en el P.E.], [Fenolftaleína (NO Rojo de Metilo)],
  [Base Débil + Ácido Fuerte], [$"pH" < 7$ (ácido)], [Zona buffer previa al P.E. Hidrólisis del catión en el P.E.], [Rojo de Metilo (NO Fenolftaleína)]
)

#box(stroke: 1pt + rgb("#005580"), inset: 10pt, radius: 4pt, fill: rgb("#f0f8ff"))[
  *Ejemplo Práctico de Laboratorio (Valoración de Vinagre Comercial):*
  
  Se transfiere una alícuota de $20.0 "mL"$ ($V_A$) de vinagre diluido a un Erlenmeyer y se titula con $"NaOH" 0.100 M$ ($C_B$) usando fenolftaleína. Se realizan dos determinaciones gastando $V_1 = 13.5 "mL"$ y $V_2 = 13.7 "mL"$.

  *1) Volumen promedio gastado:* $V_B = (13.5 + 13.7) / 2 = 13.6 "mL" = 0.0136 "L"$
  
  *2) Moles de $"NaOH"$ consumidos:* $n_B = C_B dot V_B = 0.100 "M" dot 0.0136 "L" = 1.36 dot 10^(-3) "moles"$
  
  *3) Moles de $"CH"_3 "COOH"$ en la muestra:* Por relación $1:1$, $n_A = n_B = 1.36 dot 10^(-3) "moles"$
  
  *4) Molaridad de la solución diluida:* $C_A = (1.36 dot 10^(-3) "moles") / (0.0200 "L") = 0.068 M$
  
  *5) Concentración en $\% m/V$ ($M_r = 60.05 "g/mol"$):*
  Masa de ácido en $100 "mL"$ = $0.068 "mol/L" dot 0.100 "L" dot 60.05 "g/mol" = 0.408 "g" ==> 0.408 \% m/V$.
]