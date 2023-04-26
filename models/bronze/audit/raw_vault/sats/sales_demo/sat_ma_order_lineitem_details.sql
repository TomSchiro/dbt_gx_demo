{%- set source_model = "v_stg_orders" -%}
{%- set src_pk = "ORDER_PK" -%}
{%- set src_cdk = ["ORDERKEY", "LINENUMBER"] -%}
{%- set src_hashdiff = "MA_LINEITEM_HASHDIFF" -%}
{%- set src_payload = ["COMMITDATE", "DISCOUNT", "EXTENDEDPRICE", "LINE_COMMENT",
                       "QUANTITY", "RECEIPTDATE", "RETURNFLAG", "SHIPDATE",
                       "SHIPINSTRUCT", "SHIPMODE", "TAX"] -%}
{%- set src_eff = "EFFECTIVE_FROM" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}


                {{ dbtvault.ma_sat(src_pk=src_pk, src_cdk=src_cdk, src_hashdiff=src_hashdiff,
                                   src_payload=src_payload, src_eff=src_eff, src_ldts=src_ldts,
                                   src_source=src_source, source_model=source_model) }}

