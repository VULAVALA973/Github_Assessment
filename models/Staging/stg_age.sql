select 
customer_id, 
customer_name, 
 age ,
 city
from {{ ref('stg_customer') }} 
where age < 30