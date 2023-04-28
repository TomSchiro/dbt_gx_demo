select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select SUPPLIER_PK
from BRONZE.audit.hub_supplier
where SUPPLIER_PK is null



      
    ) dbt_internal_test