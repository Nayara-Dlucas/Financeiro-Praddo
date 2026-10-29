-- IDs antigos eram gerados com Date.now() (milissegundos).
-- Reserve uma faixa futura separada para os IDs identity, evitando colisões
-- entre uma sessão antiga do painel e o novo ledger.
SELECT setval(
  pg_get_serial_sequence('public.lancamentos_financeiros','id'),
  GREATEST(COALESCE((SELECT max(id) FROM public.lancamentos_financeiros),1), 9999999999999),
  true
);
