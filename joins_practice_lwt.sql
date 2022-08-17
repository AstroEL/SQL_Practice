-- create tables
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS banks;
DROP TABLE IF EXISTS customer;

CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  bank_number BIGINT,
  bank_routing_number BIGINT,
  customer_id INT
);
CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30),
  gender VARCHAR(30),
  age INT,
  address VARCHAR(50),
  city VARCHAR(50),
  state CHAR(2),
  zip_code CHAR(5)
);

-- import csv files to tables

-- INNER JOIN
SELECT *
FROM payments as a
INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

-- LEFT JOIN
SELECT *
FROM payments as a
LEFT JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

-- RIGHT JOIN
SELECT *
FROM payments as a
RIGHT JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

-- FULL OUTER JOIN
SELECT *
FROM payments as a FULL
OUTER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

-- CROSS JOIN
SELECT *
FROM payments
CROSS JOIN banks;

-- BONUS
SELECT
  a.payment_id,
  a.bank_number,
  a.bank_routing_number,
  b.bank_name,
  c.first_name,
  c.last_name
FROM payments as a
INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number
INNER JOIN customer as c ON a.customer_id = c.customer_id;