{% macro calculate_tax(amount) %}
    {{ amount }} * 0.18
{% endmacro %}

SELECT
    amount,
    {{ calculate_tax('order_amount') }} AS tax
FROM {{ ref('stg_orders') }}