test('tipoSuicida si compro algun medicamento que no cura ninguna de sus enfermedades pero sí potencia al menos una', [nondet]) :-
  tipoSuicida(eowyn),
  not(tipoSuicida(eomer)),
  not(tipoSuicida(eomund)).

test('tipoSuicida es inversible', [true(Persona = eowyn), nondet]) :-
  tipoSuicida(Persona).
