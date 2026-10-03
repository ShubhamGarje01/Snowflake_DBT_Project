


--- we need synamic sql query with parameters & JINJA so that the below query can execute for above mention metadata.
-- Even if we changed the metadata (add/remove columns from any table), still query remains the same, that kind of dynamic sql.


SELECT 

      
        SILVER_bookings.* , 
      
        SILVER_listings.HOST_ID, SILVER_listings.PROPERTY_TYPE, SILVER_listings.ROOM_TYPE, SILVER_listings.CITY, SILVER_listings.COUNTRY, SILVER_listings.ACCOMMODATES, SILVER_listings.BEDROOMS, SILVER_listings.BATHROOMS, SILVER_listings.PRICE_PER_NIGHT, SILVER_listings.ROOM_TYPE_TAG, SILVER_listings.CREATED_AT as LISTING_CREATED_AT , 
      
        SILVER_hosts.HOST_NAME, SILVER_hosts.HOST_SINCE, SILVER_hosts.IS_SUPERHOST, SILVER_hosts.RESPONSE_RATE,SILVER_hosts.RESPONSE_RATE_QUALITY, SILVER_hosts.CREATED_AT AS HOST_CREATED_AT 
    
FROM 
    
    
      AIRBNB.SILVER.SILVER_BOOKINGS as SILVER_bookings 
    
    
    
        LEFT JOIN AIRBNB.SILVER.SILVER_LISTINGS as SILVER_listings
        on SILVER_bookings.listing_id = SILVER_listings.listing_id 
    
    
    
        LEFT JOIN AIRBNB.SILVER.SILVER_HOSTS as SILVER_hosts
        on SILVER_listings.host_id = SILVER_hosts.host_id 
    
    