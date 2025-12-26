# SQL Analytics Project – Coffee Sales

The dataset used in this project was obtained from Kaggle:

**Coffee Sales Dataset**  
Source: Kaggle.com  
Author: Navjot Kaushal  
Link: https://www.kaggle.com/datasets/navjotkaushal/coffee-sales-dataset

License: Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0)

This dataset is redistributed here in accordance with its license.
Any reuse or redistribution of the data must retain the same license
and provide appropriate attribution to the original author.

The data is used here for educational and analytical purposes only.

## About

This project demonstrates a reproducible SQL analytics workflow using PostgreSQL.
It covers database creation, schema definition, data loading (ETL), and analytical queries,
all executed via version-controlled SQL scripts.

The goal is to analyze coffee sales data and serve as a reference project for:
- SQL analytics
- PostgreSQL database structure
- reproducible data workflows using the command line

After running the project you will end up with a csv table demonstrating total sales and total revenue by coffee name

---

## Technologies
- PostgreSQL 18
- SQL (CTEs, window functions, views)

---

## How to run

### Step 1 — Create the database (required once)

Add psql to path

Run the database creation script:

```bash
psql -U postgres -d postgres -f infra/create_database.sql

Enter the password defined during postgreSQL installation

### Step 2 — Deploy the schema, data and analytics by running the orchestration script:
Before running the script, modify load_data.sql and analytics.sql to reference absolute paths where
postgreSQL has authorization to read and wirete from.

```bash

psql -U postgres -d coffee_sales -f run_all.sql


This script will:

create tables

load the CSV data (ETL)

create views (optional, if you chose to work with pgAdmin)

execute a sample analytical query and save it to a csv file


Notes

If necessary, adjust the path to Coffee_sales.csv (data/raw/Coffee_sales.csv) in load_data.sql to ensure PostgreSQL has permission to read the csv file.

All steps are reproducible using version-controlled SQL scripts.

Project structure:

├── infra/
│   └── create_database.sql
├── schemas/
│   └── create_tables.sql
├── etls/
│   └── load_data.sql
├── views/
│   └── views.sql
├── queries/
│   └── analytics.sql
├── results/
│   └── .gitkeep
├── data/
│   └── raw/
│       └── coffee_sales.csv
└── run_all.sql



