-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.invocations ("COMMAND_INVOCATION_ID", "DBT_VERSION", "PROJECT_NAME", "RUN_STARTED_AT", "DBT_COMMAND", "FULL_REFRESH_FLAG", "TARGET_PROFILE_NAME", "TARGET_NAME", "TARGET_SCHEMA", "TARGET_THREADS", "DBT_CLOUD_PROJECT_ID", "DBT_CLOUD_JOB_ID", "DBT_CLOUD_RUN_ID", "DBT_CLOUD_RUN_REASON_CATEGORY", "DBT_CLOUD_RUN_REASON", "ENV_VARS", "DBT_VARS", "INVOCATION_ARGS", "DBT_CUSTOM_ENVS")
        (
            select "COMMAND_INVOCATION_ID", "DBT_VERSION", "PROJECT_NAME", "RUN_STARTED_AT", "DBT_COMMAND", "FULL_REFRESH_FLAG", "TARGET_PROFILE_NAME", "TARGET_NAME", "TARGET_SCHEMA", "TARGET_THREADS", "DBT_CLOUD_PROJECT_ID", "DBT_CLOUD_JOB_ID", "DBT_CLOUD_RUN_ID", "DBT_CLOUD_RUN_REASON_CATEGORY", "DBT_CLOUD_RUN_REASON", "ENV_VARS", "DBT_VARS", "INVOCATION_ARGS", "DBT_CUSTOM_ENVS"
            from BRONZE.LANDING.invocations__dbt_tmp
        );
    commit;