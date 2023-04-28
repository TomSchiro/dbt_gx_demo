select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select NATION_PK
from BRONZE.audit.hub_nation
where NATION_PK is null



      
    ) dbt_internal_test