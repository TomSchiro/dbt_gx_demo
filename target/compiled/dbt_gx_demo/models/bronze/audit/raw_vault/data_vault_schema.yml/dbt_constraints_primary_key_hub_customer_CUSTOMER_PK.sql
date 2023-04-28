with validation_errors as (
    select
        CUSTOMER_PK, count(*) as row_count
    from BRONZE.audit.hub_customer
    group by CUSTOMER_PK
    having count(*) > 1
        or CUSTOMER_PK is null
        
)

select *
from validation_errors