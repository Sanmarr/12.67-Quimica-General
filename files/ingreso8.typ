= Soluciones

== Definiciones Básicas
Una *solución (sc)* es una mezcla homogénea de dos o más sustancias. Los especímenes de una solución tienen la misma composición química y propiedades físicas en todos sus puntos.

- *Soluto (st)*: Es la sustancia que se disuelve y suele encontrarse en menor proporción. Determina las propiedades químicas de la solución.
- *Solvente (sv)*: Es el componente que disuelve al soluto y determina el estado físico de la mezcla. El solvente universal es el agua ($"H"_2 O$) [1, 5].

== Solubilidad
Se define como la *máxima cantidad de soluto* (en gramos) que puede disolverse en una cantidad fija de solvente (usualmente 100 g de $"H"_2 O$) a una temperatura dada [1, 6].

=== Clasificación según la Saturación
#table(
  columns: (1fr, 2.5fr),
  inset: 10pt,
  align: horizon,
  [*Estado*], [*Descripción*],
  [Insaturada], [Contiene una cantidad de soluto menor al límite máximo de solubilidad.],
  [Saturada], [Contiene exactamente la máxima cantidad de soluto que el solvente permite disolver.],
  [Sobresaturada], [Contiene más soluto del que puede disolverse teóricamente. Es un sistema inestable donde el exceso suele precipitar.]
)

== Unidades de Concentración
Indican la relación cuantitativa entre el soluto y la solución o el solvente [9].

=== Unidades Físicas
#table(
  columns: (1fr, 1.5fr, 1fr),
  inset: 8pt,
  align: horizon,
  [*Unidad*], [*Definición*], [*Fórmula*],
  [% m/m], [g de soluto en 100 g de solución], [$(m_"st" /m_"sc") times 100 $],
  [% m/v], [g de soluto en 100 ml de solución], [$(m_"st" /V_"sc") times 100 $],
  [% v/v], [ml de soluto en 100 ml de solución], [$(V_"st" /V_"sc") times 100 $],
  [% m/$"m"_"sv"$], [g de soluto en 100 g de solvente], [$(m_"st" /m_"sv") times 100 $]
)
_Nota: Por lo general, los volúmenes #highlight[no son aditivos] ($V_"sc" eq.not V_"st" + V_"sv"$) a menos que el enunciado indique volúmenes aditivos._

=== Unidades Químicas
#table(
  columns: (1fr, 2fr, 1fr),
  inset: 8pt,
  align: horizon,
  [*Unidad*], [*Definición*], [*Fórmula*],
  [Molaridad (M)], [Moles de soluto por cada 1 L de solución], [$M = n_"st" / V_"sc"(L) $],
  [Molalidad (m)], [Moles de soluto por cada 1 kg de solvente], [$m = n_"st" / m_"sv"("kg")$],
  [Fracción Molar ($"chi"$)], [Relación entre los moles de un componente y los moles totales], [$chi_"st" = n_"st" / (n_"st" + n_"sv") $]
)
_Dato clave: #highlight[La suma de las fracciones molares de todos los componentes siempre es igual a 1] ($chi_"st" + chi_"sv" = 1$)._

== Procesos con Soluciones
- **Dilución**: Preparar una solución de menor concentración a partir de una de mayor concentración agregando solvente. La cantidad de moles de soluto permanece constante [7, 9].
  $ M_i times V_i = M_f times V_f $
- **Mezcla de Soluciones**: Cuando se mezclan dos soluciones del mismo soluto, los moles totales de la mezcla son la suma de los moles de cada solución.
  $ n_"st(mezcla)" = n_"st(1)" + n_"st(2)" + ... $

#figure(
  image("images/mezclas.png", width: 90%),
  caption: "Ejemplo de dilucion"
)<fig:mezclas>
