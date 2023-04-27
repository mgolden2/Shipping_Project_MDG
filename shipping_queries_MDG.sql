USE shipping;

SELECT name, displacement
FROM ships
WHERE manufacture_year > 2010;

SELECT SUM(weight)
FROM containers
WHERE ship_id IS NULL;

SELECT container_ID, height * width * length as volume
FROM containers
WHERE container_ID = '3';

SELECT height*width*length as 'Volume of container'
FROM containers
WHERE ship_id IS NOT NULL;

SELECT name, displacement
FROM ships
WHERE home_port IN (SELECT port_id FROM ports WHERE port_id = 1);

SELECT ships.name, ports.city 
FROM ships
INNER JOIN ports ON ships.home_port = ports.port_id;

SELECT containers.container_id, ships.name 
FROM containers 
INNER JOIN ships ON containers.ship_id = ships.ship_id;

SELECT ships.name, COUNT(*) as num_containers 
FROM containers 
INNER JOIN ships ON containers.ship_id = ships.ship_id 
GROUP BY ships.ship_id;

SELECT SUM(containers.weight) as total_weight, ships.name 
FROM containers 
INNER JOIN ships ON containers.ship_id = ships.ship_id 
GROUP BY ships.ship_id;

SELECT ships.name, ports.city, COUNT(*) as num_containers 
FROM containers 
INNER JOIN ships ON containers.ship_id = ships.ship_id 
INNER JOIN ports ON ships.home_port = ports.port_id 
GROUP BY ships.ship_id, ports.port_id;


SELECT containers.container_id, containers.weight, ships.name, ports.city 
FROM containers 
INNER JOIN ships ON containers.ship_id = ships.ship_id 
INNER JOIN ports ON ships.home_port = ports.port_id 
WHERE containers.weight > (SELECT AVG(weight) FROM containers);

SELECT ships.name, ports.city, ports.country
FROM ships
JOIN ports ON ships.home_port = ports.port_id
JOIN containers ON ships.ship_id = containers.ship_id
WHERE containers.container_id = 1;

SELECT containers.container_id, containers.height, containers.width, containers.length, containers.weight, ships.name
FROM containers
JOIN ships ON containers.ship_id = ships.ship_id
JOIN ports ON ships.home_port = ports.port_id
WHERE ports.city = 'Rotterdam';

SELECT DISTINCT ships.name
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id
JOIN ports ON ports.port_id = ships.home_port
WHERE ports.city = 'Shanghai';
