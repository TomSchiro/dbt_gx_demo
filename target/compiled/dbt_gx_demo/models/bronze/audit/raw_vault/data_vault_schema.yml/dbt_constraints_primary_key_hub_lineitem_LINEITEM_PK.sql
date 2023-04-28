with validation_errors as (
    select
        LINEITEM_PK, count(*) as row_count
    from BRONZE.audit.hub_lineitem
    group by LINEITEM_PK
    having count(*) > 1
        or LINEITEM_PK is null
        
)

select *
from validation_errors