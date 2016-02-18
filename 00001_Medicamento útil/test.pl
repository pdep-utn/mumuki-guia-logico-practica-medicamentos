test(trancosin_medicamento_util_para_eomer, [nondet]) :-
  medicamentoUtil(eomer,trancosin).

test(trancosin_medicamento_util_para_eowyn, [nondet]) :-
  medicamentoUtil(eowyn,trancosin).

test(trancosin_medicamento_util_para_eomund, [nondet]) :-
  medicamentoUtil(eomund,trancosin).
  
test(solo_trancosin_es_un_medicamento_util, [fail]) :-
  medicamentoUtil(_, Med), Med \= trancosin.
