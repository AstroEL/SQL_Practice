-- Create table
CREATE TABLE payment (
	payment_id integer NOT NULL,
 	customer_id smallint NOT NULL,
	staff_id smallint NOT NULL,
	rental_id integer NOT NULL,
	amount numeric(5,2) NOT NULL,
	payment_date timestamp without time zone NOT NULL	
);

-- import data from csv file - DAY 2 'payments.csv'

SELECT * FROM payment;