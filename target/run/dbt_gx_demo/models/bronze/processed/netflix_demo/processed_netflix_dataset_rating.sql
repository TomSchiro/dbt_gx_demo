
  
    

        create or replace transient table BRONZE.processed.processed_netflix_dataset_rating  as
        (SELECT *
 FROM BRONZE.raw.raw_netflix_dataset_rating  NETFLIX_BEST_MOVIE
        );
      
  