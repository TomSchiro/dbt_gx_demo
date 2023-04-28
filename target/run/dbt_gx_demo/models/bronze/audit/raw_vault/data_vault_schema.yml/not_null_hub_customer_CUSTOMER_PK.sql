select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select CUSTOMER_PK
from BRONZE.audit.hub_customer
where CUSTOMER_PK is null



      
    ) dbt_internal_test