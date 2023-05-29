CREATE table region 
(
	identifier int primary key, 
	description varchar(50)
);

CREATE table country 
(
	identifier int primary key,
	region int,
	description varchar(50)
);

CREATE table city 
(
	identifier int primary key,
	country int, 
	description varchar(50),
	latitude double precision, 
	longitude double precision,
	dataset varchar(50)
);

CREATE table measurement 
(
	city int,
	mark timestamp,
	temperature float 
);

CREATE table coastline 
(
	shape double precision,
	segment double precision,
	latitube double precision,
	longitube double precision
	
);

ALTER TABLE country ADD FOREIGN KEY (region) REFERENCES region(identifier);
ALTER TABLE city ADD FOREIGN KEY (country) REFERENCES country(identifier);
ALTER TABLE measurement ADD FOREIGN KEY (city) REFERENCES city(identifier);
