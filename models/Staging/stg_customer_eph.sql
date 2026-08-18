{{config(materialized='table')}}
 
select 
   customer_id,
    customer_name,
    age,
age_group,
count(*) as emp 
from {{ ref('stg_customer')}} group by customer_id,
    customer_name,
    age,age_group