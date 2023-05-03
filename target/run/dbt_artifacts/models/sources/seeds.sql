begin;
    

        insert into BRONZE.DBT.seeds ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "PACKAGE_NAME", "PATH", "CHECKSUM", "META", "ALIAS")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "DATABASE", "SCHEMA", "NAME", "PACKAGE_NAME", "PATH", "CHECKSUM", "META", "ALIAS"
            from BRONZE.DBT.seeds__dbt_tmp
        );
    commit;