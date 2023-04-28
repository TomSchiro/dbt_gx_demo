select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    SUPPLIER_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_supplier
where SUPPLIER_PK is not null
group by SUPPLIER_PK
having count(*) > 1



      
    ) dbt_internal_test