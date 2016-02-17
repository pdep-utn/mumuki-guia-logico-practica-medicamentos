test('Droga Simpática', [nondet]) :-
  drogaSimpatica(loratadina),
  not((
    drogaSimpatica(Droga),
    Droga \= loratadina
  )).
