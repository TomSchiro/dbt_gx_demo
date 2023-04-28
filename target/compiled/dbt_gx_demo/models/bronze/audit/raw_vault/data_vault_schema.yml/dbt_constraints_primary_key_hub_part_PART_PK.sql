with validation_errors as (
    select
        PART_PK, count(*) as row_count
    from BRONZE.audit.hub_part
    group by PART_PK
    having count(*) > 1
        or PART_PK is null
        
)

select *
from validation_errors