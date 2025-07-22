SELECT *
FROM {{ ref('sales__transform__sales_orders_enriched') }}