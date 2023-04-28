select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select PART_PK
from BRONZE.audit.hub_part
where PART_PK is null



      
    ) dbt_internal_test