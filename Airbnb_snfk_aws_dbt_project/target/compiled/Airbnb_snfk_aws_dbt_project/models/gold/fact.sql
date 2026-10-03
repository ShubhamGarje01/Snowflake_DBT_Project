





SELECT 
        GOLD_OBT.BOOKING_ID, GOLD_OBT.LISTING_ID, GOLD_OBT.HOST_ID, GOLD_OBT.TOTAL_AMOUNT, GOLD_OBT.SERVICE_FEE, GOLD_OBT.CLEANING_FEE, GOLD_OBT.ACCOMMODATES, GOLD_OBT.BEDROOMS, GOLD_OBT.BATHROOMS, GOLD_OBT.PRICE_PER_NIGHT, GOLD_OBT.RESPONSE_RATE
FROM 
    
    
      AIRBNB.GOLD.OBT as GOLD_OBT 
    
    
    
        LEFT JOIN AIRBNB.GOLD.DIM_LISTINGS as dim_listings
        on gold_obt.listing_id = dim_listings.listing_id 
    
    
    
        LEFT JOIN AIRBNB.GOLD.DIM_HOSTS as dim_hosts
        on gold_obt.host_id = dim_hosts.host_id 
    
    