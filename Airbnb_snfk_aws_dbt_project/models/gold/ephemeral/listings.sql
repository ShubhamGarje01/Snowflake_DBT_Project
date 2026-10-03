{{
  config(
    materialized = 'ephemeral',
    )
}}

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
        {{ ref('obt') }}
)
select * from listings