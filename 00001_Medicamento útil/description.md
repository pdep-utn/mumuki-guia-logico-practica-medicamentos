Escribí el predicado `medicamentoUtil/2`,
que realaciona a una **persona** con un **medicamento** si este último 
sirve para curar (o sea, tiene una droga que cura)
alguna enfermedad de las que la persona está enfermo y además 
no sirve para potenciar (o sea, ninguna de sus drogas potencia) 
ninguna enfermedad de las que la persona está enfermo.

Recordá los predicados que ya existen...

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
```
