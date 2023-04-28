
  
    

        create or replace transient table BRONZE.stage.stg_netflix_credits  as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_credits  NETFLIX_BEST_MOVIE
        );
      
  