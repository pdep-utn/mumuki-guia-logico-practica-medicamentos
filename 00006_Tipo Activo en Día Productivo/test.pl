test('tipoActivoEn si una persona compro o pregunto por en un mes de algun año', [nondet]) :-
  tipoActivoEn(eomer, 6, 3014),
  tipoActivoEn(eomer, 7, 3014),
  tipoActivoEn(eomund, 8, 3014),
  not(tipoActivoEn(eowyn, _, _)).

test('tipoAhorrativo es inversible para su primer argumento (una persona)', [true(member(Persona, [eomer, eomund])), nondet]) :-
  tipoActivoEn(Persona, _, _).

test('tipoAhorrativo es inversible para su segundo argumento (un mes)', [true(member(Mes, [6, 7, 8])), nondet]) :-
  tipoActivoEn(_, Mes, _).

test('tipoAhorrativo es inversible para su tercer argumento (un año)', [true(Ano = 3014), nondet]) :-
  tipoActivoEn(_, _, Ano).

