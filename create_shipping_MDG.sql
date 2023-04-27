DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

use shipping;

CREATE TABLE ports (
    port_id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (port_id)
);

CREATE TABLE ships (
    ship_id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    displacement INT NOT NULL,
    captain_name VARCHAR(50) NOT NULL,
    crew_count INT NOT NULL,
    home_port INT NOT NULL,
    manufacture_year YEAR(4) NOT NULL,
    PRIMARY KEY (ship_id),
    FOREIGN KEY (home_port) REFERENCES ports(port_id)
);

CREATE TABLE containers (
    container_id INT AUTO_INCREMENT,
    height INT NOT NULL,
    width INT NOT NULL,
    length INT NOT NULL,
    weight INT NOT NULL,
    ship_id INT,
    PRIMARY KEY (container_id),
    FOREIGN KEY (ship_id) REFERENCES ships(ship_id)
);


