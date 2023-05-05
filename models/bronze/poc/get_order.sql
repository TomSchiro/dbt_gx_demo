SELECT
    ORDERKEY

FROM {{ ref('raw_orders') }} AS b
