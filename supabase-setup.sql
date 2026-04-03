-- Run this in your Supabase SQL Editor (once)

create table if not exists students (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  created_at timestamptz default now()
);

create table if not exists days (
  id uuid default gen_random_uuid() primary key,
  day_number integer not null unique,
  question text not null default '',
  is_open boolean not null default false,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists submissions (
  id uuid default gen_random_uuid() primary key,
  student_id uuid references students(id) on delete cascade,
  student_name text not null,
  day_number integer not null,
  answer text not null,
  submitted_at timestamptz default now(),
  unique(student_id, day_number)
);

alter table students enable row level security;
alter table days enable row level security;
alter table submissions enable row level security;

create policy "students_read" on students for select using (true);
create policy "students_insert" on students for insert with check (true);
create policy "days_read" on days for select using (true);
create policy "days_insert" on days for insert with check (true);
create policy "days_update" on days for update using (true);
create policy "submissions_read" on submissions for select using (true);
create policy "submissions_insert" on submissions for insert with check (true);

insert into days (day_number, question, is_open) values
  (1,'',false),(2,'',false),(3,'',false),(4,'',false),
  (5,'',false),(6,'',false),(7,'',false),(8,'',false)
on conflict (day_number) do nothing;
