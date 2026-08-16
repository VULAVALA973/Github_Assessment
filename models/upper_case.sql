SELECT 

    customer_id, 

    {{ to_upper('customer_name') }} AS customer_name 

FROM {{ ref('stg_customers') }} 
