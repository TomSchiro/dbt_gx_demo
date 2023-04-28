select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_PK
from BRONZE.audit.hub_order
where ORDER_PK is null



      
    ) dbt_internal_test