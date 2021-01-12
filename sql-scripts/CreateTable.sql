CREATE TABLE sensdata (
	time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	id int,
	name varchar(15),
	temp int,
	humidity int,
	pressure int,
	altitude int
);
