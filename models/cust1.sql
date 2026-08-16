{{ config(materialized='table') }}

SELECT
    customer_id,
    customer_name,
    city,
    age
FROM {{ ref('stg_customers1') }}



