-- back compat for old kwarg name
  
  begin;
    

        insert into BRONZE.LANDING.exposures ("COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "TYPE", "OWNER", "MATURITY", "PATH", "DESCRIPTION", "URL", "PACKAGE_NAME", "DEPENDS_ON_NODES")
        (
            select "COMMAND_INVOCATION_ID", "NODE_ID", "RUN_STARTED_AT", "NAME", "TYPE", "OWNER", "MATURITY", "PATH", "DESCRIPTION", "URL", "PACKAGE_NAME", "DEPENDS_ON_NODES"
            from BRONZE.LANDING.exposures__dbt_tmp
        );
    commit;