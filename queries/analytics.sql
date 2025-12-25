-- Total sales by coffee type.
WITH sales_by_coffee AS (
    SELECT
        coffee_name,
        COUNT(*) AS total_sales,
        SUM(money) AS total_revenue
    FROM staging_coffee_sales
    GROUP BY coffee_name
)

SELECT
    coffee_name,
    total_sales,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM sales_by_coffee
ORDER BY total_revenue DESC;
