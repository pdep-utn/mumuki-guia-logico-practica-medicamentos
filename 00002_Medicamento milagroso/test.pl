test('Medicamento Milagroso') :-
  setof((P, M), medicamentoMilagroso(P, M), List),
  assertion(List == [(eomund, trancosin), (eowyn, trancosin)]).