{% macro mkt_segment(column_name) %}
    case when {{column_name}} in ('BUILDING','HOUSEHOLD','FURNITURE') then 'Housing'
    when {{column_name}} in('AUTOMOBILE','MACHINERY') then 'Machine_related'
    end
{% endmacro %}

