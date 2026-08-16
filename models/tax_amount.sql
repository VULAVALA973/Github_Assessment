SELECT 

  order_id, 

    customer_id, 

   order_date, 

   amount, 

    {{ calculate_tax('amount') }} AS tax 

FROM {{ ref('orders') }} 