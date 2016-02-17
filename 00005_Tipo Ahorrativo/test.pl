test('Tipo Ahorrativo', [nondet]) :-
  tipoAhorrativo(eowyn),
  not((
    tipoAhorrativo(Pers),
    Pers \= eowyn
  )).
