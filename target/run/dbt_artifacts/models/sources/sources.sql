-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.sources ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "SOURCE_NAME", "LOADER", "NAME", "IDENTIFIER", "LOADED_AT_FIELD", "FRESHNESS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "SOURCE_NAME", "LOADER", "NAME", "IDENTIFIER", "LOADED_AT_FIELD", "FRESHNESS"
            from BRONZE.LANDING.sources__dbt_tmp
        );
    commit;