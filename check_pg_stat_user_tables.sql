select current_database(), relname, n_tup_upd, n_tup_hot_upd,n_dead_tup,round(100*n_tup_hot_upd/n_tup_upd,1),n_live_tup from pg_stat_user_tables where relname = 'pgbench_accounts';
