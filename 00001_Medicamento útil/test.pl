test('Medicamento Útil') :-
  findall((P, M), medicamentoUtil(P, M), List),
  assertion(List == [(eomer, trancosin), (eowyn, trancosin), (eomund, trancosin)]).