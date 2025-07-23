SELECT
    order_id,
    customer_id,
    order_date,
    order_status,
    meta_ingestion_date
FROM {{ source('seed_sources', 'sales_orders') }}
