

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