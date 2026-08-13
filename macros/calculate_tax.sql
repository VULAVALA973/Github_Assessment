{% macro calculate_tax(amount) %}
    {{ amount }} * 0.18
{% endmacro %}

SELECT
    amount,
    {{ calculate_tax('amount') }} AS tax
FROM {{ ref('stg_orders') }}