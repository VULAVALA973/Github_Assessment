{{config(materialized='incremental',
        unique_key='customer_id')
}}
 
 
SELECT
    customer_id,
    customer_name,
    age,
    city,
    created_at,
    updated_at
FROM {{ ref('stg_customer') }}
 
{% if is_incremental() %}
    WHERE created_at > (
        SELECT MAX(created_at)
        FROM {{ this }}
    )
{% endif %}
