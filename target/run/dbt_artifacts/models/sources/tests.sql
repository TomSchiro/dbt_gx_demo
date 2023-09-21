
  
    

        create or replace transient table BRONZE.OBSERVABILITY.tests  as
        (/* Bigquery won't let us `where` without `from` so we use this workaround */
with dummy_cte as (
    select 1 as foo
)

select
    cast(null as TEXT) as command_invocation_id,
    cast(null as TEXT) as node_id,
    cast(null as TIMESTAMP) as run_started_at,
    cast(null as TEXT) as name,
    cast(null as 
   ARRAY
) as depends_on_nodes,
    cast(null as TEXT) as package_name,
    cast(null as TEXT) as test_path,
    cast(null as 
   ARRAY
) as tags
from dummy_cte
where 1 = 0
        );
      
  