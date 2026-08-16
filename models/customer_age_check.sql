SELECT
    customer_id,
    customer_name,
    age
FROM {{ ref('customers1') }}
WHERE age < 0;