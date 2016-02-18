test('medicamentoUtil funciona para consultas individuales', [nondet]) :-
  medicamentoUtil(eowyn, trancosin),
  medicamentoUtil(eomund, trancosin),
  not(medicamentoUtil(eomer, _)).

test('medicamentoUtil es inversible para la persona (primer argumento)', [true(Persona = eowyn), nondet]) :-
  medicamentoUtil(Persona, _).

test('medicamentoUtil es inversible para el medicamento (segundo argumento)', [true(Medicamento = trancosin), nondet]) :-
  medicamentoUtil(_, Medicamento).


