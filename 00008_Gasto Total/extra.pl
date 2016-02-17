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
estaEnfermo(fede, deseoDePoder).
estaEnfermo(franco, heridaDeOrco).

padre(eomund,eomer).

actividad(fede,  fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomer, fecha(15,6,3014), compro(trancosin, laGondoriana)).
actividad(eomer, fecha(15,8,3014), preguntoPor(sanaSam, laGondoriana)).
actividad(eowyn, fecha(14,9,3014), preguntoPor(sanaSam, laGondoriana)).
actividad(franco,fecha(15,6,3014), compro(trancosin, laGondoriana)).

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
  
sirveParaPotenciar(Per, Med, Droga, Enf) :-
  incluye(Med, Droga),
  efecto(Droga, potencia(Enf)),
  estaEnfermo(Per, Enf).
  
sirveParaPotenciar(Med, Enf) :-
  sirveParaPotenciar(_, Med, _, Enf).

medicamentoMilagroso(Per, Med) :-
  estaEnfermo(Per, _), incluye(Med, _),
  forall(estaEnfermo(Per, Enf), sirveParaCurarYNoPotencia(Med, Enf)).

sirveParaCurarYNoPotencia(Med, Enf) :-
  sirveParaCurar(Med, Enf),
  not(sirveParaPotenciar(Med, Enf)).

drogaSimpatica(Droga) :-
  findall(Enf, efecto(Droga, cura(Enf)), Enfs),
  length(Enfs, Cant),
  Cant >= 4.

drogaSimpatica(Droga) :-
  sirveParaCurar(eomer, _, Droga, EnfEomer),
  sirveParaCurar(eowyn, _, Droga, EnfEowyn),
  EnfEomer \= EnfEowyn.

drogaSimpatica(Droga) :-
  incluye(Med, Droga),
  vende(Farm, Med, _),
  not((
    vende(Farm, Med, Precio),
    Precio > 10
  )).

tipoSuicida(Per) :-
  actividad(Per, _, compro(Med, _)),
  forall(
    estaEnfermo(Per, Enf), 
    not( sirveParaCurar(Per, Med, _, Enf) )
  ),
  sirveParaPotenciar(Per, Med, _, _).

tipoAhorrativo(Pers) :-
  actividad(Pers, _, _),
  forall(actividad(Pers, _, compro(Medicamento, Farmacia)), preguntoEnOtraFarmaciaQueLoCobraMasCaro(Pers, Medicamento, Farmacia)).

preguntoEnOtraFarmaciaQueLoCobraMasCaro(Pers, Medicamento, Farmacia) :-
  actividad(Pers, _, preguntoPor(Medicamento, Farmacia2)),
  Farmacia \= Farmacia2.
  
tipoActivoEn(Per, Mes, Ano) :-
  actividad(Per, fecha(_, Mes, Ano), _).


diaProductivo(Fecha) :-
  actividad(_, Fecha, _),
  forall(actividad(Per, Fecha, Actividad), actividadUtil(Per, Actividad)).

actividadUtil(Per, Act) :-
  actividadMedicamento(Act, Med),
  medicamentoUtil(Per, Med).

actividadMedicamento(compro(Med, _), Med).
actividadMedicamento(preguntopor(Med, _), Med).

