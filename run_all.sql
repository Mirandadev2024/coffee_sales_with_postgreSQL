\echo 'Creating tables...'
\i schemas/create_tables.sql

\echo 'Loading data (ETL)...'
\i etls/load_data.sql

\echo 'Creating views...'
\i views/views.sql

\echo 'Running analyticall queries...'
\i queries/analytics.sql
