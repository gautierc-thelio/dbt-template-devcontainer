SELECT
    item_id,
    order_id,
    product_id,
    quantity,
    unit_price,
    meta_ingestion_date
FROM {{ source('seed_sources', 'sales_items') }}
