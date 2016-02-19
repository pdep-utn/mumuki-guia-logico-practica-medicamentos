incluye(trancosin, athelas).
incluye(trancosin, cenizaBoromireana).
incluye(aerotina, loratadina).
incluye(bayaspirina, aspirina).

efecto(athelas, cura(desazon)).
efecto(athelas, cura(heridaDeOrco)).
efecto(athelas, cura(suenio)).
efecto(athelas, cura(asma)).
efecto(cenizaBoromireana, cura(gripeA)).
efecto(cenizaBoromireana, potencia(deseoDePoder)).
efecto(loratadina, potencia(gripeA)).
efecto(loratadina, potencia(heridaDeOrco)).
efecto(loratadina, potencia(deseoDePoder)).

estaEnfermo(eomer, heridaDeOrco).
estaEnfermo(eomer, deseoDePoder).
estaEnfermo(eomer, gripeA).
estaEnfermo(eowyn, heridaDeOrco).
estaEnfermo(eowyn, desazon).
estaEnfermo(eomund, desazon).
estaEnfermo(eomund, deseoDePoder).

vende(laGondoriana, sanaSam, 35).
vende(laGondoriana, trancosin, 35).
vende(laGondoriana, trancosin, 10).
vende(laGondoriana, aerotina, 10).
vende(laGondoriana, aerotina, 7).
vende(laGondoriana, bayaspirina, 11).
vende(laGondoriana, bayaspirina, 7).

actividad(eomer, fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomer, fecha(15,8,3014), preguntoPor(sanaSam, laGondoriana)).
actividad(eowyn, fecha(14,9,3014), preguntoPor(sanaSam, laGondoriana)).
actividad(eowyn, fecha(14,9,3014), compro(trncosin, laGondoriana)).
actividad(eowyn, fecha(14,9,3014), compro(aerotina, laGondoriana)).

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

medicamentoMilagroso(Per, Med) :-
  estaEnfermo(Per, _),
  incluye(Med, _),
  forall(estaEnfermo(Per, Enf), sirveParaCurarYNoPotencia(Med, Enf)).

sirveParaCurarYNoPotencia(Med, Enf) :-
  sirveParaCurar(Med, Enf),
  not(sirveParaPotenciar(Med, Enf)).

drogaSimpatica(Droga) :-
  efecto(Droga, _),
  findall(Droga, efecto(Droga, cura(_)), Drogas),
  length(Drogas, Cant),
  not(efecto(Droga, potencia(_))),
  Cant >= 4.

drogaSimpatica(Droga) :-
  efecto(Droga, cura(Eowyn)),
  efecto(Droga, cura(Eomer)),
  Eowyn \= Eomer.

drogaSimpatica(Droga) :-
  incluye(Med, Droga),
  vende(_, Med, _),
  forall(vende(_, Med, Precio), not(Precio > 10)).
