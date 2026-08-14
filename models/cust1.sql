{{ config(materialized='view') }}

SELECT
    customer_id,
    customer_name,
    city
FROM {{ ref('stg_customers') }}
