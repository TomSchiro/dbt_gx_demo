
  create or replace   view BRONZE.OBSERVABILITY.fct_dbt__snapshot_executions
  
   as (
    with base as (

    select *
    from BRONZE.OBSERVABILITY.stg_dbt__snapshot_executions

),

snapshot_executions as (

    select
        snapshot_execution_id,
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

select * from snapshot_executions
  );

