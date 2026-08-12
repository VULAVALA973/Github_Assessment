


{{config(materialized='Table')}}


SELECT
    customer_id,
    customer_name,
    city,
     created_date,
    updated_at
FROM {{ source('ASSESSMENT', 'CUSTOMERS') }}




