{{config(materialized='table')}}

select 
age_group,
count(*) as emp 
from {{ ref('customer_age_group')}}
