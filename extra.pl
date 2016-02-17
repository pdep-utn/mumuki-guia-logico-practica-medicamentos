vende(laGondoriana, sanaSam, 35).
vende(laGondoriana, trancosin, 35).

incluye(trancosin, athelas).
incluye(trancosin, cenizaBoromireana).

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
