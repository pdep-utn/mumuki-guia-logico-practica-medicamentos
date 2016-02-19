test('tipoAhorrativo si compro medicamento en una farmacia y todas las otras farmacias que pregunto lo cobran más caro', [nondet]) :-
  tipoAhorrativo(eomer),
  tipoAhorrativo(eomund),
  not(tipoAhorrativo(eowyn)).

test('tipoAhorrativo es inversible', [true(Persona = eomer), nondet]) :-
  tipoAhorrativo(Persona).
