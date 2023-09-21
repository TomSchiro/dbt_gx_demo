
  
    

        create or replace transient table BRONZE.OBSERVABILITY.exposures  as
        (/* Bigquery won't let us `where` without `from` so we use this workaround */
with dummy_cte as (
    select 1 as foo
)

select
    cast(null as TEXT) as command_invocation_id,
    cast(null as TEXT) as node_id,
    cast(null as TIMESTAMP) as run_started_at,
    cast(null as TEXT) as name,
    cast(null as TEXT) as type,
    cast(null as 
   OBJECT
) as owner,
    cast(null as TEXT) as maturity,
    cast(null as TEXT) as path,
    cast(null as TEXT) as description,
    cast(null as TEXT) as url,
    cast(null as TEXT) as package_name,
    cast(null as 
   ARRAY
) as depends_on_nodes
from dummy_cte
where 1 = 0
        );
      
  