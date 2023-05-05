
  
    

        create or replace transient table BRONZE.raw.raw_flight_info
         as
        (SELECT *
 FROM DATA_REPOSITORY.DEMO.FLIGHT  FLIGHT
        );
      
  