test('gastoTotal de una persona entre los medicamentos que compró', [nondet]) :-
  gastoTotal(eomer, 0),
  gastoTotal(eowyn, 80),
  gastoTotal(eomund, 90).

test('gastoTotal es inversible para su primer argumento (una persona)', [true(member(Persona, [eomer, eowyn, eomund])), nondet]) :-
  gastoTotal(Persona, _).

test('gastoTotal es inversible para su segundo argumento (el gasto)', [true(member(Gasto, [0, 80, 90])), nondet]) :-
  gastoTotal(_, Gasto).

