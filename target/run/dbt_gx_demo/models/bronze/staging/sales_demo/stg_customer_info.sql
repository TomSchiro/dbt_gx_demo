
  
    

        create or replace transient table BRONZE.stage.stg_customer_info  as
        (SELECT 
    C_CUSTOMER_SK,
    C_CUSTOMER_ID,
    C_SALUTATION,
    C_FIRST_NAME,
    C_LAST_NAME,
    C_BIRTH_DAY,
    C_BIRTH_YEAR,
    C_EMAIL_ADDRESS,
    C_LOGIN,
    CA_ADDRESS_ID,
    CA_STREET_NUMBER,
    CA_STREET_TYPE,
    CA_SUITE_NUMBER,
    CA_CITY,
    CA_COUNTY,
    CA_STATE,
    CA_ZIP,
    CA_COUNTRY,
    CA_GMT_OFFSET,
    CA_LOCATION_TYPE,
    CD_GENDER,
    CD_MARITAL_STATUS,
    CD_EDUCATION_STATUS,
    CD_PURCHASE_ESTIMATE,
    CD_CREDIT_RATING,
    CD_DEP_COUNT,
    LOAD_DATE_TIMESTAMP
FROM BRONZE.processed.processed_customer_info
        );
      
  