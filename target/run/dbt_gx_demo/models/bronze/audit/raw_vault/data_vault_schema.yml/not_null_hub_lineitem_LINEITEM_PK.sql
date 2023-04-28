select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select LINEITEM_PK
from BRONZE.audit.hub_lineitem
where LINEITEM_PK is null



      
    ) dbt_internal_test