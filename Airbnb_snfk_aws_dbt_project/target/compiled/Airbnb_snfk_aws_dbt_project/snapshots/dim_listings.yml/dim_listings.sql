with __dbt__cte__listings as (


WITH listings as
(
    select 
         LISTING_ID,
         PROPERTY_TYPE,
         ROOM_TYPE,
         CITY,
         COUNTRY,
         ROOM_TYPE_TAG,
         LISTING_CREATED_AT
    from 
        AIRBNB.gold.obt
)
select * from listings
) select * from __dbt__cte__listings