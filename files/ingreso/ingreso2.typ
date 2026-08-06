= Estructura Atómica

== El Átomo
Es la partícula más pequeña de un elemento que mantiene su identidad química tras transformaciones físicas y químicas. Se compone de un *núcleo* (protones y neutrones) y una *zona extranuclear* (electrones).

=== Partículas Subatómicas
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 10pt,
  align: horizon,
  [*Partícula*], [*Masa (UMA)*], [*Carga Relativa*], [*Ubicación*],
  [Protón ($p^+$)], [1.0073], [+1], [Núcleo],
  [Neutrón ($n^0$)], [1.0087], [0], [Núcleo],
  [Electrón ($e^-$)], [0.0005], [-1], [Zona extranuclear]
) 

- *UMA* (Unidad de masa atomica): 1/12 de la masa de un átomo de carbono-12. Se utiliza para expresar la masa de átomos y moléculas.

== Magnitudes Atómicas

- *Número Atómico (Z)*: Cantidad de protones en el núcleo. Define la identidad del elemento .
- *Número Másico (A)*: Suma de protones y neutrones ($A = p +n =Z + n$). En la tabla periodica se indican con coma porque son un promedio ponderado de isotopos y sus abundancias.
- *Simbología*: Se representa el atomo _X_ como $X^A_Z$.
- *Isótopos*: Átomos del mismo elemento (igual Z) que difieren en su número de neutrones (distinta A).

- *Masa Atomica Relativa*: $"Ar"("X")$, se calcula como el promedio ponderado de las masas de los isotopos y sus abundancias relativas.

#figure(
  image("images/ej1.png", width: 70%)
) <fig:ej1>

== Iones y Especies Relacionadas
- *Ión*: Átomo con carga eléctrica por pérdida o ganancia de electrones.
  - *Catión*: Carga positiva (pierde $e^-$).
  - *Anión*: Carga negativa (gana $e^-$).
- *Isoelectrónicos*: Átomos o iones que poseen la misma cantidad de electrones.

== Modelos Atómicos
- *Modelo de Bohr*: Los electrones giran en órbitas circulares con niveles de energía cuantificados.
- *Modelo Mecano-cuántico*: Establece la naturaleza dual del electrón (onda-partícula). Introduce el concepto de **orbital**: región de máxima probabilidad de encontrar un electrón [6, 8].

== Números Cuánticos
Describen el estado energético y la ubicación probable del electrón [6, 9]:
- *$n$ (Principal)*: Nivel de energía ($1, 2, 3...$).
- *$l$ (Azimutal)*: Indica la forma del orbital y subnivel ($s=0, p=1, d=2, f=3$).
- *$m_l$ (Magnético)*: Orientación del orbital en el espacio ($-l$ a $+l$).
- *$m_s$ (Spin)*: Sentido de giro del electrón ($+1/2$ o $-1/2$).

== Distribución Electrónica
=== Principios Fundamentales
- *Principio de exclusión de Pauli*: No pueden existir dos electrones en un mismo átomo con los cuatro números cuánticos iguales.
- *Regla de Hund*: En subniveles con múltiples orbitales (como el $p$), los electrones se distribuyen desapareados con el mismo spin antes de completarlos.

#figure(
  image("images/tabla.png", width: 60%)
) <fig:tabla>

#figure(
  image("images/ej2.png", width: 60%),
  caption: "Se dice APAREADOS cuando dos electrones ocupan el mismo orbital con spins opuestos."
) <fig:ej2>


=== Configuración Electrónica (CE)
- *Regla de las Diagonales*: Orden creciente de energía para el llenado de orbitales.
- *Configuración Electrónica Externa (CEE)*: Son los electrones en el último nivel de energía. Determinan las propiedades químicas del elemento.


#figure(
  image("images/diag.png", width: 80%)
) <fig:diag>

== Estados del Átomo
- *Fundamental*: Mínima energía posible (sigue la regla de las diagonales).
- *Excitado*: Un electrón salta a un nivel superior de energía sin completar el anterior.
- *Prohibido*: Configuraciones que rompen las reglas establecidas (ej: más electrones de los permitidos por orbital)