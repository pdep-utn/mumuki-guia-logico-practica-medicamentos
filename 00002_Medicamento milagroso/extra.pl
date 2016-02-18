incluye(trancosin, athelas).
incluye(trancosin, cenizaBoromireana).

efecto(athelas, cura(desazon)).
efecto(athelas, cura(heridaDeOrco)).
efecto(cenizaBoromireana, cura(gripeA)).
efecto(cenizaBoromireana, potencia(deseoDePoder)).

estaEnfermo(eomer, heridaDeOrco).
estaEnfermo(eomer, deseoDePoder).
estaEnfermo(eowyn, heridaDeOrco).
estaEnfermo(eomund, desazon).
estaEnfermo(eomund, deseoDePoder).


medicamentoUtil(Per, Med) :-
  estaEnfermo(Per, Enf),
  sirveParaCurar(Med, Enf),
  forall(estaEnfermo(Per, Enf2), not(sirveParaPotenciar(Med, Enf2))).

sirveParaCurar(Med, Enf) :-
  incluye(Med, Droga),
  efecto(Droga, cura(Enf)).
  
sirveParaPotenciar(Med, Enf) :-
  incluye(Med, Droga),
  efecto(Droga, potencia(Enf)).

