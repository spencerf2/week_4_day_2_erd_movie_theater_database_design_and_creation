-- Customer Inserts
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    address,
    billing_info,
	reward_number
) VALUES
(
    1,
    'Terrell',
    'McKinney',
    '123 Street Drive Chicago, IL 90606',
    '4242-4242-4242-4242 623 05/22',
	'123456789012'
), (
	2,
    'Ryan',
    'Rhoades',
    '456 Street Drive Chicago, IL 90606',
    '4242-4242-4242-4242 996 07/22', -- HMM, Terrell and Ryan have the same cc number...fishy!
	'210987654321'
), (
	3,
    'Spencer',
    'Franklin',
    '123 Street Drive Las Vegas, NV 89107',
    '1212-1212-1212-1212 101 05/22',
	'938473628463'
), (
	4,
    'John',
    'McArthur',
    '1134 Turtle Ave Chicago, IL 90606',
    '4747-4747-4747-1474 328 08/22',
	'825593748563'
), (
	5,
    'Tyrone',
    'Johnson',
    '1238 Jackson Street Chicago, IL 90606',
    '3817-4746-2121-3434 283 09/23',
	'284967352738'
);

-- Movie Inserts
INSERT INTO movie
(
    movie_id,
    movie_name
) VALUES(
    1,
    'Gattaca'
), (
	2,
	'The Matrix'
), (
	3,
	'Interstellar'
), (
	4,
	'Seven Samurai'
), (
	5,
	'Terminator 2: Judgment Day'
);

-- Auditorium Inserts
INSERT INTO auditorium(
    auditorium_id,
    seat_count,
    screen_type,
	movie_id
) VALUES(
    1,
    50,
    'IMAX',
	1
), (
	2,
	35,
	'Regular',
	2
), (
	3,
	35,
	'Regular',
	3
), (
	4,
	50,
	'3D',
	4
), (
	5,
	60,
	'IMAX 3D',
	5
);

-- Ticket Inserts
INSERT INTO ticket (
	auditorium_id
) VALUES (1), (2), (3), (4), (5);

INSERT INTO ticket_order (
	sub_total,
	total_cost,
	customer_id,
	ticket_id
) VALUES (
	10.00,
	14.00,
	1,
	1
), (
	5.00,
	8.00,
	2,
	2
), (
	10.00,
	14.00,
	3,
	3
), (
	5.00,
	8.00,
	4,
	4
), (
	5.00,
	8.00,
	5,
	5
);

-- Product Inserts
INSERT INTO product (
	purchase_cost,
	sale_price,
	product_name
) VALUES (
	0.45,
	2.00,
	'Milky Way'
), (
	0.25,
	5.99,
	'Small Popcorn'
), (
	0.35,
	8.99,
	'Medium Popcorn'
), (
	0.38,
	10.99,
	'Large Popcorn'
), (
	0.50,
	3.00,
	'Skittles'
);

-- Concession_inventory Inserts
INSERT INTO concession_inventory (
	upc,
	quantity,
	product_id
) VALUES (
	'373943572842',
	800,
	1
), (
	'748985364786',
	1000,
	2
), (
	'375437856375',
	1500,
	3
), (
	'273849254758',
	3500,
	4
), (
	'283957364846',
	250,
	5
);

-- Concession_order Insert
INSERT INTO concession_order (
	sub_total,
	total_cost,
	customer_id,
	concession_inventory_id
) VALUES (
	4.00,
	5.00,
	1,
	1
), (
	5.99,
	6.50,
	2,
	2
), (
	10.99,
	11.50,
	3,
	3
), (
	8.99,
	9.50,
	4,
	4
), (
	3.00,
	4.00,
	5,
	5
);