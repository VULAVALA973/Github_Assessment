





SELECT
    customer_id,
    customer_name,
    city
FROM {{ source('ASSESSMENT', 'CUSTOMERS') }}


{{config(materialized='view')}}

SELECT
    customer_id,
    customer_name,
    city
from {{ref('stg_customers')}}


