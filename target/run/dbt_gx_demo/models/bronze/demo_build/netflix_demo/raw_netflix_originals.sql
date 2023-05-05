
  
    

        create or replace transient table BRONZE.raw.raw_netflix_originals
         as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_ORIGINALS  NETFLIX_BEST_MOVIE
        );
      
  