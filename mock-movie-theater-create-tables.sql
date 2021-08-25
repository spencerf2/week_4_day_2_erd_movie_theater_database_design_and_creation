-- CUSTOMER TABLE CREATION
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(150),
    billing_info VARCHAR(150),
	reward_number NUMERIC(12,0)
);

-- MOVIE TABLE CREATION
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	show_time DATE
);

-- AUDITORIUM TABLE CREATION
CREATE TABLE auditorium(
	auditorium_id SERIAL PRIMARY KEY,
	seat_count INTEGER,
	screen_type VARCHAR(10),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

-- TICKET TABLE CREATION
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	auditorium_ID INTEGER NOT NULL,
	FOREIGN KEY(auditorium_id) REFERENCES auditorium(auditorium_id)
);

-- TICKET ORDER TABLE CREATION
CREATE TABLE ticket_order(
    order_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    sub_total NUMERIC(8, 2),
	total_cost NUMERIC(10, 2),
	customer_id INTEGER NOT NULL,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

-- PRODUCT TABLE CREATION
CREATE TABLE product (
	product_id SERIAL PRIMARY KEY,
	purchase_cost NUMERIC(5, 2),
	sale_price NUMERIC(5, 2),
	product_name VARCHAR(100)
);

-- CONCESSION_INVENTORY TABLE CREATION
CREATE TABLE concession_inventory (
	concession_inventory_id SERIAL PRIMARY KEY,
	upc NUMERIC(12, 0),
	quantity INTEGER,
	product_id INTEGER NOT NULL,
	FOREIGN KEY(product_id) REFERENCES product(product_id)
);

-- CONCESSION_ORDER TABLE CREATION
CREATE TABLE concession_order(
	concession_order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8, 2),
	total_cost NUMERIC(10, 2),
	customer_id INTEGER NOT NULL,
	concession_inventory_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (concession_inventory_id) REFERENCES concession_inventory(concession_inventory_id)
);