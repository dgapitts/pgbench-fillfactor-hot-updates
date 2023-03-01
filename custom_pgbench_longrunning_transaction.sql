BEGIN;
  --select count(*) from pgbench_accounts where f1 < 42;
  select pg_sleep(3600);
END;

