with relation_columns as (

        
        select cast('ORDER_ID' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_ID' as TEXT) as relation_column
        union all
        
        select cast('ORDER_DATE' as TEXT) as relation_column
        union all
        
        select cast('TRANSACTION_DATE' as TEXT) as relation_column
        union all
        
        select cast('TRANSACTION_NUMBER' as TEXT) as relation_column
        union all
        
        select cast('AMOUNT' as TEXT) as relation_column
        union all
        
        select cast('TYPE' as TEXT) as relation_column
        union all
        
        select cast('LOAD_DATE_TIMESTAMP' as TEXT) as relation_column
        
        
    ),
    input_columns as (

        
        select cast('ORDER_ID' as TEXT) as input_column
        union all
        
        select cast('CUSTOMER_ID' as TEXT) as input_column
        union all
        
        select cast('ORDER_DATE' as TEXT) as input_column
        union all
        
        select cast('TRANSACTION_DATE' as TEXT) as input_column
        union all
        
        select cast('TRANSACTION_NUMBER' as TEXT) as input_column
        union all
        
        select cast('AMOUNT' as TEXT) as input_column
        union all
        
        select cast('TYPE' as TEXT) as input_column
        union all
        
        select cast('LOAD_DATE_TIMESTAMP' as TEXT) as input_column
        
        
    )
    select *
    from
        relation_columns r
        full outer join
        input_columns i on r.relation_column = i.input_column
    where
        -- catch any column in input list that is not in the list of table columns
        -- or any table column that is not in the input list
        r.relation_column is null or
        i.input_column is null