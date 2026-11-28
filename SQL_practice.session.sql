
select * FROM orders
 where order_id not in (select order_id from view_2);

 select * FROM orders
 where total_amount > (SELECT avg(total_amount) FROM orders);

 --Display all orders.
 select * from orders;

 --Find orders with total_amount greater than 1000.
  SELECT * from orders
    where total_amount > 1000;

--Sort orders by newest order_date
  select * from orders
    order by order_date desc;

--Display only order_id, customer_id, and total_amount.
select order_id,
    customer_id,
    total_amount
from orders;

--Find orders that are not yet delivered. Assume the status values are Pending, Delivered, and Cancelled
select * from orders
where status in ('pending', 'cancelled');

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
  AND table_schema NOT IN ('pg_catalog', 'information_schema')
ORDER BY table_schema, table_name;

SELECT table_schema, table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
  AND table_name IN ('class_room', 'course', 'customers', 'orders', 'products')
ORDER BY table_schema, table_name, ordinal_position;

