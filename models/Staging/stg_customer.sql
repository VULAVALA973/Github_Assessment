
/*{{config(materialized='view')}}

select customer_id , customer_name,city 
from {{source('ASSESSMENT1','stg_customer')}}*/

{{config(materialized='view')}}

select * from 
{{ref('stg_customer')}}



