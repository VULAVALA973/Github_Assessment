SELECT
  order_id,
    customer_id,
   order_date,
    order_amount,
    {{ calculate_tax('order_amount') }} AS tax
FROM {{ ref('stg_orders') }}