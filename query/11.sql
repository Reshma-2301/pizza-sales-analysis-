-- total revenue generated by each pizza type 
SELECT 
    pt.category, SUM(p.price * od.quantity) AS total_revenue
FROM
    pizzas p
        INNER JOIN
    order_details od ON od.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types pt ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.category;
