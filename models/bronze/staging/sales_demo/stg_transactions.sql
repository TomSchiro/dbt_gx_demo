SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    TRANSACTION_DATE,
    TRANSACTION_NUMBER,
    AMOUNT,
    TYPE,
    LOAD_DATE_TIMESTAMP
FROM {{ ref('processed_transactions') }}  AS b
