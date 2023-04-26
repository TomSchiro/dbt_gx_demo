{%- set source_model = "v_stg_flight_info" -%}
{%- set src_pk = "LINK_AIRPORT_AIRLINE_AIRPLANE_FLIGHT_PK" -%}
{%- set src_fk = ["AIRPORT_PK", "AIRLINE_PK","AIRPLANE_PK","FLIGHT_PK"] -%}
{%- set src_ldts = "LOAD_DATE_TIMESTAMP" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                 src_source=src_source, source_model=source_model) }}

 