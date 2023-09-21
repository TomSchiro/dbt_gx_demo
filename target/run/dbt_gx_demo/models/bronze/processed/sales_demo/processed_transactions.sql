
  
    

        create or replace transient table BRONZE.processed.processed_transactions  as
        (SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    TRANSACTION_DATE,
    TRANSACTION_NUMBER,
    AMOUNT,
    TYPE,
    LOAD_DATE_TIMESTAMP
FROM BRONZE.raw.raw_transactions  AS b
        );
      
  