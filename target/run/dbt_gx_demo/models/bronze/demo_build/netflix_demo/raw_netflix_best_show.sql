
  
    

        create or replace transient table BRONZE.raw.raw_netflix_best_show
         as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_BEST_SHOW  NETFLIX_BEST_MOVIE
        );
      
  