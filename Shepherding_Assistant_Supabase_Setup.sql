-- Shepherding Assistant - Supabase Stage 1
-- Run this in Supabase SQL Editor.

create table if not exists public.group_data (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.group_data enable row level security;

drop policy if exists "Users can read their own group data" on public.group_data;
drop policy if exists "Users can insert their own group data" on public.group_data;
drop policy if exists "Users can update their own group data" on public.group_data;
drop policy if exists "Users can delete their own group data" on public.group_data;

create policy "Users can read their own group data"
on public.group_data
for select
to authenticated
using (auth.uid() = owner_id);

create policy "Users can insert their own group data"
on public.group_data
for insert
to authenticated
with check (auth.uid() = owner_id);

create policy "Users can update their own group data"
on public.group_data
for update
to authenticated
using (auth.uid() = owner_id)
with check (auth.uid() = owner_id);

create policy "Users can delete their own group data"
on public.group_data
for delete
to authenticated
using (auth.uid() = owner_id);

grant select, insert, update, delete on public.group_data to authenticated;
