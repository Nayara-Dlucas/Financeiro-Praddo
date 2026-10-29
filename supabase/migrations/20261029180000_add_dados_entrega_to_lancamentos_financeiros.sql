alter table public.lancamentos_financeiros
  add column if not exists dados_entrega jsonb not null default '{}'::jsonb;
