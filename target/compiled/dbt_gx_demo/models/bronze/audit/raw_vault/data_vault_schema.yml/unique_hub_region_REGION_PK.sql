
    
    

select
    REGION_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_region
where REGION_PK is not null
group by REGION_PK
having count(*) > 1


