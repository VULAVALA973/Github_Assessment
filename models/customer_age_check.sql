SELECT
    customer_id,
    customer_name,
    age
FROM {{ ref('stg_customers') }}
WHERE age < 0;