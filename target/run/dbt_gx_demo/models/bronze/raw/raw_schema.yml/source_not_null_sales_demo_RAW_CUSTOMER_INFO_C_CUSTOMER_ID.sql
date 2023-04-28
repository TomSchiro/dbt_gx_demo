select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select C_CUSTOMER_ID
from BRONZE.RAW.RAW_CUSTOMER_INFO
where C_CUSTOMER_ID is null



      
    ) dbt_internal_test