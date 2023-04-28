-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.tests ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "TEST_PATH", "TAGS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "TEST_PATH", "TAGS"
            from BRONZE.LANDING.tests__dbt_tmp
        );
    commit;