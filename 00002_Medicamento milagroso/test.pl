test('medicamentoMilagroso funciona para consultas individuales', [nondet]) :-
  medicamentoMilagroso(eowyn, trancosin),
  not(medicamentoMilagroso(eomund, _)),
  not(medicamentoUtil(eomer, _)).

test('medicamentoMilagroso es inversible para la persona (primer argumento)', [true(Persona = eowyn), nondet]) :-
  medicamentoMilagroso(Persona, _).

test('medicamentoMilagroso es inversible para el medicamento (segundo argumento)', [true(Medicamento = trancosin), nondet]) :-
  medicamentoMilagroso(_, Medicamento).