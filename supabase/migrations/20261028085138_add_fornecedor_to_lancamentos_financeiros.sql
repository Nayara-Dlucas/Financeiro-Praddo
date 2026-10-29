ALTER TABLE public.lancamentos_financeiros
  ADD COLUMN IF NOT EXISTS fornecedor text;
