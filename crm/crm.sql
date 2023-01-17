-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS industry;
DROP TABLE IF EXISTS industries_companies;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT,
    phone TEXT,
    company_id INTEGER
)

CREATE TABLE activity (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    occured_at TEXT,
    notes TEXT,
    salespersons_id INTEGER,
    contact_id INTEGER
)

CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company TEXT
)

CREATE TABLE salespersons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
)

CREATE TABLE industry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry TEXT
)

CREATE TABLE industries_companies ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT
    industry_id TEXT,
    company_id TEXT
) 