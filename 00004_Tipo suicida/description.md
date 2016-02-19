Escribí el predicado `tipoSuicida/1` que se verifica para una persona si compró al menos un producto
que no sirve para curar ninguna enfermedad de la que está enfermo y que sí sirve
para potenciar una enfermedad de la que está enfermo.

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