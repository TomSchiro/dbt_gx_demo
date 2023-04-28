
    
    

select
    CUSTOMER_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_customer
where CUSTOMER_PK is not null
group by CUSTOMER_PK
having count(*) > 1


