-- Provided model name as reference, but for compilation query goes correct

select * from {{ ref('bronze_bookings') }}  
where nights_booked > 5 

-- now we can create variable with JINJA and pass that as filter.
{% set nights_booked = 8 %}  --declaring variable with value in JINJA

select * from {{ ref('bronze_bookings') }}
where nights_booked = {{ nights_booked }} ---> in filter we pass value 5 in variable 
-- sql compilation took the value instead of variable 