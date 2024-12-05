{% macro median(column_name) %}
    (PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY {{ column_name }})) 
{% endmacro %}