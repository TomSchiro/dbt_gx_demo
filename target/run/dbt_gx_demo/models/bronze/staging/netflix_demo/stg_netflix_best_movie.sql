
  
    

        create or replace transient table BRONZE.stage.stg_netflix_best_movie  as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_best_movie  NETFLIX_BEST_MOVIE
        );
      
  