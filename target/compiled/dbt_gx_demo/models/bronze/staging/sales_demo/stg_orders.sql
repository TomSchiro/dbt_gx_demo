SELECT
    ORDERKEY,
    PARTKEY ,
    SUPPLIERKEY,
    LINENUMBER,
    QUANTITY,
    EXTENDEDPRICE,
    DISCOUNT,
    TAX,
    RETURNFLAG,
    LINESTATUS,
    SHIPDATE,
    COMMITDATE,
    RECEIPTDATE,
    SHIPINSTRUCT,
    SHIPMODE,
    LINE_COMMENT,
    CUSTOMERKEY,
    ORDERSTATUS,
    TOTALPRICE,
    ORDERDATE,
    ORDERPRIORITY,
    CLERK,
    SHIPPRIORITY,
    ORDER_COMMENT,
    CUSTOMER_NAME,
    CUSTOMER_ADDRESS,
    CUSTOMER_NATION_KEY,
    CUSTOMER_PHONE,
    CUSTOMER_ACCBAL,
    CUSTOMER_MKTSEGMENT,
    CUSTOMER_COMMENT,
    CUSTOMER_NATION_NAME,
    CUSTOMER_REGION_KEY,
    CUSTOMER_NATION_COMMENT,
    CUSTOMER_REGION_NAME,
    CUSTOMER_REGION_COMMENT,
    LOAD_DATE_TIMESTAMP
FROM BRONZE.processed.processed_orders AS b