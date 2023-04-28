
  
    

        create or replace transient table BRONZE.stage.stg_transactions  as
        (SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    TRANSACTION_DATE,
    TRANSACTION_NUMBER,
    AMOUNT,
    TYPE,
    LOAD_DATE_TIMESTAMP
FROM BRONZE.processed.processed_transactions  AS b
        );
      
  