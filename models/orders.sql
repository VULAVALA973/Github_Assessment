{{ config(materialized='table') }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ source('ASSESSMENT_DBT', 'ORDERS1') }}