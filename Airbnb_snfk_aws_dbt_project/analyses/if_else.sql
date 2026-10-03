
{% set flag = 6 %} --> creating new variable to use in case statement

select * from {{ ref('bronze_bookings') }}
{% if flag == 5 %} 
    where nights_booked <= 5
{% else %}
    where nights_booked > 5
{% endif %}
