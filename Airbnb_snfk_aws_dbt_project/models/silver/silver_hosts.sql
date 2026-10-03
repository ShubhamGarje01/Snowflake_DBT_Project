{{ config(materialized = 'incremental', unique_key = 'HOST_ID') }}

select
    HOST_ID,
    replace(HOST_NAME, ' ', '_') as HOST_NAME, -- replaceing space with underscore
    HOST_SINCE,
    IS_SUPERHOST,
    CASE
        WHEN RESPONSE_RATE > 95 THEN 'VERY GOOD'
        WHEN RESPONSE_RATE > 80 AND  RESPONSE_RATE < 95 THEN 'GOOD'
        WHEN RESPONSE_RATE > 65 AND  RESPONSE_RATE < 80 THEN 'FAIR'
        ELSE 'POOR'
    END AS RESPONSE_RATE_QUALITY,
    RESPONSE_RATE,
    CREATED_AT
from {{ ref('bronze_hosts') }}