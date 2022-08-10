-- Your code here

-- event 1
INSERT INTO customers (name, phone) VALUES ('Rachel', 1111111111);

-- event 2
UPDATE customers
SET points = (
  SELECT points
  FROM customers AS c
  WHERE c.name = 'Rachel') + 1
WHERE name = 'Rachel';

INSERT INTO coffee_orders (customer_id) VALUES (1);



SELECT name, points,
    CASE WHEN points > 5 THEN 'true'
    ELSE 'false'
    END AS has_enough_points
FROM customers WHERE name='Rachel';