CREATE TABLE users (
	username varchar(15) NOT NULL PRIMARY KEY,
	password varchar(60) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE sensors (
	isup BOOLEAN,
	sensorname varchar(15) NOT NULL PRIMARY KEY,
	belongsto varchar(15) DEFAULT NULL,
	FOREIGN KEY (belongsto) REFERENCES users(username)
);
CREATE TABLE sensdata (
	time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	sensorname varchar(15) NOT NULL,
	temperature FLOAT,
	altitude FLOAT,
	humidity int,
	pressure int,
	no2_conc_ppm FLOAT,
	nh3_conc_ppm FLOAT,
	co_conc_ppm FLOAT,
	co2_conc_ppm FLOAT,
	pm1_0_conc_fact FLOAT,
	pm2_5_conc_fact FLOAT,
	pm10_0_conc_fact FLOAT,
	pm1_0_conc_atm FLOAT,
	pm2_5_conc_atm FLOAT,
	pm10_0_conc_atm FLOAT,
	pcnt_0_3 FLOAT,
	pcnt_0_5 FLOAT,
	pcnt_1_0 FLOAT,
	pcnt_2_5 FLOAT,
	pcnt_5_0 FLOAT,
	pcnt_10_0 FLOAT,
	FOREIGN KEY (sensorname) REFERENCES sensors(sensorname)
);
