-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.DBT.model_executions ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "WAS_FULL_REFRESH", "THREAD_ID", "STATUS", "COMPILE_STARTED_AT", "QUERY_COMPLETED_AT", "TOTAL_NODE_RUNTIME", "ROWS_AFFECTED", "MATERIALIZATION", "SCHEMA", "NAME", "ALIAS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "WAS_FULL_REFRESH", "THREAD_ID", "STATUS", "COMPILE_STARTED_AT", "QUERY_COMPLETED_AT", "TOTAL_NODE_RUNTIME", "ROWS_AFFECTED", "MATERIALIZATION", "SCHEMA", "NAME", "ALIAS"
            from BRONZE.DBT.model_executions__dbt_tmp
        );
    commit;