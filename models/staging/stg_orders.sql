
{{config(materialized='table')}}


SELECT
   * 
FROM {{ source('ASSESSMENT', 'ORDERS') }}
