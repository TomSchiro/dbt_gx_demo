
  create or replace   view BRONZE.LANDING.get_order
  
   as (
    SELECT
    ORDERKEY

FROM BRONZE.raw.raw_orders AS b
  );

