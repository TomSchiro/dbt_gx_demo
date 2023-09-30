-- back compat for old kwarg name
  
  begin;
    

        insert into OBSERVABILITY.ARTIFACTS.seeds ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "PACKAGE_NAME", "PATH", "CHECKSUM", "META", "ALIAS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "PACKAGE_NAME", "PATH", "CHECKSUM", "META", "ALIAS"
            from OBSERVABILITY.ARTIFACTS.seeds__dbt_tmp
        );
    commit;