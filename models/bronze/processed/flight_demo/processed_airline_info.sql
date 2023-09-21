SELECT *
--, cast('test' as datetime)
 FROM {{ ref('raw_airline_info') }}   AIRLINE
