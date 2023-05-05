
  
    

        create or replace transient table BRONZE.stage.stg_netflix_dataset_rating
         as
        (SELECT *
 FROM BRONZE.processed.processed_netflix_dataset_rating  NETFLIX_BEST_MOVIE
        );
      
  