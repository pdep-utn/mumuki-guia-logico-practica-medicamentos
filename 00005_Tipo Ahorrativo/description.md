Desarrollá el predicado `tipoAhorrativo/1`, que se verifica para una persona si para cada medicamento
que compró, preguntó por el mismo medicamento en una farmacia que lo cobra
más caro que aquella en la que lo compró.

Recordá los predicados disponibles que ya tenés

```prolog
incluye(Medicamento, Droga).

efecto(Droga, Efecto). 
  % Efecto :: cura(Enfermedad) o potencia(Enfermedad).

vende(Farmacia, Medicamento, Precio).

estaEnfermo(Persona, Enfermedad).

padre(Padre, Hijo).

actividad(Persona, Fecha, Actividad).
  % Fecha :: fecha(Dia, Mes, Año).
  % Actividad :: compro(Medicamento, Farmacia) o preguntoPor(Medicamento, Farmacia)
  
medicamentoUtil(Persona, Medicamento).

sirveParaCurar(Medicamento, Enfermedad).

sirveParaPotenciar(Medicamento, Enfermedad).
```
