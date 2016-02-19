test('zafoDe si una persona no esta enferma de algo que su ancestro sí', [nondet]) :-
  zafoDe(eomer, desazon),
  zafoDe(eowyn, deseoDePoder),
  zafoDe(eomund, gripeA),
  zafoDe(eomer, desazon),
  zafoDe(eomer, gripeA),
  zafoDe(eowyn, gripeA),
  not(zafoDe(eomer, heridaDeOrco)),
  not(zafoDe(eomer, deseoDePoder)),
  not(zafoDe(eowyn, heridaDeOrco)),
  not(zafoDe(eowyn, desazon)),
  not(zafoDe(eomund, desazon)),
  not(zafoDe(eomund, deseoDePoder)),
  not(zafoDe(franco, gripeA)).

test('zafoDe es inversible para su primer argumento (una persona)', [true(member(Persona, [eomer, eowyn, eomund])), nondet]) :-
  zafoDe(Persona, _).

test('zafoDe es inversible para su segundo argumento (una enfermedad)', [true(member(Enfermedad, [desazon, deseoDePoder, gripeA])), nondet]) :-
  zafoDe(_, Enfermedad).
