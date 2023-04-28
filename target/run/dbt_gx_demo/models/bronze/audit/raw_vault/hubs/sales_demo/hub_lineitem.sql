
  
    

        create or replace transient table BRONZE.audit.hub_lineitem  as
        (-- Generated by dbtvault.

WITH row_rank_1 AS (
    SELECT rr.LINEITEM_PK, rr.LINENUMBER, rr.ORDERKEY, rr.LOAD_DATE, rr.RECORD_SOURCE,
           ROW_NUMBER() OVER(
               PARTITION BY rr.LINEITEM_PK
               ORDER BY rr.LOAD_DATE
           ) AS row_number
    FROM BRONZE.audit.v_stg_orders AS rr
    WHERE rr.LINEITEM_PK IS NOT NULL
    QUALIFY row_number = 1
),

records_to_insert AS (
    SELECT a.LINEITEM_PK, a.LINENUMBER, a.ORDERKEY, a.LOAD_DATE, a.RECORD_SOURCE
    FROM row_rank_1 AS a
)

SELECT * FROM records_to_insert
        );
      
  