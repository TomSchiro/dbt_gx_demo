
  
    

        create or replace transient table BRONZE.processed.processed_flight_info  as
        (SELECT *
 FROM BRONZE.raw.raw_flight_info  FLIGHT
        );
      
  