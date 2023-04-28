
  
    

        create or replace transient table BRONZE.stage.stg_netflix_best_show_by_year  as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_best_show_by_year  NETFLIX_BEST_MOVIE
        );
      
  