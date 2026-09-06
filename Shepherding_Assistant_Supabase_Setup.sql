-- Shepherding Assistant - initial cloud data table
-- Run this in Supabase SQL Editor.
-- This stores one complete app data document per signed-in user.

create table if not exists public.group_data (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.group_data enable row level security;

-- Remove these first so the script can be safely re-run during setup.
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

-- Least-privilege Data API access for signed-in users.
grant select, insert, update, delete on public.group_data to authenticated;

-- Verify the table and RLS state.
select
  table_name,
  row_security
from information_schema.tables
where table_schema = 'public'
  and table_name = 'group_data';
