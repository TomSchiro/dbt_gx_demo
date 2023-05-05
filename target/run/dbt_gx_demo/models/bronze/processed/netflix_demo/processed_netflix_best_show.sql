
  
    

        create or replace transient table BRONZE.processed.processed_netflix_best_show
         as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_best_show  NETFLIX_BEST_MOVIE
        );
      
  