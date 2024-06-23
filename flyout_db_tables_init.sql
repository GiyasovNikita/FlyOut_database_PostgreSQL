/*Создание таблицы airport*/
CREATE TABLE airport (
	airport_id SERIAL PRIMARY KEY,
    airport_code CHAR(3),
    airport_name VARCHAR(255) NOT NULL
);

/*Создание таблицы city*/
create table city (
	city_id SERIAL PRIMARY KEY,
	city_name varchar(15)
);

/*Создание таблицы airport_city*/
CREATE TABLE airport_city (
	airport_city_id SERIAL PRIMARY KEY,
    airport_id INT,
    city_id INT,
    FOREIGN KEY (airport_id) REFERENCES airport(airport_id),
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

/*Создание таблицы airline*/
CREATE TABLE airline (
	airline_id SERIAL PRIMARY KEY,
    airline_code CHAR(2),
    airline_name VARCHAR(255) NOT NULL
);

/*Создание таблицы flight*/
CREATE TABLE flight (
    flight_id SERIAL PRIMARY KEY,
    origin_airport INT REFERENCES airport_city(airport_city_id),
    destination_airport INT REFERENCES airport_city(airport_city_id),
    airline_id INT REFERENCES airline(airline_id),
    flight_number VARCHAR(10),
    departure_at TIMESTAMP,
    return_at TIMESTAMP,
    duration INT
);

/*Создание таблицы flight_details*/
CREATE TABLE flight_details (
    flight_details_id SERIAL PRIMARY KEY,
    flight_id INT REFERENCES flight(flight_id),
    price NUMERIC(10, 2),
    currency CHAR(3),
    transfers INT,
    return_transfers INT,
    duration_to INT,
    duration_back INT
);