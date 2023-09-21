
  
    

        create or replace transient table BRONZE.processed.processed_netflix_titles  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_titles  NETFLIX_BEST_MOVIE
        );
      
  