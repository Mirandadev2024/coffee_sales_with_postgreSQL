DB=coffee_sales
USER=postgres

create-db:
	psql -U $(USER) -d postgres -f infra/create_database.sql

schema:
	psql -U $(USER) -d $(DB) -f schemas/create_tables.sql

etl:
	psql -U $(USER) -d $(DB) -f etls/load_data.sql

views:
	psql -U $(USER) -d $(DB) -f views/views.sql

analytics:
	psql -U $(USER) -d $(DB) -f queries/analytics.sql

all: create-db schema etl views analytics
