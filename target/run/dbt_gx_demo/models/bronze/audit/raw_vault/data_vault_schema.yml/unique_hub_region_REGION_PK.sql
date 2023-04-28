select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    REGION_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_region
where REGION_PK is not null
group by REGION_PK
having count(*) > 1



      
    ) dbt_internal_test