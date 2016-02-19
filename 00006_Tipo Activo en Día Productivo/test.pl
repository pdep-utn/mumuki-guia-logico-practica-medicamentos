test('tipoActivoEn si una persona compro o pregunto por en un mes de algun año', [nondet]) :-
  tipoActivoEn(eowyn, 3, 3014),
  tipoActivoEn(eomund, 4, 3014),
  tipoActivoEn(eomund, 5, 3014),
  not(tipoActivoEn(eomer, _, _)).

test('tipoAhorrativo es inversible para su primer argumento (una persona)', [true(member(Persona, [eowyn, eomund])), nondet]) :-
  tipoActivoEn(Persona, _, _).

test('tipoAhorrativo es inversible para su segundo argumento (un mes)', [true(member(Mes, [3, 4, 5])), nondet]) :-
  tipoActivoEn(_, Mes, _).

test('tipoAhorrativo es inversible para su tercer argumento (un año)', [true(Ano = 3014), nondet]) :-
  tipoActivoEn(_, _, Ano).

test('diaProductivo si solo se hicieron compras o preguntas sobre medicamentos útiles para una persona', [nondet]) :-
  diaProductivo(fecha(16, 3, 3014)),
  not(diaProductivo(fecha(17, 3, 3014))),
  not(diaProductivo(fecha(18, 3, 3014))),
  not(diaProductivo(fecha(20, 3, 3014))),
  not(diaProductivo(fecha(21, 3, 3014))).

test('diaProductivo es inversible', [true(Fecha == fecha(16, 3, 3014)), nondet]) :-
  diaProductivo(Fecha).
