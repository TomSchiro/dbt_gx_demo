
  
    

        create or replace transient table BRONZE.raw.raw_netflix_best_movie
         as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_BEST_MOVIE  NETFLIX_BEST_MOVIE
        );
      
  