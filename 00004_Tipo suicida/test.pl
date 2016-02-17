test('Tipo Suicida', [nondet]) :-
  tipoSuicida(fede),
  not((
    tipoSuicida(Pers),
    Pers \= fede
  )).
