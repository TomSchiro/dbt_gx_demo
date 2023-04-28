
    
    

with all_values as (

    select
        CD_MARITAL_STATUS as value_field,
        count(*) as n_records

    from BRONZE.RAW.RAW_CUSTOMER_INFO
    group by CD_MARITAL_STATUS

)

select *
from all_values
where value_field not in (
    'S','D','W','U','M'
)


