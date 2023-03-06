 SELECT current_database(), nspname || '.' || relname AS "relation",
    pg_relation_size(C.oid) AS "size"
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE nspname NOT IN ('pg_catalog', 'information_schema')
    and relname like  '%pgbench_accounts%'
  ORDER BY pg_relation_size(C.oid) DESC
  LIMIT 20;

