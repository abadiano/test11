-- data modification language file to populate data
-- insert sample data into customers and orders tables
INSERT INTO customers (customer_id, name, address)
VALUES (1, 'John Doe', '123 Main St'),
       (2, 'Jane Doe', '456 Elm St');

INSERT INTO orders (order_id, customer_id, product)
VALUES (1, 1, 'iPhone'),
       (2, 1, 'MacBook'),
       (3, 2, 'iPad'),
       (7, 9, 'iMan');