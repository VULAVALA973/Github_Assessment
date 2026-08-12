SELECT
    customer_id,
    customer_name,
    city
FROM {{ source('ASSESSMENT', 'CUSTOMERS') }}

