select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select REGION_PK
from BRONZE.audit.hub_region
where REGION_PK is null



      
    ) dbt_internal_test