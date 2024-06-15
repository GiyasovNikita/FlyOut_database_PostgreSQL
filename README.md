# FlyOut_database_PostgreSQL

## Структура базы данных

### ER-Диаграмма 

![ER_Diagram.jpg](https://github.com/GiyasovNikita/FlyOut_database_PostgreSQL/blob/main/documentation/ER_Diagram.jpg)


### Таблицы

1. **Airports**
   - `airport_code`: Уникальный IATA-код аэропорта.
   - `airport_name`: Полное название аэропорта.

2. **Airlines**
   - `airline_code`: Уникальный IATA-код авиакомпании.
   - `airline_name`: Полное название авиакомпании.

3. **Flights**
   - `flight_id`: Уникальный идентификатор рейса.
   - `origin_airport`: IATA-код аэропорта отправления.
   - `destination_airport`: IATA-код аэропорта прибытия.
   - `airline_code`: IATA-код авиакомпании.
   - `flight_number`: Номер рейса.
   - `departure_at`: Время и дата отправления.
   - `return_at`: Время и дата возвращения.
   - `duration`: Продолжительность рейса в минутах.

4. **FlightDetails**
   - `flight_detail_id`: Уникальный идентификатор детали рейса.
   - `flight_id`: Идентификатор связанного рейса.
   - `price`: Стоимость билета.
   - `currency`: Валюта стоимости билета.
   - `transfers`: Количество пересадок на пути туда.
   - `return_transfers`: Количество пересадок на пути обратно.
   - `duration_to`: Продолжительность полёта до места назначения.
   - `duration_back`: Продолжительность полёта обратно.