SELECT
    customer_id,
    customer_name,
    city
FROM {{ source('DBT_ASSESSMENT', 'CUSTOMERS') }}