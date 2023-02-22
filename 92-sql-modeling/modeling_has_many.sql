create table tours (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

create table cities (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

create table categories (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT
);

create table tour_stops (
id INTEGER PRIMARY KEY AUTOINCREMENT,
tour_id INTEGER,
city_id INTEGER,
stop_number INTEGER
);

INSERT INTO tour_stops (tour_id, city_id, stop_number) VALUES
(1, 1, 1),
(1, 2, 3),
(1, 3, 2),
(2, 1, 1),
(2, 2, 2);

create table tour_categories (
id INTEGER PRIMARY KEY AUTOINCREMENT,
tour_id INTEGER,
category_id INTEGER
);

INSERT INTO tour_categories (tour_id, category_id) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 4),
(2, 4),
(1, 2);

INSERT INTO tours (name) VALUES
('Food Tour of Mexico'),
('History of Mexico'),
('Beaches of Mexico');

INSERT INTO cities (name) VALUES
('Mexico City'),
('Cancun'),
('Oaxaca'),
('Toluca'),
('Acapulco');

INSERT INTO categories (name) VALUES 
('historical'),
('urban'),
('nature'),
('relaxing'),
('educational'),
('luxury'),
('roughin it');

select tours.name from tour_categories join categories on categories.id = tour_categories.id join tours on tours.id = tour_categories.tour_id where categories.name = 'relaxing';

select cities.name from tour_stops join cities on cities.id = tour_stops.city_id join tours on tours.id = tour_stops.tour_id where tours.name = 'Food Tour of Mexico' order by stop_number;

select categories.name from tour_categories join tours on tours.id = tour_categories.tour_id join categories on tour_categories.category_id = categories.id where tours.name = 'History of Mexico';

select cities.name from tour_categories join tours on tours.id = tour_categories.tour_id join categories on tour_categories.category_id = categories.id join tour_stops on tours.id = tour_stops.tour_id
join cities on cities.id = tour_stops.city_id where categories.name = 'relaxing';