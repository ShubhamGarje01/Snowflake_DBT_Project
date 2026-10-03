{% set incremental_flag = 1 %}
{% set incremental_col = 'CREATED_AT' %}

select * from {{ source('staging', 'listings') }}

{% if incremental_flag == 1 %}

WHERE {{ incremental_col }} > (
    SELECT COALESCE(MAX({{ incremental_col }}), '1900-01-02')
    FROM {{ ref('bronze_listings') }})
{% endif %}