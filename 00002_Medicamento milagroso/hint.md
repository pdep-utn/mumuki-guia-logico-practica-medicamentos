Pensá en terminos de ![para todo](https://upload.wikimedia.org/math/d/4/d/d4d49bead125261b226eaa867bd016ce.png) y ![no existencia](https://upload.wikimedia.org/math/4/9/a/49a86fd4f4200bd9e1ac5761d27f6880.png)

Recordá los predicados que ya existen...

```prolog
incluye(Medicamento, Droga).

efecto(Droga, Efecto). 
  % Efecto :: cura(Enfermedad) o potencia(Enfermedad).

vende(Farmacia, Medicamento, Precio).

estaEnfermo(Persona, Enfermedad).

padre(Padre, Hijo).

actividad(Persona, Fecha, Actividad).
  % Fecha :: fecha(Dia, Mes, Anio).
  % Actividad :: compro(Medicamento, Farmacia) o preguntoPor(Medicamento, Farmacia)
```