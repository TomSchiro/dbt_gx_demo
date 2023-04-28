select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    with test_data as (

        select
            cast('ETL_CREATE_DATE' as TEXT) as column_name,
            8 as matching_column_index,
            True as column_index_matches

    )
    select *
    from test_data
    where
        not(matching_column_index >= 0 and column_index_matches)
      
    ) dbt_internal_test