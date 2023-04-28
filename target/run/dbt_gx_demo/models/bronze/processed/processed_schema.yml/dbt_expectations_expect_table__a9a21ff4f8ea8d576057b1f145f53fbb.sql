select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select cast('ORDERKEY' as TEXT) as relation_column
        union all
        
        select cast('PARTKEY' as TEXT) as relation_column
        union all
        
        select cast('SUPPLIERKEY' as TEXT) as relation_column
        union all
        
        select cast('LINENUMBER' as TEXT) as relation_column
        union all
        
        select cast('QUANTITY' as TEXT) as relation_column
        union all
        
        select cast('EXTENDEDPRICE' as TEXT) as relation_column
        union all
        
        select cast('DISCOUNT' as TEXT) as relation_column
        union all
        
        select cast('TAX' as TEXT) as relation_column
        union all
        
        select cast('RETURNFLAG' as TEXT) as relation_column
        union all
        
        select cast('LINESTATUS' as TEXT) as relation_column
        union all
        
        select cast('SHIPDATE' as TEXT) as relation_column
        union all
        
        select cast('COMMITDATE' as TEXT) as relation_column
        union all
        
        select cast('RECEIPTDATE' as TEXT) as relation_column
        union all
        
        select cast('SHIPINSTRUCT' as TEXT) as relation_column
        union all
        
        select cast('SHIPMODE' as TEXT) as relation_column
        union all
        
        select cast('LINE_COMMENT' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMERKEY' as TEXT) as relation_column
        union all
        
        select cast('ORDERSTATUS' as TEXT) as relation_column
        union all
        
        select cast('TOTALPRICE' as TEXT) as relation_column
        union all
        
        select cast('ORDERDATE' as TEXT) as relation_column
        union all
        
        select cast('ORDERPRIORITY' as TEXT) as relation_column
        union all
        
        select cast('CLERK' as TEXT) as relation_column
        union all
        
        select cast('SHIPPRIORITY' as TEXT) as relation_column
        union all
        
        select cast('ORDER_COMMENT' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_NAME' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_ADDRESS' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_NATION_KEY' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_PHONE' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_ACCBAL' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_MKTSEGMENT' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_COMMENT' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_NATION_NAME' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_REGION_KEY' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_NATION_COMMENT' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_REGION_NAME' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_REGION_COMMENT' as TEXT) as relation_column
        union all
        
        select cast('LOAD_DATE_TIMESTAMP' as TEXT) as relation_column
        
        
    ),
    input_columns as (

        
        select cast('ORDERKEY' as TEXT) as input_column
        union all
        
        select cast('LINENUMBER' as TEXT) as input_column
        
        
    )
    select *
    from
        input_columns i
        left join
        relation_columns r on r.relation_column = i.input_column
    where
        -- catch any column in input list that is not in the list of table columns
        r.relation_column is null
      
    ) dbt_internal_test