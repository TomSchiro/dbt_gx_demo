select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



with validation_errors as (

    select
        C_CUSTOMER_SK,C_CUSTOMER_ID
    from BRONZE.stage.stg_customer_info
    where
        1=1
        and 
    not (
        C_CUSTOMER_SK is null and 
        C_CUSTOMER_ID is null
        
    )


    
    group by
        C_CUSTOMER_SK,C_CUSTOMER_ID
    having count(*) > 1

)
select * from validation_errors

      
    ) dbt_internal_test