El centro de manejo de enfermedades de Rohan quiere analizar la relación de los rohirrim 
(habitantes de este simpático país) con los medicamentos. Para eso armó unabase de conocimientos con estos predicados

```prolog
incluye(Medicamento, Droga).
  %! indica la composicion de cada medicamento;
  %! hay medicamentos que incluyen mas de una droga.
  
efecto(Droga, Efecto).
  %! cada droga puede servir para curar una o varias enfermedades, pero también puede potenciar otras enfermedades; 
  %! por lo tanto el efecto va a ser...
  %!   o bien un functor cura(Enfermedad)
  %!   o bien un functor potencia(Enfermedad)

vende(Farmacia, Medicamento, Precio).
  %! mediante el que conocemos en qué farmacias se vende cada medicamento, y a qué precio lo vende cada una.

estaEnfermo(Persona, Enfermedad).
  %! relaciona una persona con una enfermedad que tiene.

padre(Padre, Hijo).
  %! relaciona a un padre con su hijo.

actividad(Persona, Fecha, Actividad).
  %! mediante el que conocemos todas las actividades relacionadas con medicamentos que hicieron los rohirrim.
  %! Fecha es un functor fecha(Dia, Mes, Anio).
  %! Actividad es...
  %!   o bien un functor compro(Medicamento, Farmacia)
  %!   o bien un functor preguntoPor(Medicamento, Farmacia)
```