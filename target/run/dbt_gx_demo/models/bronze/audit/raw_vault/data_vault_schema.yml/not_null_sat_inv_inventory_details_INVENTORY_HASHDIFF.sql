select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select INVENTORY_HASHDIFF
from BRONZE.audit.sat_inv_inventory_details
where INVENTORY_HASHDIFF is null



      
    ) dbt_internal_test