-- back compat for old kwarg name
  
  begin;
    

        insert into OBSERVABILITY.ARTIFACTS.tests ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "TEST_PATH", "TAGS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "TEST_PATH", "TAGS"
            from OBSERVABILITY.ARTIFACTS.tests__dbt_tmp
        );
    commit;