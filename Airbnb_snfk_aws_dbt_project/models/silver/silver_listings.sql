-- Transformation - 01
-- in this we can have room type based on price, like of price_per_night is below 100 then its LOW
-- if price_per_night is beween 101 and 200 then its MEDIUM 
-- and when price_per_night if more than 201 then its HIGH 

-- Transformation - 02
-- property_type from initcap to all caps (upper case)  -- its inbuild - trim filter function for dbt jinja -- google 

-- for Transformation - 01 & 02 we are going to create macro : named TR 01 --> room_tags.sql , TR 02 --> trimmer.sql

{{ config(materialized = 'incremental', unique_key = 'LISTING_ID') }}

SELECT 
    LISTING_ID,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    {{ room_tags('CAST(PRICE_PER_NIGHT AS INT)')}} AS ROOM_TYPE_TAG,
    CREATED_AT
FROM {{ ref('bronze_listings') }}