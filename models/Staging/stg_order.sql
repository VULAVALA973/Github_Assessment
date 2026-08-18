{{config(materialized='table')}}
select order_id,amount,customer_id
from {{source('ASSESSMENT1','STG_ORDER')}}

