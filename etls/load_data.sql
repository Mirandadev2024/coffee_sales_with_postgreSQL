-- Replace the path below with the absolute path to Coffee_sales.cvs
-- The file must be placed in a folder readable to the PostgreSQL server 
COPY staging_coffee_sales
FROM '/absolute/path/to/coffee_sales.csv'
DELIMITER ','
CSV HEADER;