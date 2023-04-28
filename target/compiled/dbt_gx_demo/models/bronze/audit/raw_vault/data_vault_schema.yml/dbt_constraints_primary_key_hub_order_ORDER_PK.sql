with validation_errors as (
    select
        ORDER_PK, count(*) as row_count
    from BRONZE.audit.hub_order
    group by ORDER_PK
    having count(*) > 1
        or ORDER_PK is null
        
)

select *
from validation_errors