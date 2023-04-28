
  
    

        create or replace transient table BRONZE.raw.raw_netflix_dataset_rating  as
        (SELECT *
 FROM BRONZE.LANDING.NETFLIX_DATASET_RATING  NETFLIX_BEST_MOVIE
        );
      
  