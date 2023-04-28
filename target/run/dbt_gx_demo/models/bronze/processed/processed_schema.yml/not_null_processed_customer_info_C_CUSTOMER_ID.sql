select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select C_CUSTOMER_ID
from BRONZE.processed.processed_customer_info
where C_CUSTOMER_ID is null



      
    ) dbt_internal_test