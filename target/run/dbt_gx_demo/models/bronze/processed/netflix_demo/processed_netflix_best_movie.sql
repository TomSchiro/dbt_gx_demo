
  
    

        create or replace transient table BRONZE.processed.processed_netflix_best_movie  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_best_movie  NETFLIX_BEST_MOVIE
        );
      
  