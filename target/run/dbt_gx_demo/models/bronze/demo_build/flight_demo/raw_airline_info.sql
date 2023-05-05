
  
    

        create or replace transient table BRONZE.raw.raw_airline_info
         as
        (SELECT *
 FROM DATA_REPOSITORY.DEMO.AIRLINE  AIRLINE
        );
      
  