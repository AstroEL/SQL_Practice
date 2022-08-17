DROP TABLE IF EXISTS customer;

-- create table
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

-- return all data from customer table
SELECT *
FROM customer;

-- return all female customers
SELECT *
FROM customer
WHERE gender = 'Female';

-- return all male customers from New Jersey
SELECT *
FROM customer
WHERE gender = 'Male'
  AND state = 'NJ';

-- return all male customers from New Jersey or Ohio
SELECT *
FROM customer
WHERE gender = 'Male'
  AND state = 'NJ' OR state = 'OH';

-- return all female customers from Maryland who are younger than 30 years old.
select *
from customer
where gender = 'Female'
  AND state = 'MD'
  AND age < 30;