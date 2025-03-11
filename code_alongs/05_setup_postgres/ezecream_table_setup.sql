CREATE SCHEMA IF NOT EXISTS ezecream_05;

SET
    search_path TO ezecream_05;

CREATE TABLE IF NOT EXISTS
    Customer (
        customer_id SERIAL PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        address VARCHAR(100),
        email VARCHAR(255) UNIQUE
    );

CREATE TABLE IF NOT EXISTS
    Orders (
        order_id SERIAL PRIMARY KEY,
        customer_id INTEGER,
        FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
        order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS
    Product (
        product_id SERIAL PRIMARY KEY,
        name VARCHAR(50),
        price INTEGER
    );

CREATE TABLE IF NOT EXISTS
    OrderLine (
        orderline_id SERIAL PRIMARY KEY,
        order_id INTEGER,
        product_id INTEGER,
        quantity INTEGER,
        FOREIGN KEY (order_id) REFERENCES Orders (order_id),
        FOREIGN KEY (product_id) REFERENCES Product (product_id)
    );