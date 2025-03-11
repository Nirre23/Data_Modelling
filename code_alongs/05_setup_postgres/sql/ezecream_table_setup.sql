CREATE SCHEMA IF NOT EXISTS ezecream_05;

SET search_path TO ezecream_05;

-- Customer Table
CREATE TABLE IF NOT EXISTS Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

-- OrderLine Table
CREATE TABLE IF NOT EXISTS OrderLine (
    orderline_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

-- Product Table
CREATE TABLE IF NOT EXISTS Product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DOUBLE NOT NULL
);
-- TODO for reader: implement the rest of the physical logical diagram