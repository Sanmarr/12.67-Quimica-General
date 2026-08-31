= Cambios de Estado de Agregación

#figure(
  image("images/est.png", width: 50%),
)<fig:est>

== Caracteristicas

#let violeta = rgb("#D8C7E0")
#let verde   = rgb("#E5F0D0")
#let azul    = rgb("#C5E3F7")
#let gris    = rgb("#6D6E70")

#table(
  columns: (1fr, 1fr, 1fr),
  stroke: 1pt + white,
  inset: 1pt,

  // ───────── ENCABEZADOS ─────────

  block(
    fill: gris,
    width: 100%,
    inset: 6pt,
    align(center)[
      #text(fill: white, weight: "bold", size: 15pt)[Sólidos]
    ]
  ),

  block(
    fill: gris,
    width: 100%,
    inset: 6pt,
    align(center)[
      #text(fill: white, weight: "bold", size: 15pt)[Líquidos]
    ]
  ),

  block(
    fill: gris,
    width: 100%,
    inset: 6pt,
    align(center)[
      #text(fill: white, weight: "bold", size: 15pt)[Gases]
    ]
  ),

  // ───────── SÓLIDOS ─────────

  block(
    fill: violeta,
    width: 100%,
    inset: 8pt,
  )[
    #enum(
      tight: true,
      [Tienen forma definida (resisten la deformación)],
      [Son casi incompresibles],
      [De ordinario, su densidad es mayor que la de los líquidos],
      [No fluyen],
      [Sólo se difunden con suma lentitud en sólidos],
      [La distribución de sus partículas es muy ordenada y están muy cerca unas de otras; de ordinario, sus partículas sólo tienen movimiento vibratorio],
    )
  ],

  // ───────── LÍQUIDOS ─────────

  block(
    fill: verde,
    width: 100%,
    inset: 8pt,
  )[
    #enum(
      tight: true,
      [No tienen forma definida (toman la forma de los recipientes que los contienen)],
      [Tienen volumen definido (sólo se comprimen en grado mínimo)],
      [Tienen densidad elevada],
      [Tienen fluidez],
      [Se difunden en otros líquidos],
      [Se componen de cúmulos desordenados de partículas que están muy cerca unas de otras; el movimiento de sus partículas es aleatorio en tres dimensiones],
    )
  ],

  // ───────── GASES ─────────

  block(
    fill: azul,
    width: 100%,
    inset: 8pt,
  )[
    #enum(
      tight: true,
      [No tienen forma definida (ocupan todo el volumen disponible)],
      [Son compresibles],
      [Su densidad es baja],
      [Tienen fluidez],
      [Se difunden con velocidad],
      [Se componen de partículas en extremo desordenadas con mucho espacio vacío entre ellas; el movimiento de sus partículas es rápido y aleatorio en tres dimensiones],
    )
  ],
)

#text(weight: "bold", fill: red)[La energía cinética] promedio de una colección de moléculas gaseosas #text(weight: "bold", fill: red)[disminuye conforme baja la 
temperatura]. A medida que una muestra de gas se enfría y comprime, el rápido movimiento 
aleatorio de las moléculas gaseosas disminuye. Las moléculas se aproximan entre sí y las atracciones intermoleculares aumentan.

// #figure(
//   image("images/temp.png", width: 60%),
// )<fig:temp>

#figure(
  image("images/etapa.png", width: 70%),
)<fig:etapa>

== Fuerzas #text(weight: "bold", fill: blue)[Intra]moleculares / #text(weight: "bold", fill: orange)[Inte]rmoleculares

#figure(
  image("images/table.png", width: 70%),
)

Las #text(weight: "bold", fill: blue)[uniones intramoleculares] o 
#text(weight: "bold", fill: blue)[enlaces químicos] mantienen unidos a los átomos dentro de una sustancia. Pueden ser iónicas, covalentes o metálicas.
Estas pueden ser #text(weight: "bold", fill: blue)[ionicas], #text(weight: "bold", fill: blue)[covalentes] o #text(weight: "bold", fill: blue)[métalicas].

Las #text(weight: "bold", fill: orange)[interacciones intermoleculares] son 
atracciones entre moléculas y permiten la cohesión de las sustancias. Pueden ser interacciones #text(weight: "bold", fill: orange)[London], #text(weight: "bold", fill: orange)[Dipolo-Dipolo], #text(weight: "bold", fill: orange)[Puente de Hidrogeno].

== Uniones Intramoleculares

=== Unión iónica

Es la #text(weight: "bold", fill: black)[atracción electrostática entre iones 
de signo contrario]. Es un #text(weight: "bold", fill: red)[enlace químico fuerte], 
lo que permite la formación de estructuras cristalinas.

Los compuestos iónicos no forman moléculas individuales, sino 
#text(weight: "bold")[redes cristalinas] de iones.

Presentan, en general, #text(weight: "bold", fill: red)[elevadas temperaturas 
de fusión y ebullición] y son sólidos a temperatura ambiente.

Ejemplos: sales como NaCl.

=== Unión metálica

En este tipo de unión, los átomos metálicos tienen electrones de su 
configuración electrónica externa #text(weight: "bold")[deslocalizados], 
es decir, pueden moverse libremente a través de la estructura.

Los cationes metálicos se encuentran inmersos en un #text(weight: "bold")[mar 
de electrones deslocalizados], lo que genera la unión metálica.

Las temperaturas de fusión y de ebullición son variables según el metal. 
Muchos metales son #text(weight: "bold", fill: red)[sólidos a temperatura 
ambiente].

=== Enlace covalente

Es una #text(weight: "bold", fill: red)[unión química fuerte] en la que los 
átomos comparten pares de electrones.

Los enlaces covalentes pueden dar lugar a dos tipos de sustancias:

=== Sustancias covalentes moleculares

Están formadas por #text(weight: "bold")[moléculas individuales], dentro de 
las cuales los átomos están unidos mediante enlaces covalentes.

Ejemplos: H₂O, CO₂ y CH₄.

La temperatura de fusión y de ebullición depende principalmente de las 
#text(weight: "bold", fill: red)[fuerzas intermoleculares] entre las moléculas, 
y no directamente de la fuerza de los enlaces covalentes.

=== Redes covalentes

Los átomos están unidos mediante enlaces covalentes formando una 
#text(weight: "bold")[red tridimensional continua], en lugar de moléculas 
individuales.

Ejemplos: diamante y SiO₂.

Debido a que para fundirlas es necesario romper numerosos enlaces covalentes, 
presentan, en general, #text(weight: "bold", fill: red)[elevadas temperaturas 
de fusión].

== Interacciones Intermoleculares

=== Dipolo - Dipolo

Es una interacción entre #text(weight: "bold", fill: red)[moléculas polares].

Las moléculas polares poseen un dipolo permanente, con una región de carga 
parcialmente positiva ($delta^+$) y otra parcialmente negativa ($delta^-$).

Los extremos de signo opuesto de moléculas cercanas se atraen 
electrostáticamente.

No es un enlace químico verdadero, sino una #text(weight: "bold")[interacción 
intermolecular], por lo que es mucho más débil que los enlaces iónicos, 
covalentes o metálicos.

=== Puentes de Hidrógeno

El #text(weight: "bold")[puente de hidrógeno] es un caso particularmente fuerte 
de interacción dipolo-dipolo.

Se presenta cuando una molécula posee un átomo de H unido covalentemente a 
uno de los elementos pequeños y altamente electronegativos: 
#text(weight: "bold", fill: red)[F, O o N].

El H adquiere una carga parcial positiva ($delta^+$), mientras que F, O o N 
adquieren una carga parcial negativa ($delta^-$). El H puede entonces 
interactuar con un par de electrones libres de un átomo electronegativo de 
otra molécula.

Por ser interacciones intermoleculares relativamente fuertes, producen 
#text(weight: "bold", fill: red)[temperaturas de fusión y de ebullición más 
altas] que las esperadas para moléculas de tamaño similar.

#figure(
  image("images/pteH.png", width: 80%),
)

=== Fuerzas London / Dispersión

Se deben a la #text(weight: "bold", fill: red)[formación de dipolos 
instantáneos o transitorios].

Los electrones se encuentran en movimiento constante. En un determinado 
instante, pueden distribuirse de manera asimétrica alrededor de un átomo 
o molécula, generando un #text(weight: "bold")[dipolo instantáneo].

Este dipolo puede inducir un dipolo en una molécula vecina, produciendo una 
atracción entre ambas.

Las fuerzas de London están presentes en #text(weight: "bold")[todas las 
moléculas y átomos]. Sin embargo, son especialmente importantes en las 
#text(weight: "bold", fill: red)[moléculas no polares], ya que en ellas 
constituyen la principal interacción intermolecular.

