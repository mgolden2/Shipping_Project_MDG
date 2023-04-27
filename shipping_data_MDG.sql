USE shipping;

INSERT INTO ports (name, city, country)
VALUES
('Port of Miami', 'Miami', 'USA'),
('Port of Shanghai', 'Shanghai', 'China'),
('Port of Rotterdam', 'Rotterdam', 'Netherlands'),
('Port of Singapore', 'Singapore', 'Singapore'),
('Port of Antwerp', 'Antwerp', 'Belgium')
;

INSERT INTO ships (name, displacement, captain_name, crew_count, home_port, manufacture_year)
VALUES
('Majestic', 20000, 'John Smith', 60, 1, 2012),
('Excelsior', 18000, 'Jane Lee', 55, 2, 2010),
('Titanic', 50000, 'Jack Black', 100, 3, 2008),
('Leviathan', 30000, 'Richard James', 70, 4, 2014),
('Monarch', 22000, 'Maria Garcia', 65, 5, 2016),
('Enterprise', 40000, 'Jack Ryan', 90, 1, 2011),
('Freedom', 35000, 'Alex Rodriguez', 80, 2, 2013),
('Vengeance', 28000, 'Timothy Smith', 70, 3, 2009),
('Endeavor', 28000, 'Stephanie Chen', 60, 4, 2015),
('Voyager', 25000, 'David Lee', 65, 5, 2012)
;

INSERT INTO containers (height, width, length, weight, ship_id)
VALUES
(10, 8, 20, 2000, 1),
(8, 8, 10, 1500, 1),
(12, 8, 10, 2500, 2),
(8, 8, 20, 1800, 2),
(12, 10, 20, 3000, NULL),
(10, 8, 30, 2800, NULL),
(10, 12, 15, 2200, 3),
(8, 10, 30, 2600, 3),
(10, 10, 30, 2700, NULL),
(10, 12, 20, 2400, NULL),
(8, 8, 15, 1200, 4),
(12, 8, 30, 2100, 4),
(10, 6, 15, 1600, NULL),
(6, 6, 10, 800, NULL),
(8, 12, 15, 1900, 5),
(6, 10, 15, 1300, 5),
(6, 6, 20, 1200, NULL),
(8, 12, 30, 2200, NULL),
(8, 12, 25, 1800, 1),
(8, 8, 25, 1400, 2)
;
