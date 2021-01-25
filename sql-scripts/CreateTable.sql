CREATE TABLE sensdata (
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	id int,
	name varchar(15),
	temp int,
	humidity int,
	pressure int,
	altitude int,
	NO2 FLOAT,
	NH3 FLOAT,
	CO FLOAT,
	CO2 int
);
