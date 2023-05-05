select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_PK_1
from BRONZE.audit.hub_order
where ORDER_PK_1 is null



      
    ) dbt_internal_test