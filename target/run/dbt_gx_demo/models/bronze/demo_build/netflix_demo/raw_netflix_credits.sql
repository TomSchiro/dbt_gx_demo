
  
    

        create or replace transient table BRONZE.raw.raw_netflix_credits  as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_RAW_CREDITS  NETFLIX_BEST_MOVIE
        );
      
  