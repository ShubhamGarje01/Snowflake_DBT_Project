
      
  
    

create or replace transient table AIRBNB.gold.dim_listings
    
    
    
    
    

    as (
    

    select *,
        md5(coalesce(cast(LISTING_ID as varchar ), '')
         || '|' || coalesce(cast(LISTING_CREATED_AT as varchar ), '')
        ) as dbt_scd_id,
        LISTING_CREATED_AT as dbt_updated_at,
        LISTING_CREATED_AT as dbt_valid_from,
        
  
  coalesce(nullif(LISTING_CREATED_AT, LISTING_CREATED_AT), to_date('9999-12-31'))
  as dbt_valid_to
from (
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
    ) sbq



    )
;


  
  