SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    o.order_status,
    SUM(i.quantity * i.unit_price) AS total_amount,
    o.meta_ingestion_date
FROM {{ ref('input__sales_orders_aerobase') }} o
LEFT JOIN {{ ref('input__sales_items_aerobase') }} i
    ON o.order_id = i.order_id
GROUP BY o.order_id, o.customer_id, o.order_date, o.order_status, o.meta_ingestion_date
