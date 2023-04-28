
    
    

select
    ORDER_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_order
where ORDER_PK is not null
group by ORDER_PK
having count(*) > 1


