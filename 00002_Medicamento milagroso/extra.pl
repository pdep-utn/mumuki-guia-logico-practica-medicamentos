vende(laGondoriana, aerotina, 9).
vende(laGondoriana, sanaSam, 35).
vende(laGondoriana, trancosin, 35).

incluye(trancosin, athelas).
incluye(trancosin, cenizaBoromireana).
incluye(aerotina, loratadina).

efecto(athelas, cura(desazon)).
efecto(athelas, cura(heridaDeOrco)).
efecto(cenizaBoromireana, cura(gripeA)).
efecto(cenizaBoromireana, potencia(deseoDePoder)).

estaEnfermo(eomer, heridaDeOrco). % eomer es varon
estaEnfermo(eomer, deseoDePoder).
estaEnfermo(eowyn, heridaDeOrco). % eowyn es mujer
estaEnfermo(eomund, desazon).

padre(eomund, eomer).

actividad(eomer, fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomer, fecha(15,8,3014), preguntoPor(sanaSam, laGondoriana)).
actividad(eowyn, fecha(14,9,3014), preguntoPor(sanaSam, laGondoriana)).


medicamentoUtil(Per, Med) :-
  estaEnfermo(Per, Enf),
  sirveParaCurar(Med, Enf),
  not(sirveParaPotenciar(Med, Enf)).

sirveParaCurar(Med, Enf) :- 
  sirveParaCurar(_, Med, _, Enf).

sirveParaCurar(Per, Med, Droga, Enf) :-
  incluye(Med, Droga),
  efecto(Droga, cura(Enf)),
  estaEnfermo(Per, Enf).
  
sirveParaPotenciar(Med, Enf) :-
  incluye(Med, Droga),
  efecto(Droga, potencia(Enf)).
