

WITH hosts as
(
    select 
         HOST_ID,
         HOST_NAME,
         HOST_SINCE,
         IS_SUPERHOST,
         RESPONSE_RATE_QUALITY,
         HOST_CREATED_AT
    from 
        AIRBNB.gold.obt
)
select * from hosts