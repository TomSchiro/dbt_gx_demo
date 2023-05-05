
  
    

        create or replace transient table BRONZE.stage.stg_netflix_best_show
         as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_best_show  NETFLIX_BEST_MOVIE
        );
      
  