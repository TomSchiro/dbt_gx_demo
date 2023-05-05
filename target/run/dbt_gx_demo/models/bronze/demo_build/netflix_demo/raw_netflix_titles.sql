
  
    

        create or replace transient table BRONZE.raw.raw_netflix_titles
         as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_RAW_TITLES  NETFLIX_BEST_MOVIE
        );
      
  