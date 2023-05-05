select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with validation_errors as (
    select
        ORDER_PK_1, count(*) as row_count
    from BRONZE.audit.hub_order
    group by ORDER_PK_1
    having count(*) > 1
        or ORDER_PK_1 is null
        
)

select *
from validation_errors
      
    ) dbt_internal_test