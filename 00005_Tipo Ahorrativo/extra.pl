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

vende(laGondoriana, trancosin, 30).
vende(farmacity, trancosin, 33).
vende(drAhorro, trancosin, 35).
vende(drSimi, trancosin, 32).

actividad(eomer, fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomer, fecha(15,6,3014), preguntoPor(trancosin, farmacity)).
actividad(eomer, fecha(15,6,3014), preguntoPor(trancosin, drAhorro)).
actividad(eomer, fecha(15,6,3014), preguntoPor(trancosin, drSimi)).

actividad(eowyn, fecha(15,6,3014), compro(trancosin, farmacity)).

actividad(eomund, fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomund, fecha(15,6,3014), preguntoPor(trancosin, farmacity)).
actividad(eomund, fecha(15,6,3014), preguntoPor(trancosin, drAhorro)).
actividad(eomund, fecha(15,6,3014), preguntoPor(trancosin, drSimi)).

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

tipoSuicida(Per) :-
  actividad(Per, _, compro(Med, _)),
  estaEnfermo(Per, OEnf),
  incluye(Med, Droga),
  efecto(Droga, potencia(OEnf)),
  forall(
    estaEnfermo(Per, Enf), 
    not( sirveParaCurar(Med, Enf) )
  ).

