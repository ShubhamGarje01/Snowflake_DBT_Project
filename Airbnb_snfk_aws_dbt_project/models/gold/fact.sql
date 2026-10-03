{% set gold_data = [
    {
        "table" : "AIRBNB.GOLD.OBT",
        "columns" : "GOLD_OBT.BOOKING_ID, GOLD_OBT.LISTING_ID, GOLD_OBT.HOST_ID, GOLD_OBT.TOTAL_AMOUNT, GOLD_OBT.SERVICE_FEE, GOLD_OBT.CLEANING_FEE, GOLD_OBT.ACCOMMODATES, GOLD_OBT.BEDROOMS, GOLD_OBT.BATHROOMS, GOLD_OBT.PRICE_PER_NIGHT, GOLD_OBT.RESPONSE_RATE",
        "alias" : "GOLD_OBT"
    },
    {
        "table" : "AIRBNB.GOLD.DIM_LISTINGS",
        "columns" : "",
        "alias" : "dim_listings",
        "join_condition" : "gold_obt.listing_id = dim_listings.listing_id"        
    },
    {
        "table" : "AIRBNB.GOLD.DIM_HOSTS",
        "columns" : "",
        "alias" : "dim_hosts",
        "join_condition" : "gold_obt.host_id = dim_hosts.host_id"  
    }
] %}





SELECT 
        {{ gold_data[0]['columns'] }}
FROM 
    {% for item in gold_data %}
    {% if loop.first %}
      {{ item ['table'] }} as {{ item ['alias'] }} 
    {% else %}
        LEFT JOIN {{ item ['table'] }} as {{ item ['alias'] }}
        on {{ item['join_condition']}} 
    {% endif %}
    {% endfor %}
