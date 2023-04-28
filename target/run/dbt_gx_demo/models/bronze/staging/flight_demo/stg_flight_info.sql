
  
    

        create or replace transient table BRONZE.stage.stg_flight_info  as
        (SELECT *
 FROM BRONZE.processed.processed_flight_info  FLIGHT
        );
      
  