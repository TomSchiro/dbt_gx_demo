-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.snapshots ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "PATH", "CHECKSUM", "STRATEGY", "META", "ALIAS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "DEPENDS_ON_NODES", "PACKAGE_NAME", "PATH", "CHECKSUM", "STRATEGY", "META", "ALIAS"
            from BRONZE.LANDING.snapshots__dbt_tmp
        );
    commit;