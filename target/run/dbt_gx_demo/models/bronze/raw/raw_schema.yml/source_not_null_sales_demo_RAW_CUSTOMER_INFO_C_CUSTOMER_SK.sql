select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select C_CUSTOMER_SK
from BRONZE.RAW.RAW_CUSTOMER_INFO
where C_CUSTOMER_SK is null



      
    ) dbt_internal_test