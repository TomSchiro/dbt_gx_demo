{%- set yaml_metadata -%}
source_model: 'raw_flight_info'
derived_columns:
  AIRLINE_CD: 'AIRLINE'
  ORIGIN_AIRPORT: 'ORIGIN_AIRPORT'
  AIRPORT_CD: 'ORIGIN_AIRPORT'
  DESTINATION_AIRPORT: 'DESTINATION_AIRPORT'
  RECORD_SOURCE: '!FLIGHT_DATASET'
hashed_columns:
  AIRLINE_PK: 'AIRLINE_CD'
  AIRPORT_PK: 'ORIGIN_AIRPORT'
  FLIGHT_PK: 'FLIGHT_NUMBER'
  AIRPLANE_PK: 'TAIL_NUMBER'
  LINK_AIRPORT_AIRLINE_PK:
    - 'AIRLINE_CD'
    - 'ORIGIN_AIRPORT'
  LINK_AIRPORT_AIRLINE_FLIGHT_PK:
    - 'AIRLINE_CD'
    - 'ORIGIN_AIRPORT'
    - 'FLIGHT_NUMBER'
  LINK_AIRPORT_AIRLINE_AIRPLANE_FLIGHT_PK:
    - 'AIRLINE_CD'
    - 'ORIGIN_AIRPORT'
    - 'FLIGHT_NUMBER'
    - 'TAIL_NUMBER'
  FLIGHT_HASHDIFF:
    is_hashdiff: true
    columns:
      - 'AIRPORT_CD'
      - 'AIRLINE_CD'
      - 'FLIGHT_NUMBER'
      - 'TAIL_NUMBER'
      - 'ORIGIN_AIRPORT'
      - 'DESTINATION_AIRPORT'
      - 'YEAR'
      - 'MONTH'
      - 'DAY'
      - 'DAY_OF_WEEK'
      - 'SCHEDULE_DEPARTURE'
      - 'DEPARTURE_TIME'
      - 'DEPARTURE_DELAY'
      - 'TAXI_OUT'
      - 'WHEELS_OFF'
      - 'SCHEDULE_TIME'
      - 'ELAPSED_TIME'
      - 'AIR_TIME'
      - 'DISTANCE'
      - 'WHEELS_ON'
      - 'TAXI_IN'
      - 'SCHEDULE_ARRIVAL'
      - 'ARRIVAL_TIME'
      - 'ARRIVAL_DELAY'
      - 'DIVERTED'
      - 'CANCELLED'
      - 'CANCELLATION_REASON'
      - 'AIR_SYSTEM_DELAY'
      - 'SECURITY_DELAY'
      - 'LATE_AIRCRAFT_DELAY'
      - 'WEATHER_DELAY'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}


WITH staging AS (
{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns,
                  ranked_columns=none) }}
)

SELECT *, 
       CURRENT_TIMESTAMP() AS LOAD_DATE,
       CURRENT_TIMESTAMP() AS EFFECTIVE_FROM      
FROM staging

