{% macro room_tags(col) %}
    CASE   
        WHEN {{ col }} < 101 THEN 'LOW'
        WHEN {{ col }} > 100 and {{ col }} < 200 THEN 'MEDIUM'
        ELSE 'HIGH'
    END 
{% endmacro %}

-- The macro categorizes col into LOW (≤100), MEDIUM (101–200), or HIGH (>200). based on price creatingtags for room.
-- if/elif/else evaluates the value and returns the corresponding text.