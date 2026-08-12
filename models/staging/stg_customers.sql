





SELECT
    customer_id,
    customer_name,
    city,
     created_date,
    updated_at,
    age
FROM {{ source('ASSESSMENT', 'CUSTOMERS') }}




