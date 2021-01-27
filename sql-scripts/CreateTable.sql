CREATE TABLE users (
	username varchar(15) NOT NULL PRIMARY KEY,
	password varchar(60) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE sensors (
	isup BOOLEAN,
	sensorname varchar(15) NOT NULL PRIMARY KEY,
	belongsto varchar(15) NOT NULL,
	FOREIGN KEY (belongsto) REFERENCES users(username)
);
CREATE TABLE sensdata (
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	sensorname varchar(15) NOT NULL,
	temp int,
	humidity int,
	pressure int,
	altitude int,
	NO2 FLOAT,
	NH3 FLOAT,
	CO FLOAT,
	CO2 int,
	FOREIGN KEY (sensorname) REFERENCES sensors(sensorname)
);
