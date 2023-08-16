-- Service Ticket
create or replace function add_ticket(_ticket_number INTEGER, _car_serial INTEGER, _mechanic_id INTEGER,
_service_id INTEGER, _amount NUMERIC)
returns void
as $MAIN$
begin
	insert into service_ticket (ticket_number,car_serial,mechanic_id,service_id,amount)
	values (_ticket_number,_car_serial,_mechanic_id,_service_id,_amount);
end;
$MAIN$
language plpgsql;

select add_ticket(78,5421,42,465,180.00);

select add_ticket(87,9678,34,798,70.00);

select * from service_ticket 

-- Service History
create or replace function add_history (_car_serial INTEGER, _customer_since INTEGER)
returns void
as $MAIN$
begin 
	insert into service_history (car_serial, customer_since)
	values (_car_serial, _customer_since);
end;
$MAIN$
language plpgsql;

select add_history (5421,2023);

select add_history(9678,2023);

select * from service_history 
