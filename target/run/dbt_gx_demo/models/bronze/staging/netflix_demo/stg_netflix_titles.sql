
  
    

        create or replace transient table BRONZE.stage.stg_netflix_titles
         as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_titles  NETFLIX_BEST_MOVIE
        );
      
  