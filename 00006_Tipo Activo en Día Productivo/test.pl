test('Tipo Activo En') :-
    findall(
      (P, M, A), 
      tipoActivoEn(P, M, A), 
      [(fede, 6, 3014), (eomer, 6, 3014), (eomer, 8, 3014), (eowyn, 9, 3014), (franco, 6, 3014)]
    ).