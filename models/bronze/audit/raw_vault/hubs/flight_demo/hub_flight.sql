{%- set source_model = "v_stg_flight_info" -%}
{%- set src_pk = "FLIGHT_PK" -%}
{%- set src_nk = "FLIGHT_NUMBER" -%}
{%- set src_ldts = "LOAD_DATE_TIMESTAMP" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}