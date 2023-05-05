
  
    

        create or replace transient table BRONZE.stage.stg_netflix_dataset_movie
         as
        (SELECT *
 FROM  BRONZE.processed.processed_netflix_dataset_movie  NETFLIX_DATASET_MOVIE
        );
      
  