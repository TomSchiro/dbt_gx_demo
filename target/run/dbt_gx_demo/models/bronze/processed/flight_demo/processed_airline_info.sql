
  
    

        create or replace transient table BRONZE.processed.processed_airline_info  as
        (SELECT *
 FROM BRONZE.raw.raw_airline_info   AIRLINE
        );
      
  