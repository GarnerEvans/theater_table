create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(150),
	billing_address VARCHAR(150),
	card_info VARCHAR(100)
);

create table tickets(
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(5,2),
	ticket_date DATE default current_date,
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

create table movies(
	film_id SERIAL primary key,
	film_minutes NUMERIC(5),
	film_auditorium SERIAL,
	ticket_id Integer,
	foreign key(ticket_id) references tickets(ticket_id)
);

create table concessions(
	food_id SERIAL primary key,
	food_price numeric(5, 2),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	billing_address,
	card_info
)values(
	'1',
	'Garner',
	'Evans',
	'1355 SW Western, Corvallis, Oregon',
	'1234-4567-7891-0000'
)

insert into tickets (
	ticket_id,
	ticket_price,
	customer_id
)
values(
	'1',
	'11.50',
	'1'
)

insert into movies (
	film_id,
	film_minutes,
	film_auditorium,
	ticket_id
)values(
	'1',
	'120',
	'7',
	'1'
	
)

insert into concessions(
	food_id,
	food_price,
	customer_id
)values(
	'2',
	'9.50',
	'1'
)

select * from customer c 















