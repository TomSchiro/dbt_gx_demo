
  
    

        create or replace transient table BRONZE.stage.stg_airline_info
         as
        (SELECT *
 FROM BRONZE.processed.processed_airline_info   AIRLINE
        );
      
  