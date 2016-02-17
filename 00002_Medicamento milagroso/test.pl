test('Medicamento Milagroso', [nondet]) :-
  medicamentoMilagroso(eowyn,trancosin),
  medicamentoMilagroso(eomund,trancosin),
  not(medicamentoMilagroso(eomer, _)),
  not((
    medicamentoMilagroso(_, Med), 
    Med \= trancosin
  )).
