
  
    

        create or replace transient table BRONZE.stage.stg_netflix_originals  as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_originals  NETFLIX_BEST_MOVIE
        );
      
  