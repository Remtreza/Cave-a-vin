create table if not exists public.wines(id text primary key,user_id uuid not null references auth.users(id) on delete cascade,name text not null,domain text default '',appellation text default '',vintage int default 0,color text default 'Rouge',qty int default 0,price numeric(10,2) default 0,location text default '',drink_from int default 0,drink_until int default 0,pairings text default '',notes text default '',photo_url text default '',updated_at timestamptz default now());
alter table public.wines enable row level security;
drop policy if exists "own wines" on public.wines;
create policy "own wines" on public.wines for all using(auth.uid()=user_id) with check(auth.uid()=user_id);
