
  
    

        create or replace transient table BRONZE.raw.raw_netflix_dataset_movie  as
        (SELECT *
 FROM  BRONZE.LANDING.NETFLIX_DATASET_MOVIE  NETFLIX_DATASET_MOVIE
        );
      
  