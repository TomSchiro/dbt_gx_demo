
  create or replace  view BRONZE.DBT.fct_dbt__seed_executions
  
   as (
    with base as (

    select *
    from BRONZE.DBT.stg_dbt__seed_executions

),

seed_executions as (

    select
        seed_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        was_full_refresh,
        thread_id,
        status,
        compile_started_at,
        query_completed_at,
        total_node_runtime,
        rows_affected,
        materialization,
        schema,
        name,
        alias
    from base

)

select * from seed_executions
  );
