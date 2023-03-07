pg_ctl -D /opt/homebrew/var/postgresql@15 stop
pg_ctl -D /opt/homebrew/var/postgresql@15 start

logfile='/tmp/custom_pgbench_setup.sql'
uptime >> $logfile
psql -f create_ff_database.sql >> $logfile
pgbench -i --foreign-keys -s 10  -F 80 -d ff80 >> $logfile
psql -f custom_pgbench_accounts.sql -d ff80 >> $logfile
pgbench -i --foreign-keys -s 10  -F 90 -d ff90 >> $logfile
psql -f custom_pgbench_accounts.sql -d ff90 >> $logfile
pgbench -i --foreign-keys -s 10  -F 100 -d ff100 >> $logfile
psql -f custom_pgbench_accounts.sql -d ff100 >> $logfile


psql -d ff80 -f custom_pgbench_longrunning_transaction.sql &
psql -d ff90 -f custom_pgbench_longrunning_transaction.sql &
psql -d ff100 -f custom_pgbench_longrunning_transaction.sql &


time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

time pgbench  -t 20000 -d ff100 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff90 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log
time pgbench  -t 20000 -d ff80 -f custom_pgbench_workload_hot.sql &> /tmp/custom_pgbench_workload_hot.log

./check_pg_stat_user_tables.sh

