
{{config(materialized='table')}}

select customer_id , customer_name,city 
from {{source('ASSESSMENT1_DBT','stg_customer')}}
