-- Total of sales by coffee type
CREATE VIEW sales_by_coffee AS
SELECT
    coffee_name,
    COUNT(*) AS total_sales,
    SUM(money) AS total_revenue
FROM staging_coffee_sales
GROUP BY coffee_name;

SELECT * FROM sales_by_coffee;
