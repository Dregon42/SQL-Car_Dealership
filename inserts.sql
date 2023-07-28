-- Customers
insert into customer(customer_id,first_name,last_name)
values(1,'Max','Keebler');

insert into customer(customer_id,first_name,last_name)
values(2,'Goob','Gooberson');

insert into customer(customer_id,first_name,last_name)
values(3,'Flex','Washington');

-- Salespersons
insert into salesperson (salesperson_id,first_name,last_name)
values(12,'Taco','Tuesday');

insert into salesperson (salesperson_id,first_name,last_name)
values(31,'Chance','Williams');

-- Mechanics
insert into mechanic (mechanic_id,first_name,last_name)
values (42,'Charlie','Wilson');

insert into mechanic (mechanic_id,first_name,last_name)
values (34,'Shaq','Bronson');

--Parts
insert into parts (part_id,part_name,amount)
values (321,'catalytic converter',10);

insert into parts (part_id,part_name,amount)
values (45,'brake-set',30);

-- Service
insert into service (service_id,service_name,part_id)
values (465,'brakes',45);

insert into service (service_id,service_name)
values (798,'tire rotation');

-- Car
insert into car (car_serial,customer_id,_year,make,model,service_sold)
values (4242,2,2020,'Kia','Ev6','sold');

insert into car (car_serial,customer_id,_year,make,model,service_sold)
values (5421,1,2017,'Kia','Forte','service');

insert into car (car_serial,customer_id,_year,make,model,service_sold)
values (9678,3,2020,'Kia','Sportage','service/sold');

-- Invoice
insert into invoice (invoice_id,salesperson_id,customer_id,car_serial,amount)
values (60,12,2,4242,5423.40);
insert into invoice (invoice_id,salesperson_id,customer_id,car_serial,amount)
values (61,31,3,9678,3400.00);

-- Service Ticket
insert into service_ticket (ticket_number,car_serial,mechanic_id,service_id,amount)
values (78,5421,42,465,180.00);

insert into service_ticket (ticket_number,car_serial,mechanic_id,service_id,amount)
values (87,9678,34,798,70.00);

-- Service History
insert into service_history (car_serial,customer_since)
values (5421,2023);

insert into service_history (car_serial,customer_since)
values (9678,2023);