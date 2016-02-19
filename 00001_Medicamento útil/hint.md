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

Además podés hacer predicados auxiliares. Sería una buena elección hacer `sirveParaCurar/2` y `sirveParaPotenciar/2`, que pueden relacionar a un medicamento con una enfermedad.
