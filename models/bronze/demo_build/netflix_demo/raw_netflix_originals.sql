SELECT *
 FROM {{ source('NETFLIX', 'NETFLIX_ORIGINALS') }}  NETFLIX_BEST_MOVIE