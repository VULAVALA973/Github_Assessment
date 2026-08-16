select  

customer_id,  

customer_name,  

 age  

from {{ ref('customers1') }}  

where age < 0 