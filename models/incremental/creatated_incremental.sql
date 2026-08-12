{{config(materialized='incremental',
        unique_key='customer_id')
}}



SELECT
    customer_id,
    customer_name,
    city,
    created_date,
    updated_at
FROM {{ ref('stg_customers') }}

{% if is_incremental() %}
WHERE created_date >= (
    SELECT MAX(created_date)
    FROM {{ this }}
)
{% endif %}


