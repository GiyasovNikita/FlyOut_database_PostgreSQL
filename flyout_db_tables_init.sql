/*Создание таблицы Airports*/
CREATE TABLE Airports (
    airport_code CHAR(3) PRIMARY KEY,
    airport_name VARCHAR(255) NOT NULL
);


/*Создание таблицы Airlines*/
CREATE TABLE Airlines (
    airline_code CHAR(2) PRIMARY KEY,
    airline_name VARCHAR(255) NOT NULL
);

/*Создание таблицы Flights*/
CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    origin_airport CHAR(3) REFERENCES Airports(airport_code),
    destination_airport CHAR(3) REFERENCES Airports(airport_code),
    airline_code CHAR(2) REFERENCES Airlines(airline_code),
    flight_number VARCHAR(10),
    departure_at TIMESTAMP,
    return_at TIMESTAMP,
    duration INT
);

/*Создание таблицы FlightDetails*/
CREATE TABLE FlightDetails (
    flight_detail_id SERIAL PRIMARY KEY,
    flight_id INT REFERENCES Flights(flight_id),
    price NUMERIC(10, 2),
    currency CHAR(3),
    transfers INT,
    return_transfers INT,
    duration_to INT,
    duration_back INT
);