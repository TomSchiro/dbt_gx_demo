
    
    

with all_values as (

    select
        C_SALUTATION as value_field,
        count(*) as n_records

    from (select * from BRONZE.stage.stg_customer_info where C_SALUTATION is not null) dbt_subquery
    group by C_SALUTATION

)

select *
from all_values
where value_field not in (
    'Dr.','Mrs.','Sir','Miss','Ms.','Mr.'
)


