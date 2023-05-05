
  
    

        create or replace transient table BRONZE.processed.processed_netflix_dataset_movie
         as
        (SELECT *
 FROM  BRONZE.raw.raw_netflix_dataset_movie  NETFLIX_DATASET_MOVIE
        );
      
  