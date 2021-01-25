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
CREATE TABLE sensors (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	BOOLEAN isup DEFAULT false,
	sensorname varchar(15) NOT NULL UNIQUE,
	belongsto varchar(15) NOT NULL,
	FOREIGN KEY (belongsto) REFERENCES users(username)
);
CREATE TABLE users (
	username varchar(15) NOT NULL UNIQUE PRIMARY KEY,
	password varchar(20) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
);
