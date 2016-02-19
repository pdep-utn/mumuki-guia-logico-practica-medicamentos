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

estaEnfermo(eowyn, heridaDeOrco).
estaEnfermo(eowyn, desazon).

estaEnfermo(eomund, desazon).
estaEnfermo(eomund, deseoDePoder).

estaEnfermo(franco, gripeA).

vende(laGondoriana, trancosin, 10).
vende(farmacity, trancosin, 20).
vende(drAhorro, trancosin, 15).
vende(drSimi, trancosin, 25).

vende(laGondoriana, loratadina, 50).
vende(farmacity, loratadina, 60).
vende(drAhorro, loratadina, 70).
vende(drSimi, loratadina, 80).

actividad(eowyn, fecha(16,3,3014), compro(trancosin, laGondoriana)).
actividad(eowyn, fecha(16,3,3014), preguntoPor(trancosin, farmacity)).
actividad(eowyn, fecha(16,3,3014), compro(loratadina, drAhorro)).
actividad(eowyn, fecha(17,3,3014), preguntoPor(trancosin, drSimi)).

actividad(eomund, fecha(17,3,3014), compro(trancosin, farmacity)).
actividad(eomund, fecha(17,3,3014), compro(trancosin, laGondoriana)).
actividad(eomund, fecha(17,3,3014), compro(loratadina, farmacity)).
actividad(eomund, fecha(21,5,3014), preguntoPor(trancosin, drSimi)).

padre(eowyn,eomer).
padre(eomund,eowyn).
padre(franco,eomund).

/* Punto 1 */
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

/* Punto 2 */
medicamentoMilagroso(Per, Med) :-
  estaEnfermo(Per, _),
  incluye(Med, _),
  forall(estaEnfermo(Per, Enf), sirveParaCurarYNoPotencia(Med, Enf)).

sirveParaCurarYNoPotencia(Med, Enf) :-
  sirveParaCurar(Med, Enf),
  not(sirveParaPotenciar(Med, Enf)).

/* Punto 3 */
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

/* Punto 4 */
tipoSuicida(Per) :-
  actividad(Per, _, compro(Med, _)),
  estaEnfermo(Per, OEnf),
  incluye(Med, Droga),
  efecto(Droga, potencia(OEnf)),
  forall(
    estaEnfermo(Per, Enf), 
    not( sirveParaCurar(Med, Enf) )
  ).

/* Punto 5 */
tipoAhorrativo(Pers) :-
  actividad(Pers, _, _),
  forall(
    actividad(Pers, _, compro(Medicamento, Farmacia)),
    preguntoEnOtraFarmaciaQueLoCobraMasCaro(Pers, Medicamento, Farmacia)
  ).

preguntoEnOtraFarmaciaQueLoCobraMasCaro(Pers, Medicamento, Farmacia) :-
  actividad(Pers, _, preguntoPor(Medicamento, Farmacia2)),
  Farmacia \= Farmacia2.
  

/* Punto 6 */
tipoActivoEn(Per, Mes, Ano) :-
  actividad(Per, fecha(_, Mes, Ano), Actividad),
  esActividad(Actividad).

esActividad(compro(_, _)).
esActividad(preguntoPor(_, _)).

diaProductivo(Fecha) :-
  actividad(_, Fecha, _),
  forall(
    actividad(Per, Fecha, Actividad), 
    actividadUtil(Per, Actividad)
  ).

actividadUtil(Per, Actividad) :-
  medicamento(Actividad, Medic),
  medicamentoUtil(Per, Medic).

medicamento(compro(Medic, _), Medic).
medicamento(preguntoPor(Medic, _), Medic).

/* Punto 7 */
gastoTotal(Persona, Gasto) :-
  estaEnfermo(Persona, _),
  findall(Precio, gastoCompra(Persona, Precio), Precios),
  sumlist(Precios, Gasto).

gastoCompra(Persona, Precio) :-
  actividad(Persona, _, compro(Med, Far)),
  vende(Far, Med, Precio).
