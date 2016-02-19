Desarrollá el predicado `medicamentoMilagroso/2` que relaciona una **persona** con un **medicamento** y se verifica si este último sirve para curar (o sea, tiene una droga que cura) todas las enfermedades de las está enfermo una persona,
y además no sirve para potenciar (o sea, ninguna de sus drogas potencia) sus enfermedades.

Recordá siempre que podés nuestra base de conocimiento tiene estos predicados definidos

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