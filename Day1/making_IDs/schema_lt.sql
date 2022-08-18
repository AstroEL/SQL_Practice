-- Drop table "banks" if exists
DROP TABLE IF EXISTS banks;

-- Create new table
CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

-- Insert data
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