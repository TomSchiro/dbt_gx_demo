



with validation as (

SELECT COUNT(*) as pk_count FROM BRONZE.INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE LOWER(TABLE_NAME) = 'hub_customer_info'

),

validation_errors as (

    select
        pk_count

    from validation
    where pk_count < 1

)

select *
from validation_errors

