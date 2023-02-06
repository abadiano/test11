-- header file to create tables and views
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  product VARCHAR(50) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE VIEW customer_orders AS
  SELECT customers.name, orders.product
  FROM customers
  INNER JOIN orders
  ON customers.customer_id = orders.customer_id;