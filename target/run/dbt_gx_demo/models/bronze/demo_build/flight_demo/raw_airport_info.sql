
  
    

        create or replace transient table BRONZE.raw.raw_airport_info  as
        (SELECT *
 FROM DATA_REPOSITORY.DEMO.AIRPORT  AIRPORT
        );
      
  