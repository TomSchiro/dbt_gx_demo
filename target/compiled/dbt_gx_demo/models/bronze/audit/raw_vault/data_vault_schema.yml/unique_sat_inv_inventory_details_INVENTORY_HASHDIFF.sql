
    
    

select
    INVENTORY_HASHDIFF as unique_field,
    count(*) as n_records

from BRONZE.audit.sat_inv_inventory_details
where INVENTORY_HASHDIFF is not null
group by INVENTORY_HASHDIFF
having count(*) > 1


