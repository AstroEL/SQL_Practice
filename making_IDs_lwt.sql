DROP TABLE IF EXISTS banks;

CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

INSERT INTO banks 
(bank_name, bank_routing_number)
VALUES
('Bank of America', 198491827),
('Wells Fargo', 629873495),
('JPMorgan Chase', 2340903984),
('Citigroup', 890123900),
('TD Bank', 905192010),
('Capital One', 184619239),
('Capital One', 184619239);

SELECT *
FROM banks
WHERE bank_name = 'Capital One'

DELETE FROM banks
WHERE bank_id = 7;

SELECT *
FROM banks;

INSERT INTO banks
(bank_name, bank_routing_number)
VALUES
('Ally Bank', 316289502),
('Discover Bank', 639893944),
('Bank of New York Mellon', 8734569384);

SELECT *
FROM banks;

UPDATE banks
SET bank_name = 'PNC Bank'
WHERE bank_id = 4;

SELECT *
FROM banks;

UPDATE banks
SET bank_routing_number = 1995826182
WHERE bank_id = 2;

SELECT *
FROM banks;

ALTER TABLE banks
ADD COLUMN mortgage_lender BOOLEAN default true;

SELECT *
FROM banks;
