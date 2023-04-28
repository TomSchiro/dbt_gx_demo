
    
    

select
    NATION_PK as unique_field,
    count(*) as n_records

from BRONZE.audit.hub_nation
where NATION_PK is not null
group by NATION_PK
having count(*) > 1


