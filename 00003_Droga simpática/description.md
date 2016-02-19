Codificá el predicado `drogaSimpatica/1`. Se verifica para una droga si cumple al menos una de
estas condiciones:

* Cura al menos 4 enfermedades y no potencia ninguna.
* Cura al menos una enfermedad de la que Eomer está enfermo y otra distinta de la que Eowyn está enferma.
* Se incluye en algún medicamento, dicho medicamento se vende en alguna farmacia, y ninguna farmacia lo vende a más de 10 pesos.

Recordá los predicados que ya existen...

```prolog
incluye(Medicamento, Droga).

efecto(Droga, Efecto). 
  % Efecto :: cura(Enfermedad) o potencia(Enfermedad).

vende(Farmacia, Medicamento, Precio).

estaEnfermo(Persona, Enfermedad).

```

**Nota:**
* Eomer y Eowyn son individuos que ya se encuentran en de nuestra base de conocimiento (eomer y eowyn).