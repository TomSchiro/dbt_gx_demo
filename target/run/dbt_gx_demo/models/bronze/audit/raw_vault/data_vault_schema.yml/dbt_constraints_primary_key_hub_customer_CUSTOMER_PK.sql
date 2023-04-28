select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with validation_errors as (
    select
        CUSTOMER_PK, count(*) as row_count
    from BRONZE.audit.hub_customer
    group by CUSTOMER_PK
    having count(*) > 1
        or CUSTOMER_PK is null
        
)

select *
from validation_errors
      
    ) dbt_internal_test