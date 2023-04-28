select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select CD_MARITAL_STATUS
from BRONZE.RAW.RAW_CUSTOMER_INFO
where CD_MARITAL_STATUS is null



      
    ) dbt_internal_test