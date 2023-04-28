
  
    

        create or replace transient table BRONZE.processed.processed_netflix_originals  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_originals  NETFLIX_BEST_MOVIE
        );
      
  