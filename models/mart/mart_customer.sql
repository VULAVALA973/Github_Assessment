{{config(materialized='view'}}

select 


SELECT
    customer_id,
    customer_name,
    city
    from {{ref('stg_customers')}}
