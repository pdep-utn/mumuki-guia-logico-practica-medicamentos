Realizá los siguientes predicados

* `tipoActivoEn/3` que relaciona a una persona, un mes y un año si la persona realizó alguna actividad
(compra y/o pregunta) en ese mes y año.

* `diaProductivo/1`, que se verifica para una fecha (functor `fecha(Dia,Mes,Anio)`) si todas las actividades que se hicieron en ese día fueron compras o preguntas de un medicamento útil para la persona que hizo la actividad.

Recordá los predicados disponibles que ya tenés

```prolog
estaEnfermo(Persona, Enfermedad).

actividad(Persona, Fecha, Actividad).
  % Fecha :: fecha(Dia, Mes, Año).
  % Actividad :: compro(Medicamento, Farmacia) o preguntoPor(Medicamento, Farmacia)
  
medicamentoUtil(Persona, Medicamento).

sirveParaCurar(Medicamento, Enfermedad).

sirveParaPotenciar(Medicamento, Enfermedad).
```