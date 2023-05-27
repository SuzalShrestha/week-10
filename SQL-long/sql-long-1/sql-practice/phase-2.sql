-- Your code here
CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    phone NUMERIC(10, 0) UNIQUE,
    email VARCHAR(255) UNIQUE,
    points INTEGER DEFAULT 5,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS coffee_orders(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN DEFAULT 0,
    ordered_at DATETIME DEFAULT CURRENT_TIMESTAMP
);