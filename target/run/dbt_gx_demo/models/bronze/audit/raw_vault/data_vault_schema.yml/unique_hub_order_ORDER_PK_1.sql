select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    ORDER_PK_1 as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_order
where ORDER_PK_1 is not null
group by ORDER_PK_1
having count(*) > 1



      
    ) dbt_internal_test