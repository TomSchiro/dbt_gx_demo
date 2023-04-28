-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.models ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "PATH", "CHECKSUM", "MATERIALIZATION", "TAGS", "META", "ALIAS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "PATH", "CHECKSUM", "MATERIALIZATION", "TAGS", "META", "ALIAS"
            from BRONZE.LANDING.models__dbt_tmp
        );
    commit;