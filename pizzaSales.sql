show databases;
use new;

Select * from pizza_sales;

-- KPI Queries
select sum(total_price) as total_rev
from pizza_sales;

select sum(total_price) / count(distinct order_id) as order_avg
from pizza_sales;

select sum(quantity) as pizza_sold
from pizza_sales;

select sum(quantity) as pizza_sold
from pizza_sales;

select cast( sum(quantity) / count(distinct order_id) as decimal(10,2) ) as pizzas_perOrder
from pizza_sales;



-- Sales Analysis

select DAYNAME(order_date) as order_day, count(distinct order_id) as orders
from pizza_sales
group by DAYNAME(order_date);

SELECT pizza_category,sum(total_price) as totalPRICE, sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales) as p_perCategory
from pizza_sales
GROUP BY pizza_category;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;
