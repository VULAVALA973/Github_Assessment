{{config(materialized='table')}}

select 
   customer_id,
    customer_name,
    age,
age_group,
count(*) as emp 
from {{ ref('customer_age_group')}} group by customer_id,
    customer_name,
    age,age_group
