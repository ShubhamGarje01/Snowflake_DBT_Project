{% set cols = ['NIGHTS_BOOKED', 'BOOKING_ID','BOOKING_AMOUNT'] %}  
-- created JINJA list, with Jinja variable containing 3 column names 

SELECT 
{% for col in cols %} 
    {{ col }} -- Take each value from cols, one at a time, and print it.
        {% if not loop.last %}, {% endif %}  ---> SQL needs commas: loop.last is a special Jinja variable.
{% endfor %}
from {{ ref('bronze_bookings') }}

-- loop.last :--> checks is this the last item in the loop, f this is NOT the last column, print a comma.
-- oop.last checks if the current column is the last item, so a comma is added only between columns, not after the last one.
