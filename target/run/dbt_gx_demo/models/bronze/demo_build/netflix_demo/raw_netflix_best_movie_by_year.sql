
  
    

        create or replace transient table BRONZE.raw.raw_netflix_best_movie_by_year  as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_BEST_MOVIE_BY_YEAR  NETFLIX_BEST_MOVIE
        );
      
  