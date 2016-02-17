test('Medicamento Útil', [nondet]) :-
  medicamentoUtil(eomer,trancosin),
  medicamentoUtil(eowyn,trancosin),
  medicamentoUtil(eomund,trancosin),
  not((
    medicamentoUtil(_, Med), 
    Med \= trancosin
  )).
