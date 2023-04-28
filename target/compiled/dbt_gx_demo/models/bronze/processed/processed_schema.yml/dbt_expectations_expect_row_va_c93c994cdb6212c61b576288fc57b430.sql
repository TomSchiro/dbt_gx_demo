

 with max_recency as (

    select max(cast(LOAD_DATE_TIMESTAMP as timestamp_ntz)) as max_timestamp
    from
        BRONZE.processed.processed_transactions
    where
        -- to exclude erroneous future dates
        cast(LOAD_DATE_TIMESTAMP as timestamp_ntz) <= convert_timezone('UTC', 'America/Chicago',
    cast(convert_timezone('UTC', current_timestamp()) as TIMESTAMP)
)
        
)
select
    *
from
    max_recency
where
    -- if the row_condition excludes all rows, we need to compare against a default date
    -- to avoid false negatives
    coalesce(max_timestamp, cast('1970-01-01' as timestamp_ntz))
        <
        cast(

    dateadd(
        Day,
        -1000,
        convert_timezone('UTC', 'America/Chicago',
    cast(convert_timezone('UTC', current_timestamp()) as TIMESTAMP)
)
        )

 as timestamp_ntz)


