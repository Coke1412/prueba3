CREATE DATABASE prueba;

CREATE TABLE Client(
	id SERIAL,
	name VARCHAR (20),
	RUT VARCHAR (12),
	address VARCHAR (40),
	PRIMARY KEY (id) 
);

CREATE TABLE bill(
	id SERIAL,
	date DATE,
	client_id SERIAL,
	product_list_id SERIAL ,
	subtotal INT,
	total_price INT,
	PRIMARY KEY (id)
);

CREATE TABLE purchase(
	bill_id SERIAL,
	product_list_id SERIAL,
	quantity INT
);

CREATE TABLE product_list(
	id SERIAL,
	name VARCHAR (20),
	description VARCHAR (50),
	price_by_unit INT,
	PRIMARY KEY (id)
);

CREATE TABLE category(
	id SERIAL,
	name VARCHAR(20),
	description VARCHAR(100),
	product_list_id SERIAL,
	PRIMARY KEY (id)
);


ALTER TABLE bill ADD FOREIGN KEY (client_id) REFERENCES client (id);

ALTER TABLE bill ADD FOREIGN KEY (product_list_id) REFERENCES product_list (id);

ALTER TABLE purchase ADD FOREIGN KEY (bill_id) REFERENCES bill (id);

ALTER TABLE purchase ADD FOREIGN KEY (product_list_id) REFERENCES product_list (id);

ALTER TABLE category ADD FOREIGN KEY (product_list_id) REFERENCES product_list (id);


INSERT INTO client (id, name, rut, address) VALUES (1,'Jorge', '16936857-0', 'Alcalde jorge monckeberg 35');

INSERT INTO client (id, name, rut, address) VALUES (2,'Pablo', '14165817-4', 'Alcalde jorge monckeberg 35');

INSERT INTO client (id, name, rut, address) VALUES (3,'Claudia', '14154823-4', 'El convento 791'); 

INSERT INTO client (id, name, rut, address) VALUES (4,'Raúl', '6382694-4', 'El convento 791'); 

INSERT INTO client (id, name, rut, address) VALUES (5,'Pepa', '6580507-3', 'Fake street 123');


INSERT INTO product_list (id, name, description, price_by_unit) VALUES (1, 'lechuga', 'verde', 10);

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (2, 'tomate', 'rojo', 5);

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (3, 'repollo', 'verde', '10');

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (4, 'leche', 'liquida', '20');

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (5, 'queso', 'amarillo', '10');

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (6, 'manzana', 'verde', '5');

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (7, 'banana', 'amarilla', '10');

INSERT INTO product_list (id, name, description, price_by_unit) VALUES (8, 'frutilla', 'roja', '10');


INSERT INTO category (id, name, description) VALUES (1, 'verduras', 'hortalizas cuyo color principal es el verde');

INSERT INTO category (id, name, description) VALUES (2, 'lacteos', 'leche y sus derivados');

INSERT INTO category (id, name, description) VALUES (3, 'frutas', 'fruto comestible de ciertas plantas cultivadas');

INSERT INTO bill (id, date, client_id) VALUES (1, current_date, 1);

INSERT INTO bill (id, date, client_id) VALUES (2, current_date, 1);

INSERT INTO bill (id, date, client_id) VALUES (3, current_date, 2);

INSERT INTO bill (id, date, client_id) VALUES (4, current_date, 2);

INSERT INTO bill (id, date, client_id) VALUES (5, current_date, 2);

INSERT INTO bill (id, date, client_id) VALUES (6, current_date, 3);

INSERT INTO bill (id, date, client_id) VALUES (7, current_date, 4);

INSERT INTO bill (id, date, client_id) VALUES (8, current_date, 4);

INSERT INTO bill (id, date, client_id) VALUES (9, current_date, 4);

INSERT INTO bill (id, date, client_id) VALUES (10, current_date, 4);











