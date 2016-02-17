test('Gasto Total') :-
  findall((P, Pl), gastoTotal(P, Pl), [(eomer, 35), (eomer, 35), (eowyn, 0), (eomund, 0), (fede, 35), (franco, 35)]).

