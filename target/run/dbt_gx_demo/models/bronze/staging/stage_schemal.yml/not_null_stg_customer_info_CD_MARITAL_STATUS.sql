select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select CD_MARITAL_STATUS
from BRONZE.stage.stg_customer_info
where CD_MARITAL_STATUS is null



      
    ) dbt_internal_test