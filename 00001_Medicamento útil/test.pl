test(trancosin_medicamento_util_para_eowyn, [nondet]) :-
  medicamentoUtil(eowyn, trancosin).

test(trancosin_medicamento_util_para_eomund, [nondet]) :-
  medicamentoUtil(eomund, trancosin).

test(medicamento_util_es_inversible_para_la_persona, [true(Persona = eowyn), nondet]) :-
  medicamentoUtil(Persona, _).

test(medicamento_util_es_inversible_para_el_medicamento, [true(Medicamento = trancosin), nondet]) :-
  medicamentoUtil(_, Medicamento).

test(medicamento_util_es_inversible_para_el_medicamento, [fail]) :-
  medicamentoUtil(eomer, _).

