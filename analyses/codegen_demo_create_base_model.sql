{{ codegen.generate_base_model(
    source_name='tpch_sample',
    table_name='LINEITEM',
    materialized='table'
) }}