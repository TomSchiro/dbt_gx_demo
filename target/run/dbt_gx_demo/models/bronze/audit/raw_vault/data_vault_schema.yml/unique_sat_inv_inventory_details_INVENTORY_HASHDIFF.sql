select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    INVENTORY_HASHDIFF as unique_field,
    count(*) as n_records

from BRONZE.audit.sat_inv_inventory_details
where INVENTORY_HASHDIFF is not null
group by INVENTORY_HASHDIFF
having count(*) > 1



      
    ) dbt_internal_test