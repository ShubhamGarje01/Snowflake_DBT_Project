with __dbt__cte__bookings as (


WITH bookings as
(
    select 
         BOOKING_ID,
         BOOKING_DATE,
         BOOKING_STATUS,
         CREATED_AT
    from 
        AIRBNB.gold.obt
)
select * from bookings
) select * from __dbt__cte__bookings