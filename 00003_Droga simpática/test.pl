test('drogaSimpatica si cura al menos 4 enfermedades y no potencia ninguna', [nondet]) :-
  drogaSimpatica(athelas).

test('drogaSimpatica si cura una enfermedad de eomer y otra distinta de eowyn', [nondet]) :-
  drogaSimpatica(cenizaBoromireana).

test('drogaSimpatica si un medicamento que la incluye se vende en al menos una farmacia y ninguna farmacia lo vende a mas de 10 pesos', [nondet]) :-
  drogaSimpatica(loratadina),
  not(drogaSimpatica(bayaspirina)).

test('drogaSimpatica es inversible', [true(Droga = athelas), nondet]) :-
  drogaSimpatica(Droga).
