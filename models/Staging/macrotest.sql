SELECT
  order_id,
   amount,
    customer_id   
    {{ calculate_tax('amount') }} AS tax
FROM {{ ref('stg_order') }}