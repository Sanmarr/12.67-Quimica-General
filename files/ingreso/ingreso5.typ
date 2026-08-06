= Nomenclatura y Unidades Químicas

== Número de Oxidación
Es el número de electrones que un átomo de un elemento toma o cede en una unión química de acuerdo a su electronegatividad (EN).
- *Positivo*: Cationes, el átomo cede electrones.
- *Negativo*: Aniones, el átomo gana electrones.

=== Reglas para asignar Números de Oxidación

#table(
  columns: (2fr, 3fr),
  inset: 8pt,
  align: horizon,
  stroke: 0.5pt,

  [*Caso*], [*Número de Oxidación*],

  [Sustancias simples \ $H_2$, $O_2$, $"Cl"_2$, $"Fe"$, etc.],
  [0],

  [Iones monoatómicos],
  [Igual a la carga del ion],

  [Grupo 1 (metales alcalinos)],
  [+1],

  [Grupo 2 (metales alcalinotérreos)],
  [+2],

  [Flúor],
  [-1 (siempre)],

  [Oxígeno],
  [-2 (generalmente); en peróxidos: -1],

  [Hidrógeno],
  [+1 con no metales; -1 con metales],

  [Compuesto neutro],
  [La suma de los números de oxidación es 0],

  [Ion poliatómico],
  [La suma de los números de oxidación es igual a la carga del ion]
)

== Nomenclatura de Compuestos
Los compuestos se clasifican según el número de elementos que los integran:

=== Compuestos Binarios (2 elementos)
- *Óxidos Básicos*: Metal + Oxígeno. Se nombran como _Óxido de (metal)_. Si el metal tiene dos estados, se usa sufijo *-oso* (menor) e *-ico* (mayor).
#table(
  columns: 4,
  align: center,
  stroke: 0.5pt,

  [*N.º de estados*], [*Estado de oxidación*], [*Ejemplo*], [*Nombre tradicional*],

  [1], [Único], [NaOH (Na = +1)], [Hidróxido de sodio],
  [], [], [Al₂O₃ (Al = +3)], [Óxido de aluminio],

  [2], [Menor], [FeO (Fe = +2)], [Óxido ferroso],
  [], [Mayor], [Fe₂O₃ (Fe = +3)], [Óxido férrico],
  [], [Menor], [CuCl (Cu = +1)], [Cloruro cuproso],
  [], [Mayor], [CuCl₂ (Cu = +2)], [Cloruro cúprico],

  [3], [Menor], [SO (S = +2)], [Óxido hiposulfuroso],
  [], [Intermedio], [SO₂ (S = +4)], [Óxido sulfuroso],
  [], [Mayor], [SO₃ (S = +6)], [Óxido sulfúrico],

  [4], [Menor], [HClO (Cl = +1)], [Ácido hipocloroso],
  [], [Intermedio menor], [HClO₂ (Cl = +3)], [Ácido cloroso],
  [], [Intermedio mayor], [HClO₃ (Cl = +5)], [Ácido clórico],
  [], [Mayor], [HClO₄ (Cl = +7)], [Ácido perclórico],
)
- *Óxidos Ácidos (Covalentes)*: No Metal + Oxígeno. Se utilizan prefijos de atomicidad (mono, di, tri, etc.).
#figure(
  image("images/prefijo.png", width: 90%)
) <fig:prefijo>
- *Hidruros Metálicos*: Metal + Hidrógeno ($"H"^-1$).
- *Hidrácidos*: Hidrógeno + No Metal (G16 y G17). En solución acuosa se nombran como "Ácido (no metal)-hídrico" (Ej: Ácido clorhídrico, $"HCl"$).
#figure(
  image("images/acidos.png", width: 90%)
) <fig:acidos>
- *Sales Binarias*: Metal + No Metal. Se nombran como "(no metal)-uro de (metal)" (Ej: $"NaCl"$, Cloruro de Sodio).
#figure(
  image("images/sales.png", width: 90%)
) <fig:sales>

=== Compuestos Ternarios (3 elementos)
- *Hidróxidos*: Metal + Grupo Oxidrilo ($"OH"^-$). Fórmula general: $M("OH")_v$ .
#figure(
  image("images/hidroxi.png", width: 90%)
) <fig:hidroxi>
- *Oxoácidos*: Hidrógeno + No Metal + Oxígeno. Fórmula: $H_x "NoMe" O_y$. 
  - *Nomenclatura*: Depende del n° de oxidación del no metal: *hipo...oso*, *...oso*, *...ico*, *per...ico*.
  - *Excepciones*: El Ácido Fosfórico ($H_3 P O_4$) y Fosforoso ($H_3 P O_3$) siempre llevan 3 Hidrógenos .
  #figure(
  image("images/oxo.png", width: 90%)
) <fig:oxo>
- *Oxosales*: Metal + No Metal + Oxígeno. Resultan de sustituir los hidrógenos de un oxoácido por un metal.
  - El sufijo del ácido *-oso* cambia a *-ito*.
  - El sufijo del ácido *-ico* cambia a *-ato*.
  - *Regla mnemotécnica*: "Pico de pato, oso chiquito".
#grid(
  columns: (auto, auto), // Two columns of equal width
  gutter: auto,         // Space between the images
  image("images/oxosales2.png", width: 100%),
  image("images/oxosales.png", width: 100%)
)

