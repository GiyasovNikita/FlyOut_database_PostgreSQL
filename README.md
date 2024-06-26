# FlyOut_database_PostgreSQL

## Структура базы данных

### ER-Диаграмма 

![ER_Diagram.jpg](documentation/ER_Diagram.JPG)


### Таблицы

1. **airport**
   - `airport_id`: Уникальный идентификатор аэропорта.
   - `airport_code`: IATA-код аэропорта.
   - `airport_name`: Полное название аэропорта.

2. **city**
   - `city_id`: Уникальный идентификатор города.
   - `city_name`: Название города.

3. **airport_city**
   - `airport_city_id`: Уникальный идентификатор аэропорта в городе.
   - `airport_id`: Идентификатор авиакомпании.
   - `city_id`: Идентификатор города.

4. **airline**
   - `airline_id`: Уникальный идентификатор авиакомпании.
   - `airline_code`: IATA-код авиакомпании.
   - `airline_name`: Полное название авиакомпании.

5. **flight**
   - `flight_id`: Уникальный идентификатор рейса.
   - `origin_airport`: IATA-код аэропорта отправления.
   - `destination_airport`: IATA-код аэропорта прибытия.
   - `airline_code`: IATA-код авиакомпании.
   - `flight_number`: Номер рейса.
   - `departure_at`: Время и дата отправления.
   - `return_at`: Время и дата возвращения.
   - `duration`: Продолжительность рейса в минутах.

6. **flight_details**
   - `flight_details_id`: Уникальный идентификатор деталей рейса.
   - `flight_id`: Идентификатор связанного рейса.
   - `price`: Стоимость билета.
   - `currency`: Валюта стоимости билета.
   - `transfers`: Количество пересадок на пути туда.
   - `return_transfers`: Количество пересадок на пути обратно.
   - `duration_to`: Продолжительность полёта до места назначения.
   - `duration_back`: Продолжительность полёта обратно.