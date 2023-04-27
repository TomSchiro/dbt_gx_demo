{% test primary_key_validation(model) %}



with validation as (

SELECT COUNT(*) as pk_count FROM BRONZE.INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE LOWER(TABLE_NAME) = '{{model.name}}'

),

validation_errors as (

    select
        pk_count

    from validation
    where pk_count < 1

)

select *
from validation_errors

{% endtest %}