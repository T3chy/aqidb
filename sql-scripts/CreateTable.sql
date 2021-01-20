CREATE TABLE sensdata (
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	id int,
	name varchar(15),
	temp int,
	humidity int,
	pressure int,
	altitude int,
	NO2 int,
	NH3 int,
	CO int,
	CO2 int
);
