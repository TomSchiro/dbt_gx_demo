
  create or replace   view BRONZE.LANDING.stg_dbt__test_executions
  
   as (
    with base as (

    select *
    from BRONZE.LANDING.test_executions

),

enhanced as (

    select
        md5(cast(coalesce(cast(command_invocation_id as TEXT), '') || '-' || coalesce(cast(node_id as TEXT), '') as TEXT)) as test_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        was_full_refresh,
        

    split_part(
        thread_id,
        '-',
        2
        )

 as thread_id,
        status,
        compile_started_at,
        query_completed_at,
        total_node_runtime,
        rows_affected,
        failures
    from base

)

select * from enhanced
  );

