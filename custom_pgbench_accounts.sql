alter table pgbench_accounts add f1 integer default 0, add f2 integer default 0, add f3 integer default 0, add f4 integer default 0, add f5 integer default 0, add f6 integer default 0, add f7 integer default 0, add f8 integer default 0, add f9 integer default 0, add f10 integer default 0;
--delete from pgbench_accounts where aid > 1000;
--vacuum full pgbench_accounts;
create index pgbench_accounts_f1 on pgbench_accounts(f1);
create index pgbench_accounts_f2 on pgbench_accounts(f2);
create index pgbench_accounts_f3 on pgbench_accounts(f3);
create index pgbench_accounts_f4 on pgbench_accounts(f4);
create index pgbench_accounts_f5 on pgbench_accounts(f5);
create index pgbench_accounts_f6 on pgbench_accounts(f6);
create index pgbench_accounts_f7 on pgbench_accounts(f7);
create index pgbench_accounts_f8 on pgbench_accounts(f8);
create index pgbench_accounts_f9 on pgbench_accounts(f9);
\d+ pgbench_accounts


