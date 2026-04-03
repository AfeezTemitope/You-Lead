# You Lead Elite Group — Tech Empowerment Portal

## SETUP (do this once)

### 1. Create free Supabase project
- Go to https://supabase.com → New Project

### 2. Run the database
- In Supabase → SQL Editor → paste supabase-setup.sql → Run

### 3. Get your keys
- Supabase → Settings → API
- Copy: Project URL + anon/public key

### 4. Add keys to files
In BOTH index.html and admin.html, replace:
  YOUR_SUPABASE_URL
  YOUR_SUPABASE_ANON_KEY
In admin.html also set:
  YOUR_ADMIN_PASSWORD  ← choose any password

### 5. Deploy to Vercel
  npm install -g vercel
  vercel

Your site: https://your-project.vercel.app
Admin:     https://your-project.vercel.app/admin

## HOW TO USE
- Admin: open days one by one, paste each day's question, click Open Day
- Students: visit the link, enter their full name, pick the day, paste answer, submit
# You-Lead
