
  
    

        create or replace transient table BRONZE.audit.sat_order_cust_nation_details  as
        (-- Generated by dbtvault.

    

WITH source_data AS (
    SELECT a.CUSTOMER_PK, a.CUSTOMER_NATION_HASHDIFF, a.CUSTOMER_NATION_NAME, a.CUSTOMER_NATION_COMMENT, a.EFFECTIVE_FROM, a.LOAD_DATE, a.RECORD_SOURCE
    FROM BRONZE.audit.v_stg_orders AS a
    WHERE a.CUSTOMER_PK IS NOT NULL
),

records_to_insert AS (
    SELECT DISTINCT stage.CUSTOMER_PK, stage.CUSTOMER_NATION_HASHDIFF, stage.CUSTOMER_NATION_NAME, stage.CUSTOMER_NATION_COMMENT, stage.EFFECTIVE_FROM, stage.LOAD_DATE, stage.RECORD_SOURCE
    FROM source_data AS stage
)

SELECT * FROM records_to_insert
        );
      
  