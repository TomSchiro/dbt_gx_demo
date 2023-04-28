

    -- Generated by dbtvault.

    

WITH row_rank_1 AS (
    SELECT rr.LINK_CUSTOMER_ADDRESS_PK, rr.CUSTOMER_PK, rr.ADDRESS_PK, rr.LOAD_DATE, rr.RECORD_SOURCE,
           ROW_NUMBER() OVER(
               PARTITION BY rr.LINK_CUSTOMER_ADDRESS_PK
               ORDER BY rr.LOAD_DATE
           ) AS row_number
    FROM BRONZE.audit.v_stg_customer_info AS rr
    WHERE rr.LINK_CUSTOMER_ADDRESS_PK IS NOT NULL
    AND rr.CUSTOMER_PK IS NOT NULL
    AND rr.ADDRESS_PK IS NOT NULL
    QUALIFY row_number = 1
),

records_to_insert AS (
    SELECT a.LINK_CUSTOMER_ADDRESS_PK, a.CUSTOMER_PK, a.ADDRESS_PK, a.LOAD_DATE, a.RECORD_SOURCE
    FROM row_rank_1 AS a
)

SELECT * FROM records_to_insert