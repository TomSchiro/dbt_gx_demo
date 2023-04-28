
  
    

        create or replace transient table BRONZE.stage.stg_airport_info  as
        (SELECT *
 FROM BRONZE.processed.processed_airport_info  AIRPORT
        );
      
  