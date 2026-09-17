create table if not exists public.wines(id text primary key,user_id uuid not null references auth.users(id) on delete cascade,name text not null,domain text,appellation text,vintage integer,color text,qty integer not null default 0,price numeric(10,2) default 0,location text,drink_from integer,until integer,pairings text,notes text,photo text,updated_at timestamptz not null default now());
alter table public.wines enable row level security;
create policy "own wines select" on public.wines for select using(auth.uid()=user_id);
create policy "own wines insert" on public.wines for insert with check(auth.uid()=user_id);
create policy "own wines update" on public.wines for update using(auth.uid()=user_id) with check(auth.uid()=user_id);
create policy "own wines delete" on public.wines for delete using(auth.uid()=user_id);
