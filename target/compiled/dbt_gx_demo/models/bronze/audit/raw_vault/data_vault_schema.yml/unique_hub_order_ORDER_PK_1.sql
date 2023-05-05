
    
    

select
    ORDER_PK_1 as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_order
where ORDER_PK_1 is not null
group by ORDER_PK_1
having count(*) > 1


