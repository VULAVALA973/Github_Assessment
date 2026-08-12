{{ config(materialized='ephemeral') }} 

SELECT
    customer_id,
    customer_name,
    age,
     case 
     when age <18 then 'below 18'
     when age between 18 and 30 then '18-30'
     when age between 30 and 40 then '30-40'
     when age between 40 and 50 then '40-50'
     else '++50' 
     end as age_group
FROM {{ ref('stg_customers') }}


