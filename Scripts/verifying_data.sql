USE amazon_data_analytics;
GO

SELECT
    COUNT_BIG(*) AS total_rows,
    COUNT(DISTINCT order_id) AS distinct_order_ids,
    COUNT(DISTINCT product_id) AS distinct_products,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    SUM(CAST(quantity_sold AS BIGINT)) AS total_units_sold,
    SUM(total_revenue) AS total_revenue
FROM dbo.amazon_sales_raw;
GO