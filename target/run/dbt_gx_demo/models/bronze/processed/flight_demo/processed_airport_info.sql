
  
    

        create or replace transient table BRONZE.processed.processed_airport_info
         as
        (SELECT *
 FROM BRONZE.raw.raw_airport_info  AIRPORT
        );
      
  