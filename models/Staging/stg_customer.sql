
{{config(materialized='view')}}

select customer_id , customer_name,age,city, created_at,updated_at
from {{source('ASSESSMENT1','stg_customer')}}





