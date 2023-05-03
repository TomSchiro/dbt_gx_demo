
  create or replace  view BRONZE.DBT.dim_dbt__exposures
  
   as (
    with base as (

    select *
    from BRONZE.DBT.stg_dbt__exposures

),

exposures as (

    select
        exposure_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        name,
        type,
        owner,
        maturity,
        path,
        description,
        url,
        package_name,
        depends_on_nodes
    from base

)

select * from exposures
  );
