with validation_errors as (
    select
        REGION_PK, count(*) as row_count
    from BRONZE.audit.hub_region
    group by REGION_PK
    having count(*) > 1
        or REGION_PK is null
        
)

select *
from validation_errors