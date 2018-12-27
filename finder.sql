--COLUMN
Select
  t.schema_name,
  t.table_name,
  c.column_name
From
  v_catalog.all_tables t
  left outer join v_catalog.columns c
    on c.table_id=t.table_id
Where
  c.column_name ilike '%display_env%'
  and schema_name not in ('cem','cem_test')
Order by 1,2,3;

--TABLE
Select
  t.schema_name,
  t.table_name,
  c.column_name
From
  v_catalog.all_tables t
  left outer join v_catalog.columns c
    on c.table_id=t.table_id
Where
  t.table_name ilike '%_hourly%'
  and schema_name not in ('cem','cem_test')
Order by 1,2,3;