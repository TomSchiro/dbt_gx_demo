select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with validation_errors as (
    select
        INVENTORY_HASHDIFF, count(*) as row_count
    from BRONZE.audit.sat_inv_inventory_details
    group by INVENTORY_HASHDIFF
    having count(*) > 1
        or INVENTORY_HASHDIFF is null
        
)

select *
from validation_errors
      
    ) dbt_internal_test