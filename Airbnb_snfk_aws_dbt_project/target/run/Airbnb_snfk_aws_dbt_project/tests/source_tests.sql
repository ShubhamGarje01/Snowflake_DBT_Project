
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  select 
    1 
from 
    AIRBNB.staging.bookings
where 
    booking_amount < 200
  
  
      
    ) dbt_internal_test