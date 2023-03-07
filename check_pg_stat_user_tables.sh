psql -d ff80 -f check_pg_stat_user_tables.sql
psql -d ff90 -f check_pg_stat_user_tables.sql
psql -d ff100 -f check_pg_stat_user_tables.sql
psql -d ff80 -f custom_pgbench_accounts_size_check.sql
psql -d ff90 -f custom_pgbench_accounts_size_check.sql
psql -d ff100 -f custom_pgbench_accounts_size_check.sql

