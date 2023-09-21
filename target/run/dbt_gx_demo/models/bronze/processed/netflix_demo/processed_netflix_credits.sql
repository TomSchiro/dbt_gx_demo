
  
    

        create or replace transient table BRONZE.processed.processed_netflix_credits  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_credits  NETFLIX_BEST_MOVIE
        );
      
  