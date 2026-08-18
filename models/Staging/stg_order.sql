{{config(materialized='table')}}
select order_id,amount,customer_id from {{ ref('stg_order') }} 

