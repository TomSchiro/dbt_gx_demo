
  
    

        create or replace transient table BRONZE.stage.stg_netflix_best_movie_by_year
         as
        (SELECT






INDEX  AS INDEX_INT,
TITLE  AS TITLE_TXT,
RELEASE_YEAR  AS RELASE_YEAR_INT,
SCORE  AS SCORE_NUM,
MAIN_GENRE  AS MOVIE_GENRE_TXT,
CAST(MOVIE_BUDGET AS decimal(10,2))  AS MOVIE_BUDGET_AMT,
MAIN_PRODUCTION  AS MAIN_PRODUCTION_TXT,
CAST(ETL_CREATE_DATE AS TIMESTAMP)  AS ETL_CREATE_DATE_TS,
CAST(PRODUCTION_START_DATE AS date)  AS PRODUCTION_START_DATE_DT

 FROM BRONZE.LANDING.NETFLIX_BEST_MOVIE_BY_YEAR
        );
      
  