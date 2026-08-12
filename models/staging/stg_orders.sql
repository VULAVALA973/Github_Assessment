
{{config(materialized='table')}}


SELECT
    order_id,
    customer_id,
   order_date
FROM {{ source('ASSESSMENT', 'ORDERS') }}
