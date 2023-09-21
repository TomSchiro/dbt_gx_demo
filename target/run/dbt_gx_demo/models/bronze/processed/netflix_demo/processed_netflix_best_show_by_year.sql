
  
    

        create or replace transient table BRONZE.processed.processed_netflix_best_show_by_year  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_best_show_by_year  NETFLIX_BEST_MOVIE
        );
      
  