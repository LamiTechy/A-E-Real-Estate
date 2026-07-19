-- Run this in Supabase SQL Editor (Dashboard > SQL Editor)
-- Creates the applications table for A&E Rental Application

CREATE TABLE IF NOT EXISTS a_applications (
  id BIGSERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  phone TEXT,
  email TEXT,
  app_date TEXT,
  moving_date TEXT,
  occupation TEXT,
  occupants TEXT,
  has_vehicle TEXT,
  has_pets TEXT,
  been_evicted TEXT,
  addr_street1 TEXT,
  addr_street2 TEXT,
  addr_city TEXT,
  addr_state TEXT,
  addr_zip TEXT,
  payment_methods TEXT,
  signature_data TEXT,
  submitted_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Row Level Security (optional, but recommended)
ALTER TABLE a_applications ENABLE ROW LEVEL SECURITY;

-- Allow anonymous users to insert rows
CREATE POLICY "anon_insert" ON a_applications
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Allow anonymous users to select rows
CREATE POLICY "anon_select" ON a_applications
  FOR SELECT
  TO anon
  USING (true);
