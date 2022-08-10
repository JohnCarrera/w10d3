CREATE TABLE customers (
    id      INTEGER PRIMARY KEY
  , name    VARCHAR(40) NOT NULL
  , phone   NUMERIC (10, 0) UNIQUE
  , email   VARCHAR(255) UNIQUE
  , points  INTEGER NOT NULL DEFAULT 5
  , created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coffee_orders (
  id INTEGER PRIMARY KEY
  , is_redeemed BOOLEAN DEFAULT false
  , ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

UPDATE customers
SET points = (
  SELECT points
  FROM customers AS c
  WHERE c.name = 'Rachel') + 1
WHERE name = 'Rachel';
