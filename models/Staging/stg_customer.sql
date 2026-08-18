
{{config(materialized='table')}}

select customer_id , customer_name,city 
from {{source('ASSESSMENT1','stg_customer')}}

