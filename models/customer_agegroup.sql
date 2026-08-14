{{ config(materialized='table') }}

SELECT
    customer_id,
    customer_name,
    city,
    created_date,
    age,
    age_group
FROM {{ ref('customer_age') }}