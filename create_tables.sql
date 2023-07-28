create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(40),
	last_name VARCHAR(40)
);

create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(40),
	last_name VARCHAR(40)
);

create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(40),
	last_name VARCHAR(40)
);

create table parts (
	part_id SERIAL primary key,
	part_name VARCHAR(50),
	amount INTEGER
);

create table service (
	service_id SERIAL primary key,
	service_name VARCHAR(100),
	part_id INTEGER not null,
	foreign key(part_id) references parts(part_id)
);

alter table service 
alter column part_id
drop not null;

create table car (
	car_serial SERIAL primary key,
	customer_id INTEGER not null,
	_year INTEGER,
	make VARCHAR(50),
	model VARCHAR(50),
	service_sold VARCHAR(15),
	foreign key(customer_id) references customer(customer_id)
);

create table invoice (
	invoice_id SERIAL,
	salesperson_id INTEGER not null,
	customer_id INTEGER not null,
	car_serial INTEGER not null,
	amount NUMERIC(6,2),
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_serial) references car(car_serial)
);

create table service_ticket (
	ticket_number SERIAL,
	car_serial INTEGER not null,
	mechanic_id INTEGER not null,
	service_ID INTEGER not null,
	amount NUMERIC(5,2),
	service_date DATE default (current_date) primary key,
	foreign key(car_serial) references car(car_serial),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(service_id) references service(service_id)
);

drop table service_ticket cascade;
drop table service_history cascade; 

create table service_ticket (
	ticket_number SERIAL,
	car_serial INTEGER not null,
	mechanic_id INTEGER not null,
	service_ID INTEGER not null,
	amount NUMERIC(8,2),
	service_date DATE default (current_date),
	foreign key(car_serial) references car(car_serial),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(service_id) references service(service_id)
);

create table service_history (
	car_serial INTEGER not null,
	customer_since INTEGER,
	foreign key(car_serial) references car(car_serial)
);