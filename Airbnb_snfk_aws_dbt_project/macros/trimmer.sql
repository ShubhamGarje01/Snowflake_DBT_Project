-- Transformation - 02
-- property_type from initcap to all caps (upper case)  -- its inbuild - trim filter function for dbt jinja -- google 

{% macro trimmer(col_name, node) %}
    {{ col_name | trim | upper}} 
{% endmacro %}

-- The macro accepts col_name and node, then trims spaces and converts the column value to uppercase using Jinja filters.